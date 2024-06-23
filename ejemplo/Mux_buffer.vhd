library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Mux_buffer is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end Mux_buffer;

architecture Behavioral of Mux_buffer is

begin
	Y <= A when C = '0' else 'Z';
	Y <= B when C = '1' else 'Z';
end Behavioral;