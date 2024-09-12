library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity FFD_CLR is
	port ( D, CLK, CL : in std_logic;
		   Q, QN : out std_logic);
end FFD_CLR;

architecture Behavioral of FFD_CLR is

begin

process(CL, CLK)
begin
if CL = '0' then Q <= '0'; QN <= '1';
elsif (clk' event and CLK = '1') then Q <= D; QN <= not D;
end if;
end process;
	
end Behavioral;