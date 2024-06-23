library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Compuerta_AND_Process is
	port ( C, B, A : in std_logic;
		   Y : out std_logic);
end Compuerta_AND_Process;

architecture Behavioral of Compuerta_AND_Process is

begin
	process (A, B, C)
	begin
		Y <= A and B and C;
	end process;

end Behavioral;