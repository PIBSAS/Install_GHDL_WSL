library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Mux4_OC is
	port ( hab: in std_logic_vector (3 downto 0);
		   ent: in std_logic_vector (3 downto 0);
		   sal : out std_logic);
end Mux4_OC;

architecture Behavioral of Mux4_OC is

begin
	sal <= '0' when ((hab(0) = '1') and (ent(0) = '0')) else 'H';
	sal <= '0' when ((hab(1) = '1') and (ent(1) = '0')) else 'H';
	sal <= '0' when ((hab(2) = '1') and (ent(2) = '0')) else 'H';
	sal <= '0' when ((hab(3) = '1') and (ent(3) = '0')) else 'H';
end Behavioral;