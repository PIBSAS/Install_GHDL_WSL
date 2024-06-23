library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Mux_buffer is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Mux_buffer;

architecture Behavioral of Mux_buffer is

begin
	Y <= A when C = '0' else 'Z';
	Y <= B when C = '1' else 'Z';
end Behavioral;