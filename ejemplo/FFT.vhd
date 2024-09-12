library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity FFT is
	port ( T, CL, CLK : in std_logic;
		   Q : buffer std_logic);
end FFT;

architecture Behavioral of FFT is

begin
process (CLK)

begin
	if CL = '0' then Q <= '0';
	elsif (CLK' event and CLK = '1') then
	Q <= T XOR Q;
	end if;
end process;
	
end Behavioral;