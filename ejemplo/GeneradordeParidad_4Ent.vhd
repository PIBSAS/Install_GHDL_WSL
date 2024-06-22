library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity GeneradordeParidad_4Ent is
	port ( A, B, C, D : in std_logic;
		   Pp : out std_logic);
end GeneradordeParidad_4Ent;

architecture Behavioral of GeneradordeParidad_4Ent is

begin
	Pp <= D xor C xor B xor A;
end Behavioral;