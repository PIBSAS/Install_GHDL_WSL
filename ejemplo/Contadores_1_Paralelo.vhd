library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

entity Contadores_1_Paralelo is
	port ( A: in std_logic_vector (7 downto 0);
		   AN0, AN1, AN2, AN3 : out std_logic;
		   D0 : out std_logic_vector (6 downto 0));
end Contadores_1_Paralelo;

architecture Behavioral of Contadores_1_Paralelo is

signal DOX : std_logic_vector (3 downto 0);

begin
	process (A)
	variable temp : unsigned (3 downto 0);
	begin
		temp := (others => '0');
		for i in 0 to 7 loop
			case A(i) is
				when '1' => temp := temp + 1;
				when others => temp := temp;
			end case;
		end loop;
	DOX <= std_logic_vector(temp);
	end process;
	
	AN0 <= '0';
	AN1 <= '1';
	AN2 <= '1';
	AN3 <= '1';
	with DOX select
	D0 <= "0000001" when X"0",
		  "1001111" when X"1",
		  "0010010" when X"2",
		  "0000110" when X"3",
		  "1001100" when X"4",
		  "0100100" when X"5",
		  "0100000" when X"6",
		  "0001111" when X"7",
		  "0000000" when X"8",
		  "0000100" when X"9",
		  "-------" when others;

end Behavioral;