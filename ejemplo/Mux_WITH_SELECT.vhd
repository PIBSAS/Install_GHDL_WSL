library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity Mux_WITH_SELECT is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Mux_WITH_SELECT;

architecture Behavioral of Mux_WITH_SELECT is

begin
	With C select
	Y <= A when '0',
		B when others;
end Behavioral;