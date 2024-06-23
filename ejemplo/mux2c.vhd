library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity mux2c is
	port ( C, B, A : in std_logic;
		   Y : out std_logic);
end mux2c;

architecture Behavioral of mux2c is

begin
	Y <= (not C and A) or (C and B);
end Behavioral;