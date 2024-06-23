library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Conv_BCDNAT_BCDAiken_ConvEntero is
	port ( A : in std_logic_vector ( 3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end Conv_BCDNAT_BCDAiken_ConvEntero;

architecture Behavioral of Conv_BCDNAT_BCDAiken_ConvEntero is

type tabla is array (0 to 15) of std_logic_vector (3 downto 0);

constant MATRIZ : tabla := (X"0", X"1", X"2", X"3", X"4", X"B",
				  X"C", X"D", X"E", X"F", others => "XXXX");

begin
	B <= MATRIZ (CONV_INTEGER (A));
end Behavioral;