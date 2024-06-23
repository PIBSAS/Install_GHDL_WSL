library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Buffer_3_Estados is
	port ( A, E : in std_logic;
		   W : out std_logic);
end Buffer_3_Estados;

architecture Behavioral of Buffer_3_Estados is

begin
	with E select
		W <= A when '1',
		'Z' when others;
end Behavioral;