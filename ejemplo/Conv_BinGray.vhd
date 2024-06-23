library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Conv_BinGray is
	generic (n : integer := 8); --Extraida esta linea de: https://www.secs.oakland.edu/~llamocca/Tutorials/VHDLFPGA/Unit%208.pdf
	port ( B : in std_logic_vector ((n-1) downto 0);
		   G : out std_logic_vector ((n-1) downto 0));
end Conv_BinGray;

architecture Behavioral of Conv_BinGray is

signal IG : std_logic_vector ((n-1) downto 0);

begin
	IG((n-2) downto 0) <= B((n-1) downto 1) xor B((n-2) downto 0);
	IG(n-1) <= B(n-1);
	G <= IG;
end Behavioral;