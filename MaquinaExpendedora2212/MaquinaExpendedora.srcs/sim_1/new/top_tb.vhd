
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_tb is
end top_tb;

architecture Behavioral of top_tb is

-- Inputs

signal Botones : std_logic_vector(4 downto 0); 
signal CLK   : std_logic;
signal RESET   : std_logic;


-- Outputs

signal delivering: std_logic;  
signal error: std_logic;  
signal LIGHT:  std_logic_vector(0 TO 15);




component top 
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
--    display_number      : out std_logic_vector(7 downto 0);             -- Dato que va a cada Display por cada ciclo de reloj
--    display_select      : out std_logic_vector(7 downto 0);             -- Display por el que sale el dato
    delivering          : out std_logic;                                -- LED GREEN para indicar que se esta entregando bebida
    error               : out std_logic                                 -- LED RED para indicar que se ha excedido el importe del producto
  );

end component;

constant CLK_IN_PERIOD  : time := 100 us; -- Periodo reloj de la placa

begin

    uut : top
    
       Port Map (
       
       CLK => CLK,
       RESET => RESET,
       Boton => Botones,
       error => error,
       delivering => delivering,
       LIGHT => LIGHT
       
       );
       
       
  clkgen: process
  begin
    clk <= '1';
    wait for 0.5 * CLK_IN_PERIOD;
    clk <= '0';
    wait for 0.5 * CLK_IN_PERIOD;
  end process;

tester : process
    begin
   
  -- Seleccion de la bebida   
    Botones <= "00000";
    wait for CLK_IN_PERIOD;
    Botones(0) <= '1'; -- 80 centimos
    wait for CLK_IN_PERIOD;
    Botones(0) <= '0'; -- 80 centimos
    wait for CLK_IN_PERIOD*0.5;
    Botones(1) <= '1'; -- 100 centimos
    wait for CLK_IN_PERIOD;
    Botones(1) <= '0';
    wait for CLK_IN_PERIOD*0.5;
    Botones(2) <= '1'; -- 50 centimos
    wait for CLK_IN_PERIOD;
    Botones(2) <= '0'; -- 50 centimos
    wait for CLK_IN_PERIOD*0.5;
    Botones(3) <= '1'; -- Vuelvo al inicio
    wait for CLK_IN_PERIOD;
    Botones(3) <= '0';
    wait for CLK_IN_PERIOD*0.5;
    Botones(2) <= '1'; -- 50 centimos
    wait for CLK_IN_PERIOD;
    Botones(2) <= '0'; 
    wait for CLK_IN_PERIOD*0.5;
    Botones(4) <= '1'; -- Entro al estado pagar
    wait for CLK_IN_PERIOD;
    Botones(4) <= '0';
  -- Pagar
    
     wait for 2*CLK_IN_PERIOD;
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
    wait for CLK_IN_PERIOD*3;
    Botones(1) <= '1'; --Meto moneda 50 cents
    wait for 2*CLK_IN_PERIOD;
    Botones(1) <= '0';
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
--    wait for CLK_IN_PERIOD*0.5;
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 2*CLK_IN_PERIOD;
--    Botones(0) <= '0';

    wait for 5*CLK_IN_PERIOD;

   end process;

end Behavioral;
