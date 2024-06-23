library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity TV_ejemplo is
	port ( A : in std_logic_vector ( 3 downto 0);
		   Y : out std_logic);
end TV_ejemplo;

architecture Behavioral of TV_ejemplo is

Signal VectorEntrada : std_logic_vector (3 downto 0);

begin
	with A select
	Y <= '1' when "0010"|"0110"|"0111"|"1000"|"1001"|"1101",
		 '0' when "1110"|"1111",
		 '-' when others;
end Behavioral;