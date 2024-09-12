library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Test1_vhd is
end Test1_vhd;

architecture bahavior of Test1_vhd is
-- Component Declaration for the Unit Under Test (UUT)
	component Divisor_Frecuencia_Parametrizado
		port ( CL, f : in std_logic;
			   Q : out std_logic);
	end component;
-- Inputs
	signal CL : STD_LOGIC := '1';
	signal f : STD_LOGIC := '0';
-- Outputs
	signal Q: STD_LOGIC;

begin
-- Instancia la Unit Under Test (UUT) o Design Under Test (DUT)
	uut : Divisor_Frecuencia_Parametrizado port map(
		CL => CL,
		f => f,
		Q => Q
	);

-- Describo la señal de reloj de 10MHz
	f <= not f after 50 ns;

-- Dentro del process describo 2 pulsos de CLEAR asincrónico
	process
	begin
	wait for 375 ns;
	Cl <= '0';
	wait for 4400 ns;
	Cl <= '1';
	wait for 200 ns;
	Cl <= '0';
	--   wait for 200 ns; -- Tiempo agregado para que ghdl -r no quede esperando indefinidamente
	wait;
	end process;
end;