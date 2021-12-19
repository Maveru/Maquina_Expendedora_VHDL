

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FSM_tb is
end FSM_tb;

architecture Bench of FSM_tb is

   signal Botones       : std_logic_vector(4 downto 0);
   signal clk, RESET    : std_logic;
    
   signal LIGHT          : std_logic_vector(0 to 15);
   signal  salida       : std_logic_vector(7 downto 0);
   
    component FSM
        Port(
             RESET : in std_logic;
             CLK   : in std_logic;
             Botones : in std_logic_vector(4 downto 0);
             LIGHT : out std_logic_vector(0 TO 15);
             salida : out std_logic_vector(7 downto 0) 
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
    Botones(2) <= '1'; -- 50 centimos
    wait for CLK_IN_PERIOD;
    Botones(2) <= '0'; 
    wait for CLK_IN_PERIOD*0.5;
    Botones(4) <= '1'; -- Entro al estado pagar
    wait for CLK_IN_PERIOD;
    Botones(4) <= '0';
  -- Pagar
    
     wait for 2*CLK_IN_PERIOD;
    Botones(0) <= '1'; --Meto moneda 20 cents
    wait for 0.85*CLK_IN_PERIOD;
    Botones(0) <= '0';
    wait for CLK_IN_PERIOD*3;
    Botones(1) <= '1'; --Meto moneda 50 cents
    wait for 2*CLK_IN_PERIOD;
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


    end process;
end Bench;









