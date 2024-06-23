library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Pepe is
	port ( D, C, B, A : in std_logic;
		   Q, S : out std_logic);
end Pepe;

architecture Behavioral of Pepe is

begin
	Q <= D or C;
	S <= B and A;
end Behavioral;