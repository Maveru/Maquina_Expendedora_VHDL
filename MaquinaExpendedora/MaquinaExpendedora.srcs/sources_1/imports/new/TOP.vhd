-- Se recomienda ver los ficheros de cada componente para una mejor comprension del proyecto

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY top IS
  generic(
    CLK_frec_in : positive := 100e6;    -- Frecuencia de reloj de la placa (100MHz)
    CLK_frec_out: positive := 1000;     -- Frecuencia que queremos a salida de prescaler 
    DELAY       : integer  := 5         -- Los temporizadores contaran 5 segundos
  );
  PORT (
    RESET               : in  std_logic;                                -- Boton de reset de la placa
    CLK                 : in  std_logic;                                -- reloj de la placa (100MHz)
    Boton               : in  std_logic_vector(4 downto 0);             -- Botones que se usar�n para seleccionar bebida e introducir monedas
    LIGHT               : out std_logic_vector(0 TO 15);                -- Leds para saber en que estado esta la fsm, bebida elegida, error, o bebida saliente
    display_number      : out std_logic_vector(7 downto 0);             -- Dato que va a cada Display por cada ciclo de reloj
    display_select      : out std_logic_vector(7 downto 0);             -- Display por el que sale el dato
    delivering          : out std_logic;                                -- LED GREEN para indicar que se esta entregando bebida
    error               : out std_logic                                 -- LED RED para indicar que se ha excedido el importe del producto
  );
END top;
    
