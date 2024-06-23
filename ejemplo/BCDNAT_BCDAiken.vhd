library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity BCDNAT_BCDAiken is
	port ( A : in std_logic_vector ( 3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end BCDNAT_BCDAiken;

architecture Behavioral of BCDNAT_BCDAiken is

begin
	with A select
	B <= X"0" when X"0",
		 X"1" when X"1",
		 X"2" when X"2",
		 X"3" when X"3",
		 X"4" when X"4",
		 X"B" when X"5",
		 X"C" when X"6",
		 X"D" when X"7",
		 X"E" when X"8",
		 X"F" when X"9",
		 "----" when others;

end Behavioral;