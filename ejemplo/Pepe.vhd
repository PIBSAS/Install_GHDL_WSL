library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity Pepe is
	port ( D, C, B, A : in std_logic;
		   Q, S : out std_logic);
end Pepe;

architecture Behavioral of Pepe is

begin
	Q <= D or C;
	S <= B and A;
end Behavioral;