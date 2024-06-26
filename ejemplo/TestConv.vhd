library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity TestConv is
	port ( G : in std_logic_vector (3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end TestConv;

architecture Behavioral of TestConv is

signal IB : std_logic_vector (3 downto 0);

begin
	IB(3) <= G(3);
	IB(2 downto 0) <= IB(3 downto 1) xor G(2 downto 0);
	
	B <= IB;
end Behavioral;