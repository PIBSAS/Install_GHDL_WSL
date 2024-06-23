library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Funcion_Boole_tb is
end Funcion_Boole_tb;

architecture RTL of Funcion_Boole_tb is

component Funcion_Boole is
	port (C : in STD_LOGIC;
		  B	: in STD_LOGIC;
		  A	: in STD_LOGIC;
		  Z : out STD_LOGIC);
end component;

signal B, A, C, Z : STD_LOGIC := '0';

begin

BOOLE : Funcion_Boole port map(
							  C => C,
							  B => B,
							  A => A,
							  Z => Z);

Stimulus: process
begin
		C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end RTL;