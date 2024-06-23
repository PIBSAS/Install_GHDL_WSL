library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity GeneradordeParidad_4Ent is
	port ( A, B, C, D : in std_logic;
		   Pp : out std_logic);
end GeneradordeParidad_4Ent;

architecture Behavioral of GeneradordeParidad_4Ent is

begin
	Pp <= D xor C xor B xor A;
end Behavioral;