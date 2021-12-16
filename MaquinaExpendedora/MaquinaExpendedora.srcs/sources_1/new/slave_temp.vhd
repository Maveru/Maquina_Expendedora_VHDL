----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.12.2021 23:26:36
-- Design Name: 
-- Module Name: slave_temp - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- MÁQUINA ESCLAVO
entity slave_temp is
	port (
		CLK		:	in 	std_logic; -- Entrada de RELOJ
		RST_N	:	in 	std_logic; -- Entrada de RESET
		
		-- MASTER INTERFACE
		START	:	in 	std_logic;
		DONE 	:	out std_logic;
		DELAY	:	in 	unsigned(3 downto 0) --Tiempo de espera
	);
end entity slave_temp;

architecture behavioral of slave_temp is
	signal count : unsigned(DELAY'range);
begin
	process(CLK, RST_N)
	begin
		if RST_N = '0' then -- Si entra un reset, mandamos a reposo la máquina de estados
			count <= (others => '0');
			DONE <= '1';
		elsif rising_edge(CLK) then
			if START = '1' then
				count <= DELAY;
				DONE <= '0';
			elsif count /= 0 then --Contamos de forma decreciente
				count <= count - 1;
			else
				DONE <= '1';
			end if;
		end if;
	end process;
end architecture behavioral;