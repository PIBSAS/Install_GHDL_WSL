library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity Funcion_Simplificada_cero is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Funcion_Simplificada_cero;

architecture Behavioral of Funcion_Simplificada_cero is

begin
	Y <= not( (not (C and not b)) and (not (B and not A)) and (not (not C and B)));
end Behavioral;