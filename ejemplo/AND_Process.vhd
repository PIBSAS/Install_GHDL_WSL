library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity AND_Process is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end AND_Process;

architecture Behavioral of AND_Process is

begin
	process (A, B, C)
	begin
		if A = '1' and B = '1' and C = '1' then
			Y <= '1';
		end if;
	end process;

end Behavioral;