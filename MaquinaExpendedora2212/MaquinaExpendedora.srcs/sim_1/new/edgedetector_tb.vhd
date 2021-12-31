-- simulation time 10ms

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity edgedetector_tb is
--  Port ( );
end edgedetector_tb;

architecture Behavioral of edgedetector_tb is

 -- Inputs
  signal CLK   : std_logic;
  signal SYNC_IN : std_logic;  --boton sincronizadp
  
  -- Outputs
  signal EDGE    : std_logic;

component EDGEDTCTR is
    port (
        CLK : in std_logic;         -- entrada de reloj
        SYNC_IN : in std_logic;     -- entrada sincrona de boton
        EDGE : out std_logic        -- salida de pulso correcto
    );
end component EDGEDTCTR;

constant CLK_PERIOD : time := 10 ns; 

begin

 uut: EDGEDTCTR
      port map(
        CLK => CLK,
        SYNC_IN => SYNC_IN,
        EDGE => EDGE
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
  
    SYNC_IN <= '0';
    wait for 3*CLK_PERIOD;
    SYNC_IN <= '1';
    wait for 0.5*CLK_PERIOD;
    SYNC_IN <= '0';
    
    
    wait for 7*CLK_PERIOD;
    SYNC_IN <= '1';
    wait for 3*CLK_PERIOD;
    SYNC_IN <= '0';
    
    wait for 0.75*CLK_PERIOD;
    SYNC_IN <= '1';
    wait for 1.5*CLK_PERIOD;
    SYNC_IN <= '0';
      wait for 0.3*CLK_PERIOD;
    SYNC_IN <= '1';
    wait for 1.25*CLK_PERIOD;
    SYNC_IN <= '0';
    
    wait for 5*CLK_PERIOD;
    assert false
      report "[SUCCESS]: simulation finished."
      severity failure;
  end process;

end Behavioral;
