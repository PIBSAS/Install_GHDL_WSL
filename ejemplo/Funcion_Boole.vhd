library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use	IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Funcion_Boole is
	port (C : in STD_LOGIC;
		  B	: in STD_LOGIC;
		  A	: in STD_LOGIC;
		  Z : out STD_LOGIC);
end Funcion_Boole;

architecture RTL of Funcion_Boole is

begin

	Z <= (not B and A) or (not C and A) or (C and B and not A);
	
end RTL;