
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity fsm is
     port (
         RESET : in std_logic;
         CLK   : in std_logic;
         Botones : in std_logic_vector(4 downto 0);
         LIGHT : out std_logic_vector(0 TO 15);
         salida : out std_logic_vector(7 downto 0)  -- Display
     );
end fsm;

architecture behavioral of fsm is
     type STATES is (S0, S1, S2, S3, S4); -- S1 FANTA 80CENTS / S2 PEPSi 100 CENTS / S3 AGUA 50 CENTS
     signal current_state: STATES := S0;
     signal next_state: STATES;
     signal Coste_i: integer:=0;
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
 variable coste_fijo: integer;
 begin
    next_state <= current_state;
--1ª implementacion:
-- case current_state is
--    when S0 =>
--        if Botones(0) = '1' then
--            next_state <= S1;
--        end if;
--     when S1 =>
--         if Botones(1) = '1' then
--            next_state <= S2;
--         end if;
--     when S2 =>
--         if Botones(2) = '1' then
--           next_state <= S3;
--         end if;
--     when S3 =>
--         if Botones(3) = '1' then
--           next_state <= S0;
--         end if;
--     when others =>
--         next_state <= S0;
-- end case;

--2ª implementacion:
--if current_state = S0 then
--      if Botones(0) = '1' then
--        next_state <= S1;
--      elsif Botones(1) = '1' then
--        next_state <= S2;
--      elsif Botones(2) = '1' then
--        next_state <= S3;
--      end if;
--    end if;
--    if Botones(3) = '1' then
--       next_state <= S0;
--    end if;

--3ªimplementacion:
if current_state = S4 then
    if Botones(0) = '1' then
        coste_fijo := coste_fijo -25;
    elsif Botones(1) = '1' then
         coste_fijo := coste_fijo -50;
    elsif Botones(2) = '1' then
         coste_fijo := coste_fijo -100;
    end if;
else 
    if Botones(0) = '1' then
        next_state <= S1;
        coste_fijo := 80;
        
    elsif Botones(1) = '1' then
        next_state <= S2;
        coste_fijo := 100;
    elsif Botones(2) = '1' then
    
        next_state <= S3;
        coste_fijo := 50;
    elsif Botones(3) = '1' then
        next_state <= S0;
     elsif Botones(4) = '1' then
        next_state <= S4;
     end if;
  end if;
     
  Coste_i <= coste_fijo ;  
   
 end process;
 
 output_decod: process (current_state, Coste_i)
 begin
    LIGHT <= (OTHERS => '0');
 case current_state is
     when S0 =>
        LIGHT(0) <= '1';
       -- salida <= "00000000";
     when S1 => -- FANTA
        LIGHT(1) <= '1';
       -- Coste_i <= Coste_i + 80;
        --salida <= "00110010";
           
     when S2 => -- PEPSI
        LIGHT(2) <= '1';
        --Coste_i <= Coste_i + 100;
       --salida <= "01010000";
     when S3 => -- AGUA
        LIGHT(3) <= '1';
        --Coste_i <= Coste_i + 50;
       -- salida <= "01100100";
      when S4 => -- Producto Seleccionado
         LIGHT(1) <= '1';
         LIGHT(2) <= '1';
         LIGHT(3) <= '1';
      if (Coste_i = 100) then
         LIGHT(10) <= '1';
      elsif (Coste_i = 80) then
         LIGHT(9) <= '1';
       elsif (Coste_i = 50) then
         LIGHT(8) <= '1';
       elsif (Coste_i = 0) then
         LIGHT(7) <= '1';
    end if;
         
      if (Coste_i < 25) then
         LIGHT(15) <= '0';
         LIGHT(14) <= '0';
         LIGHT(13) <= '0';
         LIGHT(12) <= '1';
       elsif (Coste_i < 90) then
         LIGHT(15) <= '0';
         LIGHT(14) <= '0';
         LIGHT(13) <= '1';
         LIGHT(12) <= '1';
       elsif(Coste_i < 100) then
         LIGHT(15) <= '0';
         LIGHT(14) <= '1';
         LIGHT(13) <= '1';
         LIGHT(12) <= '1';
       elsif (Coste_i < 200) then
         LIGHT(15) <= '1';
         LIGHT(14) <= '1';
         LIGHT(13) <= '1';
         LIGHT(12) <= '1';
       
       
       end if;
         
       
     when others =>
        LIGHT <= (OTHERS => '0');
 end case;
    --Coste <= Coste_i;
 end process;
 end behavioral;
