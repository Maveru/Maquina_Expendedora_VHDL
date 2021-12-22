
--Simulation Time 10000us


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FSM_tb is
end FSM_tb;

architecture Bench of FSM_tb is

   signal Botones       : std_logic_vector(4 downto 0);
   signal clk, RESET    : std_logic;
    
   signal   end_timer  :  std_logic:='0';                  
   signal   money_ok   :  std_logic;                        
   signal   delivering :  std_logic;  
   signal   error      :  std_logic;     
   
   signal  LIGHT        : std_logic_vector(0 to 15);
   signal  salida       : std_logic_vector(7 downto 0);
   
    component FSM
        Port(
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
 
end component;

 constant CLK_IN_PERIOD  : time := 100 us; -- Periodo reloj de la placa

begin
  -- Unit Under Test
  uut: FSM
    --generic map(
      --  CLKIN_FREQ => 10_000
    --)
    port map (
      clk               => clk,
      RESET             => RESET,
      Botones           => Botones,
      LIGHT             => LIGHT,
      delivering        => delivering,
      money_ok          => money_ok,
      error             => error,
      end_timer         => end_timer,
      salida            => salida
    );

  clkgen: process
  begin
    clk <= '1';
    wait for 0.5 * CLK_IN_PERIOD;
    clk <= '0';
    wait for 0.5 * CLK_IN_PERIOD;
  end process;

tester : process
    begin
   
  -- Seleccion de la bebida   
    Botones <= "00000";
    wait for CLK_IN_PERIOD;
    Botones(0) <= '1'; -- 80 centimos
    wait for CLK_IN_PERIOD;
    Botones(0) <= '0'; -- 80 centimos
    wait for CLK_IN_PERIOD*0.5;
    Botones(1) <= '1'; -- 100 centimos
    wait for CLK_IN_PERIOD;
    Botones(1) <= '0';
    wait for CLK_IN_PERIOD*0.5;
    Botones(2) <= '1'; -- 50 centimos
    wait for CLK_IN_PERIOD;
    Botones(2) <= '0'; -- 50 centimos
    wait for CLK_IN_PERIOD*0.5;
    Botones(3) <= '1'; -- Vuelvo al inicio
    wait for CLK_IN_PERIOD;
    Botones(3) <= '0';
    wait for CLK_IN_PERIOD*0.5;
    Botones(1) <= '1'; -- 50 centimos
    wait for CLK_IN_PERIOD;
    Botones(1) <= '0'; 
    wait for CLK_IN_PERIOD*0.5;
    Botones(4) <= '1'; -- Entro al estado pagar
    wait for CLK_IN_PERIOD;
    Botones(4) <= '0';
  -- Pagar
    
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
    wait for CLK_IN_PERIOD*0.75;
    Botones(1) <= '1'; --Meto moneda 50 cents
    wait for 0.7*CLK_IN_PERIOD;
    Botones(1) <= '0';
     wait for CLK_IN_PERIOD*1.25;
    Botones(1) <= '1'; --Meto moneda 50 cents
    wait for 1.36*CLK_IN_PERIOD;
    Botones(1) <= '0';
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 0.85*CLK_IN_PERIOD;
--    Botones(0) <= '0';
--    wait for CLK_IN_PERIOD*0.5;
--    Botones(0) <= '1'; --Meto moneda 20 cents
--    wait for 2*CLK_IN_PERIOD;
--    Botones(0) <= '0';

    wait for 5*CLK_IN_PERIOD;
    
    end_timer <= '1';
    wait for 1.5 *CLK_IN_PERIOD;
    end_timer <= '0';  -- TERMINA EL CASO DE IMPORTE CORRECTO
    wait for 5*CLK_IN_PERIOD;
    
    assert false
      report "[SUCCESS]: simulation finished."
      severity failure;
    
    end process;
end Bench;















