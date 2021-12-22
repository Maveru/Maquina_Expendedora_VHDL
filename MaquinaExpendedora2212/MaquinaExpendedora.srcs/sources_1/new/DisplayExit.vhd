library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_exit is
    -- a este componente llegan las salidas del decodificador de 7 segmentos, cada una de ellas 
    -- haciendo referencia a lo que aparecera en los displays. Los displays se iran activando de 
    -- uno en uno, con la informacion correspondiente, a muy alta frecuencia, de forma que ante
    -- el ojo humano parece que estan todos activos a la vez.
  Port ( 
    CLK                            : in  std_logic;                     -- Señal de reloj
    s0, s1, s2, s3, s4, s5, s6, s7 : in  std_logic_vector(7 downto 0);  -- Cifras a mostrar en los displays
    display_number                 : out std_logic_vector(7 downto 0);  -- Segmentos de cada display (incluye el punto)
    display_selection              : out std_logic_vector(7 downto 0)   -- Selector del display donde va la salida
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
	    display_selection <= "01111111";   -- primer display seleccionado (activos a nivel bajo)
        display_number <= s0;               				
	  when 1 =>
	    display_selection <= "10111111";   -- segundo display seleccionado
		display_number <= s1; 
	  when 2 =>
	    display_selection <= "11011111";   -- tercero display seleccionado
		display_number <= s2; 
	  when 3 =>
	    display_selection <= "11101111";   -- cuarto display seleccionado
		display_number <= s3;
	  when 4 =>
	    display_selection <= "11110111";   -- quinto display seleccionado
		display_number <= s4; 	
	  when 5 =>
	    display_selection <= "11111011";   -- sexto display seleccionado
		display_number <= s5;	
	  when 6 =>
	    display_selection <= "11111101";   -- septimo display seleccionado
		display_number <= s6; 	
	  when 7 =>
	    display_selection <= "11111110";   -- octavo display seleccionado
		display_number <= s7;			
	end case;
  end process;
end architecture;
