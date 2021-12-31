-- simulation time 10ms

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity sincro_tb is
end sincro_tb;

architecture Behavioral of sincro_tb is

 -- Inputs
  signal CLK   : std_logic;
  signal ASYNC_IN : std_logic;  --boton
  
  -- Outputs
  signal SYNC_OUT    : std_logic;


component SYNCHRNZR is
 port (
        CLK      : in std_logic;
        ASYNC_IN : in std_logic;    --señal de pulsacion de los botones
        SYNC_OUT : out std_logic    --señal sincronizada de boton
    );
end component;

 constant CLK_PERIOD : time := 10 ns; 


begin

    uut: SYNCHRNZR
      port map(
        CLK => CLK,
        ASYNC_IN =>ASYNC_IN,
        SYNC_OUT => SYNC_OUT
    );

 clkgen: process
  begin
    CLK <= '1';
    wait for 0.5 * CLK_PERIOD;
    CLK <= '0';
    wait for 0.5 * CLK_PERIOD;
  end process;

tester: process
  begin
  
    ASYNC_IN <= '0';
    wait for 3*CLK_PERIOD;
    ASYNC_IN <= '1';
    wait for 0.5*CLK_PERIOD;
    ASYNC_IN <= '0';
    
    
    wait for 2*CLK_PERIOD;
    ASYNC_IN <= '1';
    wait for 3*CLK_PERIOD;
    ASYNC_IN <= '0';
    
    wait for 0.75*CLK_PERIOD;
    ASYNC_IN <= '1';
    wait for 1.5*CLK_PERIOD;
    ASYNC_IN <= '0';
      wait for 0.3*CLK_PERIOD;
    ASYNC_IN <= '1';
    wait for 1.25*CLK_PERIOD;
    ASYNC_IN <= '0';
    
    wait for 5*CLK_PERIOD;
    assert false
      report "[SUCCESS]: simulation finished."
      severity failure;
  end process;


end Behavioral;
