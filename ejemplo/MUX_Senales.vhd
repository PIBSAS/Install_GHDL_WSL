library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity MUX_Senales is
	port ( B, A, C : in std_logic;
		   Y : out std_logic);
end MUX_Senales;

architecture Behavioral of MUX_Senales is

Signal Y1, Y2 :  std_logic; --Describo todas las señales
begin
	Y <= Y1 or Y2;
	Y1 <= not C and A;
	Y2 <= C and B;
	-- Las 3 asignaciones simples se ejecutan al mismo tiempo
end Behavioral;