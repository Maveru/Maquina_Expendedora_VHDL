-- MÁQUINA MAESTRO

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity master_temp is
	port (
		CLK		:	in 	std_logic; -- Entrada de RELOJ
		RST_N	:	in 	std_logic; -- Entrada de RESET a nivel bajo
		
		-- SLAVE INTERFACE
		START	:	out std_logic; -- Señal de inicio del temporizador
		DELAY	:	out unsigned(3 downto 0); -- Tiempo carga del temporizador
		DONE 	:	in 	std_logic -- Señal de fin del temporizador
	);
end entity master_temp;

architecture behavioral of master_temp is -- FSM que controla la transición de estados
	type STATE_T is (S0, S1, S2, S0_WT, S1_WT, S2_WT); 
	signal cur_state : STATE_T; -- Estado actual
	signal nxt_state : STATE_T; -- Estado siguiente
begin
	state_register: process(CLK, RST_N)
	begin
		if RST_N = '0' then -- Si entra un reset, mandamos a reposo la máquina de estados
			cur_state <= S0;
		elsif rising_edge(CLK) then
			cur_state <= nxt_state;
		end if;
	end process;
	
	nxt_state_decoder: process(cur_state, DONE)
	begin
		nxt_state <= cur_state; --Aseguramos que sea combinacional
		DELAY <= (others => '0');
		case cur_state is
			when S0 =>
				DELAY <= to_unsigned(2, DELAY'length); --2 ciclos de reloj
				START <= '1'; --habría que volver a ponerlo a 0 despues??
				nxt_state <= S0_WT;
			when S0_WT =>
				if DONE = '1' then
					nxt_state <= S1;
				end if;
			when S1 =>
				DELAY <= to_unsigned(5, DELAY'length); --5 ciclos de reloj
				START <= '1';
				nxt_state <= S1_WT;
			when S1_WT =>
				if DONE = '1' then
					nxt_state <= S2;
				end if;
			when S2 =>
				DELAY <= to_unsigned(3, DELAY'length); --3 ciclos de reloj
				START <= '1';
				nxt_state <= S2_WT;
			when S2_WT =>
				if DONE = '1' then
					nxt_state <= S0;
				end if;
			when others =>
				nxt_state <= S0;
		end case;	
	end process;
	
	-- NO HAY SALIDAS, POR LO Q NO HACE FALTA EL OUTPUT DECODER.
	
end architecture behavioral;