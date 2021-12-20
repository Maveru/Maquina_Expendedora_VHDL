----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.12.2021 18:48:18
-- Design Name: 
-- Module Name: timer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity timer is
-- temporizador usado para contar el tiempo que se tarda en devolver importe 

-- incorrecto o entregar el producto solicitado. En ambos casos, t=5s.
    generic(
        delay	  : integer := 5;        -- Temporizador de 5 segundos    
        frec_in   : integer := 1000      -- Frecuencia de salida del prescaler
    );
    port(
        clk          : in std_logic;     -- Entrada de reloj (viene del prescaler)
        reset        : in std_logic;     -- Boton de reset de la placa
        start_temp   : in std_logic;     -- La fsm actica el temporizador al llegar al estado correspondiente
        end_temp	 : out std_logic:='0'    -- Indica fin del temporizador
    );
end timer;

architecture Behavioral of timer is
    signal ticks : integer;                 -- Señal para la cuenta regresiva del temporizador
begin
  end_temp <= '1' when ticks = 0 else '0';     
  process(clk, reset, start_temp) is
  begin
        if reset = '1' then -- ver 0 o 1 !!!!!
            ticks <=  -1; -- Si lo pongo a 0 cumple la condicion de que se ha terminado el temporizador!
        elsif rising_edge(clk) then
            if start_temp = '1' then
       	        ticks <= delay * frec_in;   -- Al ser la frecuencia de entrada 1000Hz y estar contando hasta 5000,
       	                                    -- se consigue crear un temporizador de 5 segundos. Se actualiza este valor 
       	                                    -- cuando llega la señal correspondiente de la maquina de estados.
            elsif ticks /= 0 then
                ticks <= ticks - 1;         -- En cada flanco de reloj se resta una unidad
 	        end if;          
        end if;        
  end process; 
end Behavioral;
