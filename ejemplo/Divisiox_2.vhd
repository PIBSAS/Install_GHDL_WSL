library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Divisox_2 is
	port ( CL, CLK : in std_logic;
		   Q : out std_logic);
end Divisox_2;

architecture Behavioral of Divisox_2 is
signal temp, temp1: std_logic;
begin
process (CL, CLK)
begin
if CL = '0' then temp <= '0'; temp1 <= '1';
elsif (CLK' event and CLK = '0') then
		temp <= not temp;
end if;

q <= temp;
end process;
end Behavioral;