library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity BCD_decoder is
  Port (
    entrada                        : in  std_logic_vector(7 downto 0); -- Número que llega al decodificador para salir en BCD
    S0, S1, S2, S3, S4, S5, S6, S7 : out std_logic_vector(5 downto 0);  -- Cada una de las cifras en BCD que se pasan al display
    Coste                          : in integer
  );
end entity;

architecture Behavioral of BCD_decoder is
  signal letra0, letra1, letra2, letra3, letra4, letra5, letra6, letra7 : std_logic_vector(5 downto 0);
begin
  decoder_BCD : process(entrada)
    
  begin
 
  if Coste = 0 then  -- SELECCI?N
      letra0 <= "011011"; -- x"AF" --> R 
      letra1 <= "001110"; -- x"86" --> E      
      letra2 <= "001111"; -- x"8E" --> F 
      letra3 <= "011011"; -- x"AF" --> R
      letra4 <= "001110"; -- x"86" --> E  
      letra5 <= "011100"; -- x"92" --> S
      letra6 <= "001100"; -- x"C6" --> C
      letra7 <= "011000"; -- x"C0" --> O
          
    elsif Coste = 100 then -- COCACOLA
      letra0 <= "001100"; -- x"C6" --> C
      letra1 <= "011000"; -- x"C0" --> O
      letra2 <= "001100"; -- x"C6" --> C
      letra3 <= "001010"; -- x"88" --> A
      letra4 <= "001100"; -- x"C6" --> C
      letra5 <= "011000"; -- x"C0" --> O
      letra6 <= "010101"; -- x"C7" --> L
      letra7 <= "001010"; -- x"88" --> A
        
    elsif Coste = 80 then -- FANTA
      letra0 <= "001111"; -- x"8E" --> F
      letra1 <= "001010"; -- x"88" --> A
      letra2 <= "010111"; -- x"AB" --> N
      letra3 <= "011101"; -- x"87" --> T
      letra4 <= "001010"; -- x"88" --> A
      letra5 <= "111111"; -- x"FF" --> NADA
      letra6 <= "111111"; -- x"FF" --> NADA
      letra7 <= "111111"; -- x"FF" --> NADA
        
    elsif Coste = 50 then -- AGUA
      letra0 <= "001010"; -- x"88" --> A
      letra1 <= "010000"; -- x"90" --> G
      letra2 <= "011110"; -- x"E3" --> U
      letra3 <= "001010"; -- x"88" --> A
      letra4 <= "111111"; -- x"FF" --> NADA
      letra5 <= "111111"; -- x"FF" --> NADA
      letra6 <= "111111"; -- x"FF" --> NADA
      letra7 <= "111111"; -- x"FF" --> NADA   
                
    elsif Coste = 204 then -- ERROR (exceso de importe)    
      letra0 <= "001110"; -- x"86" --> E
      letra1 <= "011011"; -- x"AF" --> R       
      letra2 <= "011011"; -- x"AF" --> R 
      letra3 <= "011000"; -- x"C0" --> O
      letra4 <= "011011"; -- x"AF" --> R 
      letra5 <= "111111"; -- x"FF" --> NADA
      letra6 <= "111111"; -- x"FF" --> NADA
      letra7 <= "111111"; -- x"FF" --> NADA
      
    else                   -- ERROR (otras causas)
      letra0 <= "100101"; -- x"F7" --> _
      letra1 <= "100101"; -- x"F7" --> _  
      letra2 <= "100101"; -- x"F7" --> _
      letra3 <= "100101"; -- x"F7" --> _
      letra4 <= "100101"; -- x"F7" --> _
      letra5 <= "100101"; -- x"F7" --> _
      letra6 <= "100101"; -- x"F7" --> _
      letra7 <= "100101"; -- x"F7" --> _
    end if;
  end process;
   -- Se asigna a cada bit de la salida su letra o n?mero correspondiente
  S0 <= letra0;
  S1 <= letra1;
  S2 <= letra2;
  S3 <= letra3;
  S4 <= letra4;
  S5 <= letra5;
  S6 <= letra6;
  S7 <= letra7;
end architecture;