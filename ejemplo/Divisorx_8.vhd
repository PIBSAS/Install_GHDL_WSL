library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Divisorx_8 is
	port ( CL, f : in std_logic;
		   Q : out std_logic);
end Divisorx_8;

architecture Behavioral of Divisorx_8 is

signal TS : std_logic;
signal contador : integer range 0 to 4 := 0;

begin
process (CL, f)

begin
	if CL = '1' then 
		TS <= '0';
		contador <= 0;
	elsif rising_edge(f) then
		if (contador = 3) then
			TS <= NOT(TS);
			contador <= 0;
		else
			contador <= contador +1;
		end if;
	end if;
	
Q <= TS;
end process;
	
end Behavioral;