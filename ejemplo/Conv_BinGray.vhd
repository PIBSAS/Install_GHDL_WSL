library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Conv_BinGray is
	port ( B : in std_logic_vector ((n-1) downto 0);
		   G : out std_logic_vector ((n-1) downto 0));
end Conv_BinGray;

architecture Behavioral of Conv_BinGray is

signal IG : std_logic_vector ((n-1) downto 0);

begin
	IG((n-2) downto 0) <= B((n-1) downto 1) xor B((n-2) downto 0);
	IG(n-1) <= B(n-1);
	G <= IG
end Behavioral;