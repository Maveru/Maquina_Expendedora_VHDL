

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity prescaler is
    generic(
    f_in :positive :=100e6;     -- frecuencia de reloj de entrada
    f_out:positive :=10e3       -- frecuencia de reloj de salida
    );
    Port ( 
    clk_in  :in std_logic;      -- señal de reloj de entrada
    clk_out:out std_logic       -- señal de reloj de salida
    );
end prescaler;

architecture Behavioral of prescaler is
    signal count    : unsigned (15 downto 0) := (others => '0');
    -- por cada flanco de reloj, count aumenta su valor en 1, hasta llegar a la mitad del periodo
    -- deseado, momento en el que la señal de salida de reloj cambia su valor.
    signal clk_i : std_logic := '0';  
begin
    general_clk : process (clk_in)
    begin
        if rising_edge(clk_in) then
          if count = ((f_in / f_out) / 2) then
            count   <= (others => '0');
            clk_i   <= not clk_i;
          else
            count <= count + 1;
          end if;
        end if;
    end process general_clk;
    clk_out <= clk_i;
end Behavioral;
