library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Buffer_3_Estados is
	port ( A, E : in std_logic;
		   W : out std_logic);
end Buffer_3_Estados;

architecture Behavioral of Buffer_3_Estados is

begin
	with E select
		W <= A when '1',
		'Z' when others;
end Behavioral;