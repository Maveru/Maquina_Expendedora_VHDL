
-- Simulation time 40000ns

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity prescaler_tb is
end entity;

architecture test of prescaler_tb is

  -- Inputs
  signal clk_in  : std_logic;
  
  -- Outputs
  signal clk_out    : std_logic;

  component prescaler is
  --  generic(
   --   f_in  : positive := 100e6;
   --   f_out : positive := 1e6
    --);
    port (
      clk_in  : in  std_logic;
      clk_out : out std_logic
    );
  end component;

  constant CLK_PERIOD : time := 10 ns; 

begin
  uut: prescaler
    port map (
      clk_in  => clk_in,
      clk_out => clk_out
    );

  clkgen: process
  begin
    clk_in <= '1';
    wait for 0.5 * CLK_PERIOD;
    clk_in <= '0';
    wait for 0.5 * CLK_PERIOD;
  end process;

  tester: process
  begin

    wait for 0.25 * CLK_PERIOD;

    wait until clk_in = '1';
    wait for 1 * CLK_PERIOD;
    
    wait for 200000 * CLK_PERIOD;
    assert false
      report "[SUCCESS]: simulation finished."
      severity failure;
  end process;

end architecture;