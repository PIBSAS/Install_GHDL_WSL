library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity mux2c is
	port ( C, B, A : in std_logic;
		   Y : out std_logic);
end mux2c;

architecture Behavioral of mux2c is

begin
	Y <= (not C and A) or (C and B);
end Behavioral;