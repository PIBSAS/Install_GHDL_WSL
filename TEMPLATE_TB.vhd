library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity TEMPLATE_TB is
end TEMPLATE_TB;

architecture RTL of TEMPLATE_TB is

component TEMPLATE is
	port (B	: in STD_LOGIC;
		  A	: in STD_LOGIC;
		  Z : out STD_LOGIC);
end component;

signal B, A, Z : STD_LOGIC := '0';

begin

OBJTEMPLATE : TEMPLATE port map(
							  B => B,
							  A => A,
							  Z => Z);

Stimulus: process
begin
		B <= '0'; A <='0'; wait for 100 ns;
		B <= '0'; A <='1'; wait for 100 ns;
		B <= '1'; A <='0'; wait for 100 ns;
		B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end RTL;