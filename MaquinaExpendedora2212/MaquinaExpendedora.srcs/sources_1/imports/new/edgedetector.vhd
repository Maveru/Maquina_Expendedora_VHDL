----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2021 16:29:36
-- Design Name: 
-- Module Name: edgedetector - Behavioral
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
entity EDGEDTCTR is
    port (
        CLK : in std_logic;         -- entrada de reloj
        SYNC_IN : in std_logic;     -- entrada sincrona de boton
        EDGE : out std_logic        -- salida de pulso correcto
    );
end EDGEDTCTR;

architecture BEHAVIORAL of EDGEDTCTR is
    signal sreg : std_logic_vector(2 downto 0); -- señal auxiliar que acumula los tres ultimos bits de entrada

-- Al detectar flanco de subida en CLK, asigna a la señal auxiliar sus dos
-- bits menos significativos concatenados a la nueva entrada. En el momento
-- que se produce un flanco de bajada y por tanto los dos últimos bits
-- incorporados son '0', la salida EDGE se pone a 1.
begin
 process (CLK)
 begin
    if rising_edge(CLK) then
        sreg <= sreg(1 downto 0) & SYNC_IN; 
    end if;
 end process;
 
 with sreg select
    EDGE <= '1' when "100",
            '0' when others;
end BEHAVIORAL;


