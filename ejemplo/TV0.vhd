library ieee;
use ieee.std_logic_1164.all
--use ieee.std_logic_arith.all
--use ieee.std_logic_unsigned.all

entity TV0 is
	port ( A : in std_logic_vector (2 downto 0);
		   Y : out std_logic);

architecture Behavioral of TV0 is

begin
with A select -- El Bus A se comporta como un vector concatenado
Y <= '1' when "001"|"011"|"110"|"111",
	'0' when others;

end Behavioral;