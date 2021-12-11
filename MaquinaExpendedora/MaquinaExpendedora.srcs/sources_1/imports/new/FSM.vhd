
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity fsm is
     port (
         RESET : in std_logic;
         CLK   : in std_logic;
         Botones : in std_logic_vector(4 downto 0);
         LIGHT : out std_logic_vector(0 TO 3);
         Coste : out integer -- Poner unsigned mejor? Lo uso para saber que represento y cuanto hay que pagar 
     );
end fsm;

architecture behavioral of fsm is
     type STATES is (S0, S1, S2, S3); -- S1 FANTA 80CENTS / S2 PEPSi 100 CENTS / S3 AGUA 50 CENTS
     signal current_state: STATES := S0;
     signal next_state: STATES;
     signal Coste_i: integer;
begin
    state_register: process (RESET, CLK)
begin

    if RESET='0' then 
        current_state <=s0;
    elsif clk'event and clk= '1' then
        current_state<=next_state;
    end if;
 end process;
 
 nextstate_decod: process (Botones, current_state)
 begin
    next_state <= current_state;
 case current_state is
    when S0 =>
        if Botones(0) = '1' then
            next_state <= S1;
 end if;
     when S1 =>
         if Botones(1) = '1' then
            next_state <= S2;
 end if;
     when S2 =>
         if Botones(2) = '1' then
           next_state <= S3;
 end if;
     when S3 =>
         if Botones(3) = '1' then
           next_state <= S0;
 end if;
     when others =>
         next_state <= S0;
 end case;
 end process;
 
 output_decod: process (current_state)
 begin
    LIGHT <= (OTHERS => '0');
 case current_state is
     when S0 =>
        LIGHT(0) <= '1';
     when S1 => -- FANTA
        LIGHT(1) <= '1';
        Coste_i <= 80;
           
     when S2 => -- PEPSI
        LIGHT(2) <= '1';
        Coste_i <= 100;
       
     when S3 => -- AGUA
        LIGHT(3) <= '1';
        Coste_i <= 50;
         
     when others =>
        LIGHT <= (OTHERS => '0');
 end case;
    Coste <= Coste_i;
 end process;
 end behavioral;