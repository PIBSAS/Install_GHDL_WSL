library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity TV0 is
	port ( A : in std_logic_vector (2 downto 0);
		   Y : out std_logic);
end TV0;

architecture Behavioral of TV0 is

begin
with A select -- El Bus A se comporta como un vector concatenado
Y <= '1' when "001"|"011"|"110"|"111",
	'0' when others;

end Behavioral;