library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity fsm is
     port (
         RESET      : in std_logic;                         -- Reset de la placa 
         CLK        : in std_logic;                         -- Señal de reloj de salida del prescaler 
         Botones    : in std_logic_vector(4 downto 0);      -- Botones para cambiar de estado e introducir monedas 
         end_timer  : in std_logic:='0';                    -- Entrada que llega del temporizador para indicar que se ha terminado la cuenta
         money_ok   : out std_logic;                        -- Salida que pone a contar el temporizador cuando se mete el importe correcto o hay que devolverlo
         delivering : out std_logic;                        -- Led GREEN para indicar que se esta entregando bebida 
         error      : out std_logic;                        -- Led RED para indicar que se ha excedido el importe. Se devuelve el dinero
         LIGHT      : out std_logic_vector(0 TO 15);        -- LEDS para saber que bebida se ha seleccionado
         salida     : out std_logic_vector(7 downto 0)      -- Info que va a los displays
     );
end fsm;

architecture behavioral of fsm is
     type STATES is (S0, S1, S2, S3, S4, S5, S6, S7, S8);   -- S1 FANTA 80CENTS / S2 PEPSi 100 CENTS / S3 AGUA 50 CENTS / S4 INTODUCIR DINERO /
                                                            -- S5 IMPORTE CORRECTO / S6 EXCESO DE DINERO / S7 DEVOLVIENDO DINERO / S8 ENTREGANDO PROD                                                    
                                                        
     signal current_state: STATES := S0;                    -- Estado actual
     signal next_state: STATES;                             -- Estado siguiente
     signal Coste_i: integer;                            -- Señal auxiliar para guardar importe restante por introducir
     signal coste_rest: integer:=1000;                         -- Varia al meter monedas
begin
    state_register: process (RESET, CLK)
begin

    if RESET='0' then 
        current_state <=s0;
    elsif clk'event and clk= '1' then
        current_state<=next_state;
    end if;
 end process;
 
 nextstate_decod: process (Botones, current_state, end_timer,coste_i,coste_rest) -- antes estaba coste_rest tambien
 begin
    next_state <= current_state; --si no toco nada sigo en el mismo estado
    
--     if (Coste_i = 0) then                -- Importe exacto. Se entregara bebida
--               next_state <= S5;
--            elsif (Coste_i < 0) then             -- Importe en exceso. Se devolvera importe total
--               next_state <= S6;
--    end if;
    case current_state is
         when S4 =>                             -- Producto Seleccionado. Introducimos dinero
