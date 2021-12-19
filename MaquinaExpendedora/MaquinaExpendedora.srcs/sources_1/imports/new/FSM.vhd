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
     type STATES is (S0, S1, S2, S3, S4, S5,S6); -- S1 FANTA 80CENTS / S2 PEPSi 100 CENTS / S3 AGUA 50 CENTS / S4 SELECCIÓN PRODUCTO / S5 IMPORTE CORRECTO / s6 EXCESO DE DINERO
     signal current_state: STATES := S0;
     signal next_state: STATES;
     signal Coste_i: integer:=0;
     signal coste_fijo: integer:=0;  -- Varia al meter monedas
     signal coste_prod: integer:=0;  -- Valor fijo del producto seleccionado, servira para comparar
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
    
if current_state = S4 then
    if (coste_fijo = 0) then
       next_state <= S5;
    elsif (coste_fijo < 0) then
       next_state <= S6;
    elsif Botones(0) = '1' then
        coste_fijo <= coste_fijo -20;
    elsif Botones(1) = '1' then
         coste_fijo <= coste_fijo -50;
    elsif Botones(2) = '1' then
         coste_fijo <= coste_fijo -100;
    
    end if;

elsif current_state = S5 then
       
       --   COMPLETAR
       
elsif current_state = S6 then

     --   COMPLETAR
     
     
else 
    if Botones(0) = '1' then
        next_state <= S1;
        coste_fijo <= 80;
        coste_prod <= 80;
        
    elsif Botones(1) = '1' then
        next_state <= S2;
        coste_fijo <= 100;
        coste_prod <= 100;
        
    elsif Botones(2) = '1' then
    
        next_state <= S3;
        coste_fijo <= 50;
        coste_prod <= 50;
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
        salida <= "00000000";
     when S1 => -- FANTA
        LIGHT(1) <= '1';
        salida <= "00110010";
           
     when S2 => -- PEPSI
        LIGHT(2) <= '1';
       salida <= "01010000";
     when S3 => -- AGUA
        LIGHT(3) <= '1';
        salida <= "01100100";
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
       elsif (Coste_i = 25) then
         LIGHT(7) <= '1';
       elsif (Coste_i = 0) then
         LIGHT(6) <= '1';
         
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
     when S5 =>             -- Estado de importe correcto , falta poner temporizador simulando entrega de producto
         LIGHT(5) <= '1';
      when S6 =>             -- Estado de importe incorrecto , falta poner temporizador simulando devolucion dinero
         LIGHT(4) <= '1';
         LIGHT(3) <= '1';
     when others =>
        LIGHT <= (OTHERS => '0');
 end case;
    --Coste <= Coste_i;
 end process;
 end behavioral;
