library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Generador_Hamming is
	port ( A: in std_logic_vector (3 downto 0);
		   S : out std_logic_vector (6 downto 0));
end Generador_Hamming;

architecture Behavioral of Generador_Hamming is

signal p1, p2, p3 : std_logic;
signal SS : std_logic_vector (6 downto 0);

begin
	-- Calculamos las Paridades de acuerdo a la Matriz de Generación
	p1 <= (A(2) xor A(1) xor A(0));
	p2 <= (A(3) xor A(2) xor A(1));
	p3 <= (A(3) xor A(1) xor A(0));
	SS <= A & p1 & p2 & p3; --Concateno la señal SS que genera 7 bits en el Transmisor.
	S  <= SS; --Llevo la señal SS a la salida del Transmisor (S).
end Behavioral;