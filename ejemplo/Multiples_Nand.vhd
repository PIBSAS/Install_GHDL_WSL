library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Multiples_Nand is
	port ( A : in std_logic_vector (3 downto 0);
		   B : in std_logic_vector (3 downto 0);
		   Y : out std_logic_vector (3 downto 0));
end Multiples_Nand;

architecture Behavioral of Multiples_Nand is

begin
	Y <= not (A and B);
end Behavioral;