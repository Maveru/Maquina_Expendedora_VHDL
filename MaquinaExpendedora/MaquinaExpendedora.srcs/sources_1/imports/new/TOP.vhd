--Terminar mapeo y crear una entidad para pasar de integer a bin??

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY top IS
  PORT (
    RESET : in  std_logic;                                  --Boton de reset de la placa
    CLK   : in  std_logic;                                  --reloj de la placa (100MHz)
    Boton : in  std_logic_vector(4 downto 0);               --Botones que se usarán para seleccionar bebida e introducir monedas
    LIGHT : out std_logic_vector(0 TO 15);                  --Leds para saber en que estado esta la fsm, bebida elegida, error, o bebida saliente
    display_number    : out std_logic_vector(7 downto 0);   --Dato que va a cada Display por cada ciclo de reloj
    display_select    : out std_logic_vector(7 downto 0)    --Display por el que sale el dato
  );
END top;
    
architecture Behavioral of top is
  signal boton_edge: std_logic_vector (Boton'range);
  signal boton_sinc: std_logic_vector (Boton'range);
  signal S0, S1, S2, S3, S4, S5, S6, S7:  std_logic_vector(7 downto 0);  
  --signal coste_int: integer;
  signal coste: std_logic_vector(7 downto 0);
  
component BCD_decoder is
    port (
      entrada                        : in  std_logic_vector(7 downto 0); -- No que llega al decodificador para salir en BCD
      S0, S1, S2, S3, S4, S5, S6, S7 : out std_logic_vector(7 downto 0)  
    );
  end component;
  
  component BCD_to_7seg is
    port (
      entrada : in  std_logic_vector(5 downto 0); -- Cifra de entrada codificada en BCD
      salida  : out std_logic_vector(7 downto 0)  -- Salida por display
    );
  end component;
  
  component display_exit is
    Port ( 
      CLK                            : in  std_logic;
      s0, s1, s2, s3, s4 ,s5, s6 ,s7 : in  std_logic_vector(5 downto 0);  
      display_number                 : out std_logic_vector (7 downto 0); 
      display_selection              : out std_logic_vector (7 downto 0) 
    );
  end component;
  
  COMPONENT SYNCHRNZR
    PORT (
      CLK     : in  std_logic;
      ASYNC_IN: in  std_logic;
      SYNC_OUT: out std_logic
    );
  END COMPONENT;
  
  COMPONENT EDGEDTCTR
    PORT (
      CLK    : in std_logic;
      SYNC_IN: in std_logic;
      EDGE   : out std_logic
    );
  END COMPONENT;
  
  COMPONENT fsm is
  port (
    RESET : in  std_logic;
    CLK   : in  std_logic;
    Botones: in  std_logic_vector(4 downto 0);
    LIGHT : out std_logic_vector(0 TO 15);
    salida : out std_logic_vector(7 downto 0) -- Poner unsigned mejor? Lo uso para saber que represento y cuanto hay que pagar 
 );
  END COMPONENT;
  
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
  
  Inst_fsm: FSM
     PORT MAP(
        RESET  => reset,
        CLK    => CLK,
        Botones => boton_edge,
        LIGHT  => LIGHT,
        salida => coste    
  );
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