architecture Behavioral of top is
  signal clk_out_p                      : std_logic;                        -- se�al de reloj a la salida del prescaler 
  signal boton_edge                     : std_logic_vector (Boton'range);   -- se usara para la salida del detector de flanco 
  signal boton_sinc                     : std_logic_vector (Boton'range);   -- se usara para la salida del sincronizador
  signal S0, S1, S2, S3, S4, S5, S6, S7 :  std_logic_vector(7 downto 0);    -- codigo en BCD para cada digito del display
  signal coste                          : std_logic_vector(7 downto 0);     -- salida de la fsm que ira a los displays
  signal start_timer                    : std_logic;                        -- se�al para activar temporizador 
  signal end_timer                      : std_logic;                        -- se�al para fin de temporizador 
  signal to_BCD_Decod                   : std_logic_vector(7 downto 0);     -- se�al para conectar salida de fsm con entrada de BCD_Decod 
  signal to_BCD_7segm                   : std_logic_vector(5 downto 0);     -- se�al para conectar salida de bcd_decod con bcd_to_7segm 
  signal to_s0                          : std_logic_vector(7 downto 0);     -- se�ales para conectar salida de bcd_7segm con displays 
  signal to_s1                          : std_logic_vector(7 downto 0);
  signal to_s2                          : std_logic_vector(7 downto 0);
  signal to_s3                          : std_logic_vector(7 downto 0);
  signal to_s4                          : std_logic_vector(7 downto 0);
  signal to_s5                          : std_logic_vector(7 downto 0);
  signal to_s6                          : std_logic_vector(7 downto 0);
  signal to_s7                          : std_logic_vector(7 downto 0);
  
component BCD_decoder is
    port (
      code_in                        : in  std_logic_vector(7 downto 0);-- salida de la fsm
      S0, S1, S2, S3, S4, S5, S6, S7 : out std_logic_vector(5 downto 0) -- codigo que sera decodificado y mostrado en displays
    );
  end component;
  
  component BCD_to_7seg is
    port (
      bcd_in : in  std_logic_vector(5 downto 0); -- Codigo en bcd
      segms  : out std_logic_vector(7 downto 0)  -- Display de 8 segmentos (incluido punto decimal)
    );
  end component;
  
  component display_exit is
    Port ( 
      CLK                     : in  std_logic;                      -- Se�al de reloj        
      s0,s1,s2,s3,s4,s5,s6,s7 : in std_logic_vector(7 downto 0);    -- Cifras a mostrar en los displays
      display_number          : out  std_logic_vector (7 downto 0); -- Segmentos de cada display (incluye el punto)
      display_selection       : out  std_logic_vector (7 downto 0)  -- Selector del display donde va la salida
    );
  end component;
  
  COMPONENT SYNCHRNZR
    PORT (
      CLK : in std_logic;
      ASYNC_IN : in std_logic;    --se�al de pulsacion de los botones
      SYNC_OUT : out std_logic    --se�al sincronizada de boton
    );
  END COMPONENT;
  
  COMPONENT EDGEDTCTR
    PORT (
      CLK : in std_logic;         -- entrada de reloj
      SYNC_IN : in std_logic;     -- entrada sincrona de boton
      EDGE : out std_logic        -- salida de pulso correcto
    );
  END COMPONENT;
  
  COMPONENT fsm is
  port (
    RESET      : in std_logic;                         -- Reset de la placa 
    CLK        : in std_logic;                         -- Se�al de reloj de salida del prescaler 
    Botones    : in std_logic_vector(4 downto 0);      -- Botones para cambiar de estado e introducir monedas 
    end_timer  : in std_logic;                         -- Entrada que llega del temporizador para indicar que se ha terminado la cuenta
    money_ok   : out std_logic;                        -- Salida que pone a contar el temporizador cuando se mete el importe correcto o hay que devolverlo
    delivering : out std_logic;                        -- Led GREEN para indicar que se esta entregando bebida 
    error      : out std_logic;                        -- Led RED para indicar que se ha excedido el importe. Se devuelve el dinero
    LIGHT      : out std_logic_vector(0 TO 15);        -- LEDS para saber que bebida se ha seleccionado
    salida     : out std_logic_vector(7 downto 0)      -- Info que va a los displays
 );
  END COMPONENT;
  
  COMPONENT timer is
    generic(
        delay	  : integer := 5;        -- Temporizador de 5 segundos    
        frec_in   : integer := 1000      -- Frecuencia de salida del prescaler
    );
    port(
        clk          : in std_logic;     -- Entrada de reloj (viene del prescaler)
        reset        : in std_logic;     -- Boton de reset de la placa
        start_temp   : in std_logic;     -- La fsm actica el temporizador al llegar al estado correspondiente
        end_temp	 : out std_logic     -- Indica fin del temporizador
    );
  END COMPONENT;
  
  COMPONENT prescaler is
    generic(
        f_in :positive :=100e6;     -- frecuencia de reloj de entrada
        f_out:positive :=1000       -- frecuencia de reloj de salida
    );
    Port ( 
        clk_in  :in std_logic;      -- se�al de reloj de entrada
        clk_out:out std_logic       -- se�al de reloj de salida
    );
 END component;
  
begin

synchronizers: for i in Boton'range generate -- Obligatorio que lleve nombre Lo hace para TODOS los botones
    Inst_SYNCHRNZR: SYNCHRNZR
      port map (
        clk      => clk,
        async_in => Boton(i),
        sync_out => boton_sinc(i)
      );

  Inst_EDGEDTCTR: EDGEDTCTR 
      PORT MAP(
        CLK     => CLK,
        SYNC_IN => boton_sinc(i),
        EDGE    => boton_edge(i)
      );
  
  end generate;
--  QUEDAN POR INSTANCIAR EL RESTO DE COMPONENTES 


--  Inst_fsm: FSM
--     PORT MAP(
--        RESET  => reset,
--        CLK    => CLK,
--        Botones => boton_edge,
--        LIGHT  => LIGHT,
--        salida => coste    
--  );
--  Inst_BCD_Decod: BCD_decoder
--    PORT MAP(
--        entrada => coste,
--        S0 =>  S0, 
--        S1 =>  S1,
--        S2 =>  S2,
--        S3 =>  S3,
--        S4 =>  S4,
--        S5 =>  S5,
--        S6 =>  S6,
--        S7 =>  S7
--    );
--    --Terminar de conectar
--  Inst_DisplayExit: display_exit
--    PORT MAP(
--        CLK    => CLK,
--        S0 =>  S0, 
--        S1 =>  S1,
--        S2 =>  S2,
--        S3 =>  S3,
--        S4 =>  S4,
--        S5 =>  S5,
--        S6 =>  S6,
--        S7 =>  S7,
--        display_number => display_number,
--        display_selection => display_select
--     );  
         

end Behavioral;
