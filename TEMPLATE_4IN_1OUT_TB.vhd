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
	port ( A, B, C, D : in std_logic;
		   Z : out std_logic);
end component;

signal D, C, B, A, Z : STD_LOGIC := '0';

begin

dut : TEMPLATE port map(
					  D => D,
					  C => C,
					  B => B,
					  A => A,
					  Z => Z);

Stimulus: process
begin
		D <= '0'; C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end RTL;