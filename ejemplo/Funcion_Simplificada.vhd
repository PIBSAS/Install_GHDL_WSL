library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Funcion_Simplificada is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Funcion_Simplificada;

architecture Behavioral of Funcion_Simplificada is

begin
	Y <= (not C or not B or not A) and (C or B);
end Behavioral;