library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Funcion_Boole is
	port (C : in STD_LOGIC;
		  B	: in STD_LOGIC;
		  A	: in STD_LOGIC;
		  Z : out STD_LOGIC);
end Funcion_Boole;

architecture RTL of Funcion_Boole is

begin

	Z <= (not B and A) or (not C and A) or (C and B and not A);
	
end RTL;