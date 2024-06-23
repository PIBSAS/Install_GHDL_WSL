library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity Compuerta_AND_Process is
	port ( C, B, A : in std_logic;
		   Y : out std_logic);
end Compuerta_AND_Process;

architecture Behavioral of Compuerta_AND_Process is

begin
	process (A, B, C)
	begin
		Y <= A and B and C;
	end process;

end Behavioral;