--           if (Coste_i = 0) then                -- Importe exacto. Se entregara bebida
--             next_state <= S5;
--            elsif (Coste_i < 0) then             -- Importe en exceso. Se devolvera importe total
--               next_state <= S6;
--            elsif (Coste_i > 0) then
--                if Botones(0) = '1' then             -- Introducimos moneda 20 centimos
--                   coste_rest <= coste_rest-20;
--                   --next_state <= S4;            
--                elsif Botones(1) = '1' then             -- Introducimos moneda 50 centimos
--                   coste_rest <= coste_rest -50;
--                  -- next_state <= S4;
--                elsif Botones(2) = '1' then             -- Introducimos moneda 100 centimos
--                   coste_rest <= coste_rest -100;
--                   --next_state <= S4;
--                 else 
--                    coste_rest <= coste_rest ;
--                 end if;
--              end if;
            if (Coste_i = 100) then 
                if Botones(2) = '1' then
                    next_state <= S5;
                elsif Botones(0)='1' or Botones(1)='1'  then
                    next_state <= S6;
                end if;
            elsif (Coste_i = 50) then 
                if Botones(1) = '1' then
                    next_state <= S5;
                elsif Botones(0)='1' or Botones(2)='1'  then
                    next_state <= S6;
                end if;
                elsif (Coste_i = 80) then 
                if Botones(0) = '1' then
                    next_state <= S5;
                elsif Botones(1)='1' or Botones(2)='1'  then
                    next_state <= S6;
                end if;
             end if;

     when S5 =>                             -- Estado para lanzar el temporizador para entregar producto
         next_state  <= S8;
     when S6 =>                            -- Estado para lanzar el temporizador para devolver importe
         next_state  <= S7;
        
      when S7 =>
         if end_timer = '1' then             -- se termina de devolver dinero
            next_state <= S0;
        end if;
        
      when S8 => 
          if end_timer = '1' then             -- se termina de entregar bebida
            next_state <= S0;
        end if; 
   
     when others =>
        
       if Botones(0) = '1' then                -- seleccionamos fanta
            next_state <= S1;  
            Coste_i <= 80;
     --  end if;   
       elsif Botones(1) = '1' then             -- seleccionamos pepsi 
            next_state <= S2;
            Coste_i <= 100;
       end if;    
        if Botones(2) = '1' then             -- seleccionamos agua
            next_state <= S3;
            Coste_i <= 50;              -- VA 50
      --  end if;
        elsif Botones(3) = '1' then             -- volvemos a menu inicio
            next_state <= S0;
        end if;    
        if (current_state = s0) then
            if Botones(4) = '1' then             -- confirmamos seleccion de bebida
                next_state <= current_state;
            end if; 
        else 
         if Botones(4) = '1' then             -- confirmamos seleccion de bebida
                next_state <= s4;
            end if; 
         end if;
 end case;
 --Coste_i <= coste_rest ;  
 end process;
 --Coste_i <= coste_rest ; 

 
 output_decod: process (current_state, coste_i,coste_rest)
 begin
    LIGHT <= (OTHERS => '0');               -- se apagan todos los leds para que no se acumulen los de estados anteriores
 case current_state is
     when S0 =>                             -- Menu inicio
        LIGHT(0)    <= '1';             
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111011";          -- codigo para mostrar en displays "HOLA" (251 en binario)
        
     when S1 =>                             -- FANTA
        LIGHT(1)    <= '1';             
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111100";          -- codigo para mostrar en displays "FANTA" (252 en binario)
    
        
     when S2 =>                             -- PEPSI
        LIGHT(2)    <= '1';            
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111101";          -- codigo para mostrar en displays "PEPSI" (253 en binario)
       
       
     when S3 =>                             -- AGUA
        LIGHT(3)    <= '1';             
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111110";          -- codigo para mostrar en displays "AGUA" (254 en binario)
          
        
     when S4 =>                             -- Producto Seleccionado. Introducimos dinero
        LIGHT(1)   <= '1';
        LIGHT(2)   <= '1';
        LIGHT(3)   <= '1';
        delivering  <= '0';                                                     -- No se esta entregando bebida
        error       <= '0';                                                     -- No se esta devolviendo dinero
        money_ok    <= '0';                                                     -- No se lanza temporizador
        salida      <= std_logic_vector(to_unsigned(Coste_i, salida'length));   -- Se muestra en los displays el importe restante     
                        -- se convierte Coste_i (integer) en std_logic_vector

    if (Coste_i = 100) then
        LIGHT(15)   <= '1';
    elsif (Coste_i = 80) then
        LIGHT(14)   <= '1';
    elsif (Coste_i = 50) then
        LIGHT(13)   <= '1';
     elsif (Coste_i = 0) then
        LIGHT(12)   <= '1';
     elsif (Coste_i = -50) then
        LIGHT(15)   <= '1';
        LIGHT(14)   <= '1';
        elsif (Coste_i > -50) then
        LIGHT(15)   <= '1';
        LIGHT(11)   <= '1';
     
     else
         LIGHT(15)   <= '1';
          LIGHT(14)   <= '1';
           LIGHT(13)   <= '1';
            LIGHT(12)   <= '1';
      end if;



        
     when S5 =>                             -- Estado para lanzar el temporizador para entregar producto
        LIGHT(5)    <= '1';
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '1';                 -- SI se lanza temporizador
        salida      <= "11111010";          -- codigo para mostrar en displays "GRACIAS" (250 en binario)   
        
      when S6 =>                            -- Estado para lanzar el temporizador para devolver importe
        LIGHT(6)   <= '1';
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '1';                 -- SI se lanza temporizador
        salida      <= "11111111";          -- codigo para mostrar en displays "ERROR" (255 en binario)   
        
    
      when S7 =>
        delivering  <= '0';                 -- No se esta entregando bebida
        error       <= '1';                 -- SI se esta devolviendo dinero. Se enciende LED rojo
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111111";          -- codigo para mostrar en displays "ERROR" (255 en binario)  
        
            
    if (Coste_i < -100) then
        LIGHT(15)   <= '1';
    elsif (Coste_i < -50) then
        LIGHT(14)   <= '1';
    elsif (Coste_i < -20) then
        LIGHT(13)   <= '1';
    elsif (Coste_i < 0) then
        LIGHT(12)   <= '1';
    end if; 
        
      when S8 => 
        delivering  <= '1';                 -- SI se esta entregando bebida
        error       <= '0';                 -- No se esta devolviendo dinero
        money_ok    <= '0';                 -- No se lanza temporizador
        salida      <= "11111010";          -- codigo para mostrar en displays "GRACIAS" (250 en binario)   
   
        
--     when others =>
--        LIGHT <= (OTHERS => '0');
 end case;
 end process;
 
-- process(Coste_i)
-- begin
--    if (Coste_i = 100) then
--        LIGHT(15)   <= '1';
--    elsif (Coste_i = 80) then
--        LIGHT(14)   <= '1';
--    elsif (Coste_i = 50) then
--        LIGHT(13)   <= '1';
--     elsif (Coste_i = 0) then
--        LIGHT(12)   <= '1';
--     elsif (Coste_i = -50) then
--        LIGHT(15)   <= '1';
--        LIGHT(14)   <= '1';
--        elsif (Coste_i > -50) then
--        LIGHT(15)   <= '1';
--        LIGHT(11)   <= '1';
     
--     else
--         LIGHT(15)   <= '1';
--          LIGHT(14)   <= '1';
--           LIGHT(13)   <= '1';
--            LIGHT(12)   <= '1';
--      end if;
-- end process;
 end behavioral;
