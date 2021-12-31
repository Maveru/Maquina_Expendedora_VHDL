-- simular 1000ns

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2021 21:26:01
-- Design Name: 
-- Module Name: BCD_a_7segments_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BCD_a_7segments_tb is
end BCD_a_7segments_tb;

architecture Behavioral of BCD_a_7segments_tb is
    component BCD_a_7segments
        port (
            bcd_in : in  std_logic_vector(5 downto 0); -- Codigo en bcd
            segms  : out std_logic_vector(7 downto 0)  -- Display de 8 segmentos (incluido punto decimal)
        );
    end component;
    
    signal bcd_in           : std_logic_vector(5 downto 0);
    signal segms            : std_logic_vector(7 downto 0);
begin
    uut: BCD_a_7segments port map (
    bcd_in      => bcd_in,
    segms       => segms
    );

stimulus: process
  begin
    bcd_in <= "000010";     --2
    wait for 100 ns;
    bcd_in <= "001100";     --C
    wait for 100 ns;
    bcd_in <= "010010";     --I
    wait for 100 ns;
    bcd_in <= "011000";     --O
    wait for 100 ns;
    bcd_in <= "011111";     --V
    wait for 100 ns;
    
    wait;
end process;
end Behavioral;