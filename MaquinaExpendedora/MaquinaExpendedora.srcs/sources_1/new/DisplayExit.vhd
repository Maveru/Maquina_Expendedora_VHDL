library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_exit is
  Port ( 
    CLK                            : in  std_logic;
    s0, s1, s2, s3, s4, s5, s6, s7 : in  std_logic_vector(7 downto 0); -- Cada una de las cifras en BCD que se pasan al display
    display_number                 : out std_logic_vector(7 downto 0); -- Display por el que sale el dato
    display_selection              : out std_logic_vector(7 downto 0)  -- Selector del display donde va la salida
  );
end entity;

architecture Behavioral of display_exit is
begin
  displays : process (CLK, s0,s1,s2,s3,s4,s5,s6,s7)
    variable display : integer range 0 to 7;
  begin
    if CLK'event and CLK = '1' then 
	  if display = 7 then
	    display := 0;
      else
		display := display+1;
	  end if;
	end if;
	case display is
	  when 0 =>
	    display_selection <= "01111111";
        display_number <= s0; --> 1er display				
	  when 1 =>
	    display_selection <= "10111111";
		display_number <= s1; --> 2o display
	  when 2 =>
	    display_selection <= "11011111";
		display_number <= s2; --> 3er display
	  when 3 =>
	    display_selection <= "11101111";
		display_number <= s3; --> 4o display
	  when 4 =>
	    display_selection <= "11110111";
		display_number <= s4; --> 5o display	
	  when 5 =>
	    display_selection <= "11111011";
		display_number <= s5; --> 6o display	
	  when 6 =>
	    display_selection <= "11111101";
		display_number <= s6; --> 7o display	
	  when 7 =>
	    display_selection <= "11111110";
		display_number <= s7; --> 8o display				
	end case;
  end process;
end architecture;
