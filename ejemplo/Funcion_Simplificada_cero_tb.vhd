library IEEE;
use IEEE.Std_logic_1164.all;
--use IEEE.Numeric_Std.all;

entity Funcion_Simplificada_cero_tb is
end;

architecture bench of Funcion_Simplificada_cero_tb is

  component Funcion_Simplificada_cero
  	port ( A, B, C : in std_logic;
  		   Y : out std_logic);
  end component;

  signal A, B, C: std_logic;
  signal Y: std_logic;

begin

  uut: Funcion_Simplificada_cero port map ( A => A,
                                       B => B,
                                       C => C,
                                       Y => Y );

  stimulus: process
  begin
  
    -- Put initialisation code here
		
		C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		wait;

    -- Put test bench stimulus code here

    wait;
  end process;


end;
  