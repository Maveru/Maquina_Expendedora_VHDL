
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SYNCHRNZR is
    port (
        CLK : in std_logic;
        ASYNC_IN : in std_logic;    --señal de pulsacion de los botones
        SYNC_OUT : out std_logic    --señal sincronizada de boton
    );
end SYNCHRNZR;

architecture BEHAVIORAL of SYNCHRNZR is
    signal sreg : std_logic_vector(1 downto 0); -- señal auxiliar que acumula la entrada de pulsaciones por cada pulso de reloj

-- a fin de evitar la metaestabilidad, al detectar un flanco de
-- subida en CLK, a la salida se le asigna lo que había acumulado
-- en la señal auxiliar. También se actualiza la señal aux con la
-- entrada.
begin
    process (CLK)
    begin
        if rising_edge(CLK) then
            SYNC_OUT <= sreg(1);
            sreg <= sreg(0) & ASYNC_IN;
        end if;
    end process;
end BEHAVIORAL;
