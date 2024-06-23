library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity Mux_CASE_Process is
	port ( A, B : in std_logic_vector (3 downto 0);
		   C : std_logic;
		   Y : out std_logic_vector (3 downto 0));
end Mux_CASE_Process;

architecture Behavioral of Mux_CASE_Process is

begin
	process (A, B, C)
	begin
		case C is
			when '0' => Y <= A;
			when others => Y <= B;
		end case;
	end process;

end Behavioral;