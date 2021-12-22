library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity display_exit_tb is
end;

architecture bench of display_exit_tb is
  component display_exit
      Port ( 
        CLK                     : in  std_logic;                      -- Señal de reloj        
        s0,s1,s2,s3,s4,s5,s6,s7 : in std_logic_vector(7 downto 0);    -- Cifras a mostrar en los displays
        display_number          : out  std_logic_vector (7 downto 0); -- Segmentos de cada display (incluye el punto)
        display_selection       : out  std_logic_vector (7 downto 0)  -- Selector del display donde va la salida
      );
  end component;

  signal CLK                     : std_logic;
  signal s0,s1,s2,s3,s4,s5,s6,s7 : std_logic_vector(7 downto 0);
  signal display_number          : std_logic_vector (7 downto 0);
  signal display_selection       : std_logic_vector (7 downto 0);

  constant clock_period          : time := 10 ns;
  signal PararReloj          : boolean;

begin
  uut: display_exit port map ( 
    CLK               => CLK,
    s0                => s0,
    s1                => s1,
    s2                => s2,
    s3                => s3,
    s4                => s4,
    s5                => s5,
    s6                => s6,
    s7                => s7,
    display_number    => display_number,
    display_selection => display_selection 
  );

  stimulus: process
  begin
    s0 <= x"C0";
    s1 <= x"F9";
    s2 <= x"A4";
    s3 <= x"C0";
    s4 <= x"C0";
    s5 <= x"C0";
    s6 <= x"C0";
    s7 <= x"C0";
    wait for 1000ns;

    PararReloj <= true;
    wait;
  end process;

  clocking: process
  begin
    while not PararReloj loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end;