library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity TestFFJK is
	port ( Res, CLK, J, K : in std_logic;
		   Q, QN: out std_logic);
end TestFFJK;

architecture Behavioral of TestFFJK is

signal temp: std_logic;

begin

process (CLK, Res)
begin
	if Res = '0' then temp <= '0';
	elsif (CLK' event and CLK ='1') then
	temp <= (J and not temp) or (not K and temp);
	end if;

Q <= temp;
QN <= not temp;

end process;
	
end Behavioral;