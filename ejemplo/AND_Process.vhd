library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity AND_Process is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end AND_Process;

architecture Behavioral of AND_Process is

begin
	process (A, B, C)
	begin
		if A = '1' and B = '1' and C = '1' then
			Y <= '1';
		end if;
	end process;

end Behavioral;