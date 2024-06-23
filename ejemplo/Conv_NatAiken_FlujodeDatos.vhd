library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Conv_NatAiken_FlujodeDatos is
	port ( A : in std_logic_vector (3 downto 0);
		   B : out std_logic_vector (3 downto 0));
end Conv_NatAiken_FlujodeDatos;

architecture Behavioral of Conv_NatAiken_FlujodeDatos is

begin
	B <= A when A < 5 else A+6;
end Behavioral;