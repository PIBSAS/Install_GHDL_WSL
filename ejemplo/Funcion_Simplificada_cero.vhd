library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Funcion_Simplificada_cero is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Funcion_Simplificada_cero;

architecture Behavioral of Funcion_Simplificada_cero is

begin
	Y <= not( (not (C and not b)) and (not (B and not A)) and (not (not C and B)));
end Behavioral;