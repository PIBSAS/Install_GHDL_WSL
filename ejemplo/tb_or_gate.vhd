library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

-- Se crea una entidad vacia
entity tb_or_gate is
end tb_or_gate;

architecture Behavioral of tb_or_gate is
-- Se copia la entidad de la descripcion creada.
-- Se coloca entre architecture y begin.
-- Se cambia la palabra entity por component y el nombre de la entidad en end por component.
component or_gate is
	port(B, A : in std_logic; Z : out std_logic);
end component;
-- Declaramos las signals del mismo tipo que las entras y salidas: std_logic.
signal B, A, Z : std_logic := '0';

begin
-- Instanciamos la unidad bajo prueba. Asignando nuestras entradas y salidas a unas segnales que debemos declarar luego del componente
ORGATE : or_gate port map(
			B => B,
			A => A,
			Z => Z);

-- Creamos el proceso llamado Stimulus
Stimulus_process: process
begin
	-- Se asigna valores a las signals con un retardo de 100 nano segundos
	-- Es pasar la TV al parecer, y se indica un wait final
	B <= '0'; A <='0'; wait for 100 ns;
	B <= '0'; A <='1'; wait for 100 ns;
	B <= '1'; A <='0'; wait for 100 ns;
	B <= '1'; A <='1'; wait for 100 ns;
	wait;

end process;
end Behavioral;
-- Final del Testbench