library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

entity MUX_Senales is
	port ( B, A, C : in std_logic;
		   Y : out std_logic);
end MUX_Senales;

architecture Behavioral of MUX_Senales is

Signal Y1, Y2 :  std_logic; --Describo todas las señales
begin
	Y <= Y1 or Y2;
	Y1 <= not C and A;
	Y2 <= C and B;
	-- Las 3 asignaciones simples se ejecutan al mismo tiempo
end Behavioral;