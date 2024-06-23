library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Multiples_Nand_Generic is
-- En esta descripción defino el tamaño de los buses utilizando GENERIC.
--GENERIC define una constante [n] que representa un numero entero.
--En este caso n := 4 - Variando el valor de [n] varia el tamaño de los buses.
generic (n: integer := 4);
	port ( A, B : in std_logic_vector ((n-1) downto 0);
		   Y : out std_logic_vector ((n-1) downto 0));
end Multiples_Nand_Generic;

architecture Behavioral of Multiples_Nand_Generic is

begin
	Y <= not (A and B);
end Behavioral;