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
    Boton               : in  std_logic_vector(4 downto 0);             -- Botones que se usarán para seleccionar bebida e introducir monedas
    LIGHT               : out std_logic_vector(0 TO 15);                -- Leds para saber en que estado esta la fsm, bebida elegida, error, o bebida saliente
    display_number      : out std_logic_vector(7 downto 0);             -- Dato que va a cada Display por cada ciclo de reloj
    display_select      : out std_logic_vector(7 downto 0);             -- Display por el que sale el dato
    delivering          : out std_logic;                                -- LED GREEN para indicar que se esta entregando bebida
    error               : out std_logic                                 -- LED RED para indicar que se ha excedido el importe del producto
  );
END top;
    
architecture Behavioral of top is
  signal boton_edge: std_logic_vector (Boton'range);                        -- se usara para la salida del detector de flanco 
  signal boton_sinc: std_logic_vector (Boton'range);                        -- se usara para la salida del sincronizador
  --signal S0, S1, S2, S3, S4, S5, S6, S7:  std_logic_vector(7 downto 0);     -- codigo en BCD para cada digito del display
  --signal coste: std_logic_vector(7 downto 0);                               -- salida de la fsm que ira a los displays
  signal clk_escalado: std_logic;                                           -- señal de reloj a la salida del prescaler 
  signal T_Fin: std_logic;                                                  -- Va del Timer a la FSM. Indica que ha terminado el temporizador
  signal T_Inic: std_logic;                                                 -- Va de la FSM al Timer. Pone a contar el temporizador 
  signal to_BCD_Decod                   : std_logic_vector(7 downto 0);     -- señal para conectar salida de fsm con entrada de BCD_Decod 
  
  signal to_BCD_7segm0                  : std_logic_vector(5 downto 0);     -- señal para conectar salida de bcd_decod con bcd_to_7segm 
  signal to_BCD_7segm1                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm2                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm3                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm4                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm5                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm6                  : std_logic_vector(5 downto 0);
  signal to_BCD_7segm7                  : std_logic_vector(5 downto 0);
  
  signal to_s0                          : std_logic_vector(7 downto 0);     -- señales para conectar salida de bcd_7segm con displays 
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
  
  component BCD_a_7segments is
    port (
      bcd_in : in  std_logic_vector(5 downto 0); -- Codigo en bcd
      segms  : out std_logic_vector(7 downto 0)  -- Display de 8 segmentos (incluido punto decimal)
    );
  end component;
  
  component display_exit is
    Port ( 
      CLK                     : in  std_logic;                      -- Señal de reloj        
      s0,s1,s2,s3,s4,s5,s6,s7 : in std_logic_vector(7 downto 0);    -- Cifras a mostrar en los displays
      display_number          : out  std_logic_vector (7 downto 0); -- Segmentos de cada display (incluye el punto)
      display_selection       : out  std_logic_vector (7 downto 0)  -- Selector del display donde va la salida
    );
  end component;
  
  COMPONENT SYNCHRNZR
    PORT (
      CLK : in std_logic;
      ASYNC_IN : in std_logic;    --señal de pulsacion de los botones
      SYNC_OUT : out std_logic    --señal sincronizada de boton
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
    CLK        : in std_logic;                         -- Señal de reloj de salida del prescaler 
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
        clk_in  :in std_logic;      -- señal de reloj de entrada
        clk_out:out std_logic       -- señal de reloj de salida
    );
 END component;
  
begin

synchronizers: for i in Boton'range generate -- Obligatorio que lleve nombre Lo hace para TODOS los botones
    Inst_SYNCHRNZR: SYNCHRNZR
      port map (
        clk      => clk_escalado,
        async_in => Boton(i),
        sync_out => boton_sinc(i)
      );

  Inst_EDGEDTCTR: EDGEDTCTR 
      PORT MAP(
        CLK     => clk_escalado,
        SYNC_IN => boton_sinc(i),
        EDGE    => boton_edge(i)
      );
  
  end generate;
  
  Inst_Prescale: prescaler
        Port Map (
        clk_in  => clk,
        clk_out => clk_escalado
        );
  
  Inst_timer: timer
        PORT MAP(
         clk =>  clk, --clk_escalado, 
         reset => RESET,
         start_temp => T_Inic,
         end_temp =>T_Fin
        );
  
  Inst_fsm: FSM
     PORT MAP(
        RESET  => reset,
        CLK    => clk_escalado,
        Botones => boton_edge,
        LIGHT  => LIGHT,
        salida => to_BCD_Decod,
        end_timer => T_Fin,
        error => error,
        money_ok => T_Inic,
        delivering => delivering   
  );
  
  Inst_BCD_Decod: BCD_decoder
    PORT MAP(
        code_in => to_BCD_Decod,
        S0 =>  to_BCD_7segm0, 
        S1 =>  to_BCD_7segm1,
        S2 =>  to_BCD_7segm2,
        S3 =>  to_BCD_7segm3,
        S4 =>  to_BCD_7segm4,
        S5 =>  to_BCD_7segm5,
        S6 =>  to_BCD_7segm6,
        S7 =>  to_BCD_7segm7
    );
  
  Inst_BCD_a_7segmentos0: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm0,
        segms => to_s0
    );
  Inst_BCD_a_7segmentos1: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm1,
        segms => to_s1
    );
  Inst_BCD_a_7segmentos2: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm2,
        segms => to_s2 
    );
  Inst_BCD_a_7segmentos3: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm3,
        segms => to_s3
    );
  Inst_BCD_a_7segmentos4: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm4,
        segms => to_s4
    );
  Inst_BCD_a_7segmentos5: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm5,
        segms => to_s5
    );
  Inst_BCD_a_7segmentos6: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm6,
        segms => to_s6
    );
  Inst_BCD_a_7segmentos7: BCD_a_7segments
    PORT MAP(
        bcd_in => to_BCD_7segm7,
        segms => to_s7
    );

  Inst_DisplayExit: display_exit
    PORT MAP(
        CLK    => clk_escalado, --VER
        S0 =>  to_s0, 
        S1 =>  to_s1,
        S2 =>  to_s2,
        S3 =>  to_s3,
        S4 =>  to_s4,
        S5 =>  to_s5,
        S6 =>  to_s6,
        S7 =>  to_s7,
        display_number => display_number,
        display_selection => display_select
     );  
         

end Behavioral;
