--simular 15000ms
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

entity top_tb is
end top_tb;

architecture Behavioral of top_tb is

-- Inputs

signal Boton : std_logic_vector(4 downto 0); 
signal CLK   : std_logic;
signal RESET   : std_logic;


-- Outputs

signal delivering: std_logic;  
signal error: std_logic;  
signal LIGHT:  std_logic_vector(0 TO 15);
signal display_number      :  std_logic_vector(7 downto 0);
signal display_select      :  std_logic_vector(7 downto 0);




component top 
--    generic(
--    CLK_frec_in : positive := 100e6;    -- Frecuencia de reloj de la placa (100MHz)
--    CLK_frec_out: positive := 1000;     -- Frecuencia que queremos a salida de prescaler 
--    DELAY       : integer  := 5         -- Los temporizadores contaran 5 segundos
--  );
  Port (
    RESET               : in  std_logic;                                -- Boton de reset de la placa
    CLK                 : in  std_logic;                                -- reloj de la placa (100MHz)
    Boton               : in  std_logic_vector(4 downto 0);             -- Botones que se usarán para seleccionar bebida e introducir monedas
    LIGHT               : out std_logic_vector(0 TO 15);                -- Leds para saber en que estado esta la fsm, bebida elegida, error, o bebida saliente
    display_number      : out std_logic_vector(7 downto 0);             -- Dato que va a cada Display por cada ciclo de reloj
    display_select      : out std_logic_vector(7 downto 0);             -- Display por el que sale el dato
    delivering          : out std_logic;                                -- LED GREEN para indicar que se esta entregando bebida
    error               : out std_logic                                 -- LED RED para indicar que se ha excedido el importe del producto
  );

end component;

constant CLK_IN_PERIOD  : time := 1 ms; -- Periodo reloj de la placa PREESCALADO

begin
  
    uut : top
--        generic map(
--            CLK_frec_in     => 100e6,
--            CLK_frec_out    => 1000,
--            DELAY           => 5         
--        )
       Port Map (
       
       CLK => CLK,
       RESET => RESET,
       Boton => Boton,
       display_number => display_number,
       display_select => display_select,
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
   
  RESET <= '0';
  Boton <= "00000";
  wait for 2ms;
  RESET <= '1';

  
  wait for 5ms;
  
  Boton(0)<='1'; --fanta 80cts
  wait for 2ms;
  Boton(0)<='0';
  
  wait for 3ms;
  
  Boton(1)<='1'; --pepsi 100cts
  wait for 2ms;
  Boton(1)<='0';
  
  wait for 3ms;
  
  Boton(2)<='1'; --agua 50cts
  wait for 2ms;
  Boton(2)<='0';
  
  wait for 3ms;
  
  Boton(3)<='1'; --volver a menu inicial
  wait for 2ms;
  Boton(3)<='0';
  
  wait for 3ms;
  
  Boton(1)<='1'; -- pepsi 100 CENTS 
  wait for 2ms;
  Boton(1)<='0';
  
  Boton(4)<='1'; -- seleccionar
  wait for 2ms;
  Boton(4)<='0';
  
  wait for 5ms; -- EMPIEZO A PAGAR
  
  Boton(1)<='1'; --meto 50cts
  wait for 2ms;
  Boton(1)<='0';
  
  wait for 3ms;
  
   Boton(0)<='1'; --meto 20cts
  wait for 2ms;
  Boton(0)<='0';
  
  wait for 3ms;
  
  Boton(0)<='1'; --meto 20cts
  wait for 2ms;
  Boton(0)<='0';
  
  wait for 3ms;
  
  Boton(0)<='1'; --meto 20cts (me paso)
  wait for 2ms;
  Boton(0)<='0';
  
  wait for 5005ms;
  
  
  
  Boton(2)<='1'; -- agua 50 cts
  wait for 2ms;
  Boton(2)<='0';
  
  wait for 3ms;
  
  Boton(4)<='1'; -- seleccionar
  wait for 2ms;
  Boton(4)<='0';
  
  wait for 3ms;
  
  Boton(1)<='1'; --meto 50cts
  wait for 2ms;
  Boton(1)<='0';
  
  wait for 7000ms;

assert false
      report "[SUCCESS]: simulation finished."
      severity failure;
      
   end process;

end Behavioral;
