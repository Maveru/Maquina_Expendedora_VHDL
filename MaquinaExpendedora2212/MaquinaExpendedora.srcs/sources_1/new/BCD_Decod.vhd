library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity BCD_decoder is
    -- este decodificador recibe la salida de la fsm (en binario: dinero restante por introducir, o codigo referente a pepsi 
    -- fanta o agua). Como salida se obtiene un codigo en BCD para cada digito del display (S0, S1...). Este codigo representa:
    --  000000='0'
    --  000001='1'
    --    ...
    --  001010='a'
    --  001011='b'
    --    ...
    Port (
        code_in                        : in  std_logic_vector(7 downto 0);
        S0, S1, S2, S3, S4, S5, S6, S7 : out std_logic_vector(5 downto 0)
    );
end entity;

architecture Behavioral of BCD_decoder is
    signal carac0, carac1, carac2, carac3, carac4, carac5, carac6, carac7 : std_logic_vector(5 downto 0);
    -- con tan solo 6 bits(5-0) se pueden codificar los caracteres del '0' al '9' y de la 'a' a la 'z'
begin
    decoder_BCD : process(code_in)
        variable value      : integer range 0 to 300 :=0;   -- Variable para guardar la entrada en entero
        variable cntns      : integer range 0 to 9;         -- Variable para guardar las centenas del importe que queda por introducir
        variable dcns       : integer range 0 to 9;         -- Variable para guardar las decenas del importe que queda por introducir
        variable uds        : integer range 0 to 9;         -- Variable para guardar las unidades del importe que queda por introducir
  begin
    value := to_integer(unsigned(code_in));
  
  if value < 101 then       -- caso en el que estamos introduciendo monedas (el precio mas alto es 100 centimos)
      cntns := value/100;
      dcns  := (value mod 100)/10;
      uds   := (value mod 100) mod 10;
      carac0 <= "111111";                                       -- x"FF" --> NADA
      carac1 <= std_logic_vector(to_unsigned(cntns,s1'length)); -- Centenas del importe en cents
      carac2 <= std_logic_vector(to_unsigned(dcns,s2'length));  -- Decenas del importe en cents
      carac3 <= std_logic_vector(to_unsigned(uds,S3'length));   -- Unidades del importe en cents
      carac4 <= "001100";                                       -- x"C6" --> C 
      carac5 <= "011101";                                       -- x"87" --> T 
      carac6 <= "011100";                                       -- x"92" --> S 
      carac7 <= "100110";                                       -- x"7F" --> .
    
    elsif value = 251 then -- Estado S0 - menu inicial
      carac0 <= "010001"; -- x"89" --> H 
      carac1 <= "011000"; -- x"C0" --> O 
      carac2 <= "010101"; -- x"C7" --> L 
      carac3 <= "001010"; -- x"88" --> A 
      carac4 <= "111111"; -- x"FF" --> NADA
      carac5 <= "111111"; -- x"FF" --> NADA
      carac6 <= "111111"; -- x"FF" --> NADA
      carac7 <= "111111"; -- x"FF" --> NADA
    
    elsif value = 252 then -- FANTA
      carac0 <= "001111"; -- x"8E" --> F
      carac1 <= "001010"; -- x"88" --> A
      carac2 <= "010111"; -- x"AB" --> N
      carac3 <= "011101"; -- x"87" --> T
      carac4 <= "001010"; -- x"88" --> A
      carac5 <= "111111"; -- x"FF" --> NADA
      carac6 <= "111111"; -- x"FF" --> NADA
      carac7 <= "111111"; -- x"FF" --> NADA
       
    elsif value = 253 then -- PEPSI
      carac0 <= "011001"; -- x"8C" --> P
      carac1 <= "001110"; -- x"86" --> E 
      carac2 <= "011001"; -- x"8C" --> P 
      carac3 <= "011100"; -- x"92" --> S 
      carac4 <= "010010"; -- x"CF" --> I 010010
      carac5 <= "111111"; -- x"FF" --> NADA 
      carac6 <= "111111"; -- x"FF" --> NADA 
      carac7 <= "111111"; -- x"FF" --> NADA
        
    elsif value = 254 then -- AGUA
      carac0 <= "001010"; -- x"88" --> A
      carac1 <= "010000"; -- x"90" --> G
      carac2 <= "011110"; -- x"C1" --> U
      carac3 <= "001010"; -- x"88" --> A
      carac4 <= "111111"; -- x"FF" --> NADA
      carac5 <= "111111"; -- x"FF" --> NADA
      carac6 <= "111111"; -- x"FF" --> NADA
      carac7 <= "111111"; -- x"FF" --> NADA   
                
    elsif value = 255 then -- ERROR (exceso de importe)    
      carac0 <= "001110"; -- x"86" --> E
      carac1 <= "011011"; -- x"AF" --> R       
      carac2 <= "011011"; -- x"AF" --> R 
      carac3 <= "011000"; -- x"C0" --> O
      carac4 <= "011011"; -- x"AF" --> R 
      carac5 <= "111111"; -- x"FF" --> NADA
      carac6 <= "111111"; -- x"FF" --> NADA
      carac7 <= "111111"; -- x"FF" --> NADA
      
    else                  -- Eror causa externa 
      carac0 <= "100101"; -- x"F7" --> _
      carac1 <= "100101"; -- x"F7" --> _  
      carac2 <= "100101"; -- x"F7" --> _
      carac3 <= "100101"; -- x"F7" --> _
      carac4 <= "100101"; -- x"F7" --> _
      carac5 <= "100101"; -- x"F7" --> _
      carac6 <= "100101"; -- x"F7" --> _
      carac7 <= "100101"; -- x"F7" --> _
    end if;
  end process;

  S0 <= carac0;
  S1 <= carac1;
  S2 <= carac2;
  S3 <= carac3;
  S4 <= carac4;
  S5 <= carac5;
  S6 <= carac6;
  S7 <= carac7;
end architecture;