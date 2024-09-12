library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Divisor_Frecuencia_Parametrizado is
Generic (Div: integer := 16); --Escribo parametro del divisor;
	port ( CL, f : in std_logic;
		   Q : out std_logic);
end Divisor_Frecuencia_Parametrizado;

architecture Behavioral of Divisor_Frecuencia_Parametrizado is

signal TS : std_logic;
signal contador : integer range 0 to (Div/2) := 0;

-- VHDL permite plantear operaciones de productos, cocientes y potenciacion, es por esto que agregamos: use ieee.numeric_std.all; ;
-- Para un divisor por 16....Div/2 = 8;
 
begin
process (CL, f)
begin
	if (CL ='1') then
		TS <= '0';
		contador <= 0;
	elsif rising_edge(f) then
		if (contador = ((div/2) - 1)) then
			--Para un divisor por 16;
			--Cuenta "contador" de 0 a 7;
			TS <= NOT(TS);
			contador <= 0;
		else
			contador <= contador + 1;
		end if;
	end if;

Q <= TS;

end process;

end Behavioral;