library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Sindrome_error_Hamming is
	port ( A: in std_logic_vector (6 downto 0);
		   Y : out std_logic_vector (3 downto 0));
end Sindrome_error_Hamming;

architecture Behavioral of Sindrome_error_Hamming is

signal V1, V2, V3 : std_logic;
signal S : std_logic_vector (2 downto 0);

begin
	-- Generamos los verificadores
	V1 <= (A(5) xor A(4) xor A(3) xor A(2));
	V2 <= (A(6) xor A(5) xor A(4) xor A(1));
	V3 <= (A(6) xor A(4) xor A(5) xor A(0));
	S <= V1 & V2 & V3; --Concatenamos la señal S para manejar el CASE

process (S, A) --Correjimos las combinaciones donde S tiene 2 unos o mas
begin
	case S is
		when "000" => Y <= A (6 downto 3);
		when "001" => Y <= A (6 downto 3);
		when "010" => Y <= A (6 downto 3);
		when "011" => Y <=(A (6 downto 3) xor "0100)"; --Usamos una mascara en cada caso
		when "100" => Y <= A (6 downto 3);
		when "101" => Y <=(A (6 downto 3) xor "0001"); --Usamos una mascara en cada caso
		when "110" => Y <=(A (6 downto 3) xor "1000"); --Usamos una mascara en cada caso
		when others => Y <= (A (6 downto 3) xor "0010"); --Usamos una mascara en cada caso
	end case;
end process;
end Behavioral;