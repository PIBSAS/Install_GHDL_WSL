library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Mux_Estructural is
	port ( A, B, C : in std_logic;
		   W : out std_logic);
end Mux_Estructural;

architecture Behavioral of Mux_Estructural is

component Comp_NAND2 is
	port(A, B : in std_logic;
		 Y : out std_logic);
end component;

signal S1, S2, S3 : std_logic;

begin
		Puerta1 : Comp_NAND2 port map (C, C, S1);
		Puerta2 : Comp_NAND2 port map (A, S1, S2);
		Puerta3 : Comp_NAND2 port map (C, B, S3);
		Puerta4 : Comp_NAND2 port map (S2, S3, W);
		
end Behavioral;