library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(B, A : in std_logic; Z : out std_logic);
end or_gate;

architecture RTL of or_gate is
begin
	Z <= B or A;
end RTL;