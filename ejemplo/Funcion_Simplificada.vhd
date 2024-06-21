library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Funcion_Simplificada is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Funcion_Simplificada;

architecture Behavioral of Funcion_Simplificada is

begin
	Y <= (not C or not B or not A) and (C or B);
end Behavioral;