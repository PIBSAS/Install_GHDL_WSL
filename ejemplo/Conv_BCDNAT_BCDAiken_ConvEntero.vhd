library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Conv_BCDNAT_BCDAiken_ConvEntero is
	port ( A : in std_logic_vector ( 3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end Conv_BCDNAT_BCDAiken_ConvEntero;

architecture Behavioral of Conv_BCDNAT_BCDAiken_ConvEntero is

type tabla is array (0 to 15) of std_logic_vector (3 downto 0);

constant MATRIZ : tabla := (X"0", X"1", X"2", X"3", X"4", X"B",
				  X"C", X"D", X"E", X"F", others => "XXXX");
 
begin
	--B <= MATRIZ (CONV_INTEGER (A)); --Falla
	B <= MATRIZ(to_integer(unsigned(A))); --Agregado para que se pueda usar el Standard ieee.numeric_std.all A debe ser signado o no, ya que eso requiere el metodo to_integer
end Behavioral;