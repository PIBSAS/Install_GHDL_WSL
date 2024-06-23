library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Multiples_Nand is
	port ( A : in std_logic_vector (3 downto 0);
		   B : in std_logic_vector (3 downto 0);
		   Y : out std_logic_vector (3 downto 0));
end Multiples_Nand;

architecture Behavioral of Multiples_Nand is

begin
	Y <= not (A and B);
end Behavioral;