library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Conv_NatAiken_FlujodeDatos is
	port ( A : in std_logic_vector (3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end Conv_NatAiken_FlujodeDatos;

architecture Behavioral of Conv_NatAiken_FlujodeDatos is

begin
	--B <= A when A < 5 else A + 6; --Falla
	B <= A when unsigned(A) < 5 else std_logic_vector(unsigned(A) + 6); --Agregado para que se pueda usar el Standard ieee.numeric_std.all
end Behavioral;