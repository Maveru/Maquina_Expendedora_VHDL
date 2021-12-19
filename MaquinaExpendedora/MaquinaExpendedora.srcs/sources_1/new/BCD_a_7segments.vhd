library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity BCD_a_7segments is
    -- convierte el codigo que sale del BCD_Decod en segmentos apagados iluminados
 port (
    bcd_in : in  std_logic_vector(5 downto 0); -- Codigo en bcd
    segms  : out std_logic_vector(7 downto 0)  -- Display de 8 segmentos (incluido punto decimal)
  );
end BCD_a_7segments;

architecture Behavioral of BCD_a_7segments is

begin
visualizer: process (bcd_in)
  begin
    case bcd_in is
      when "000000" =>  segms <= x"C0"; --> 0
      when "000001" =>  segms <= x"F9"; --> 1
      when "000010" =>  segms <= x"A4"; --> 2
      when "000011" =>  segms <= x"B0"; --> 3
      when "000100" =>  segms <= x"99"; --> 4
      when "000101" =>  segms <= x"92"; --> 5
      when "000110" =>  segms <= x"82"; --> 6
      when "000111" =>  segms <= x"F8"; --> 7
      when "001000" =>  segms <= x"80"; --> 8
      when "001001" =>  segms <= x"98"; --> 9
      when "001010" =>  segms <= x"88"; --> A
      when "001011" =>  segms <= x"83"; --> B
      when "001100" =>  segms <= x"C6"; --> C
      when "001101" =>  segms <= x"A1"; --> D
      when "001110" =>  segms <= x"86"; --> E
      when "001111" =>  segms <= x"8E"; --> F
      when "010000" =>  segms <= x"90"; --> G
      when "010001" =>  segms <= x"89"; --> H
      when "010010" =>  segms <= x"E6"; --> I
      when "010011" =>  segms <= x"E1"; --> J
      when "010100" =>  segms <= x"85"; --> K
      when "010101" =>  segms <= x"C7"; --> L
      when "010110" =>  segms <= x"C8"; --> M
      when "010111" =>  segms <= x"AB"; --> N
      when "011000" =>  segms <= x"C0"; --> O
      when "011001" =>  segms <= x"8C"; --> P
      when "011010" =>  segms <= x"98"; --> Q
      when "011011" =>  segms <= x"AF"; --> R
      when "011100" =>  segms <= x"92"; --> S
      when "011101" =>  segms <= x"87"; --> T
      when "011110" =>  segms <= x"E3"; --> U
      when "011111" =>  segms <= x"C1"; --> V
      when "100000" =>  segms <= x"E2"; --> W
      when "100001" =>  segms <= x"8F"; --> X
      when "100010" =>  segms <= x"91"; --> Y
      when "100011" =>  segms <= x"B6"; --> Z
      when "100100" =>  segms <= x"BF"; --> -
      when "100101" =>  segms <= x"F7"; --> _
      when "100110" =>  segms <= x"7F"; --> .
      when others   =>  segms <= x"FF"; --> Nada
    end case;
  end process;
end Behavioral;
