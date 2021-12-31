--simular 1000ns

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BCD_decoder_tb is
end;

architecture bench of BCD_decoder_tb is
  component BCD_decoder
    Port (
      code_in                        : in  std_logic_vector(7 downto 0);
      S0, S1, S2, S3, S4, S5, S6, S7 : out std_logic_vector(5 downto 0)
    );
  end component;

  signal code_in                 : std_logic_vector(7 downto 0);
  signal S0,S1,S2,S3,S4,S5,S6,S7 : std_logic_vector(5 downto 0);

begin
  uut: BCD_decoder port map ( 
    code_in => code_in,
    S0      => S0,
    S1      => S1,
    S2      => S2,
    S3      => S3,
    S4      => S4,
    S5      => S5,
    S6      => S6,
    S7      => S7 
  );

  stimulus: process
  begin
    code_in <= "00000000";
    wait for 100 ns;
    code_in <= "00110010"; --50
    wait for 100 ns;
    code_in <= "01010000"; --80
    wait for 100 ns;
    code_in <= "01100100"; --100
    wait for 100 ns;
    code_in <= "11111010"; --250
    wait for 100 ns;
    code_in <= "11111011"; --251
    wait for 100 ns;
    code_in <= "11111100"; --252
    wait for 100 ns;
    code_in <= "11111101"; --253
    wait for 100 ns;
    code_in <= "11111110"; --254
    wait for 100 ns;
    code_in <= "11111111"; --255
    wait for 100 ns;
    
    wait;
  end process;
end architecture;