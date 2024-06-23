library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Mux_CASE_Process is
	port ( A, B : in std_logic_vector (3 downto 0);
		   C : std_logic;
		   Y : out std_logic_vector (3 downto 0));
end Mux_CASE_Process;

architecture Behavioral of Mux_CASE_Process is

begin
	process (A, B, C)
	begin
		case C is
			when '0' => Y <= A;
			when others => Y <= B;
		end case;
	end process;

end Behavioral;