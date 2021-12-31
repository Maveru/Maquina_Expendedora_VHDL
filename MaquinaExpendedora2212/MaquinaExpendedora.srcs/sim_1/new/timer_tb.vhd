

--  Simulation time 15000ms

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer_tb is
end entity;

architecture behavioral of timer_tb is 
	
  --Inputs
  signal clk          : std_logic;
  signal reset        : std_logic;
  signal start_temp : std_logic;

  --Outputs
  signal end_temp   : std_logic;
  
  component timer is
    port(
        clk          : in std_logic;     -- Entrada de reloj (viene del prescaler)
        reset        : in std_logic;     -- Boton de reset de la placa
        start_temp   : in std_logic;     -- La fsm actica el temporizador al llegar al estado correspondiente
        end_temp	 : out std_logic     -- Indica fin del temporizador
    );
  end component;

  constant clk_period : time := 1ms;

begin
  uut: timer
    port map (
      clk          => clk,
      reset        => reset,
      start_temp => start_temp,
      end_temp   => end_temp
    );

  clk_process : process
  begin
    clk <= '0';
    wait for 0.5 * clk_period;
    clk <= '1';
    wait for 0.5 * clk_period;
  end process;
	
  reset <='1','0' after 0.25 * clk_period, '1' after 0.75 * clk_period,'0' after clk_period*6000,'1' after 6500 * clk_period;
  
  start_temp <= '0', '1' after 1 * clk_period, '0' after 2 * clk_period,'1' after 7000 * clk_period, '0' after 7500 * clk_period;
  

    
end;
