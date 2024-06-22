library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use	IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TEMPLATE_TB is
end TEMPLATE_TB;

architecture RTL of TEMPLATE_TB is

component TEMPLATE is
	port (B	: in STD_LOGIC;
		  A	: in STD_LOGIC;
		  Z : out STD_LOGIC);
end component;

signal B, A, Z : STD_LOGIC := '0';

begin

OBJTEMPLATE : TEMPLATE port map(
							  B => B,
							  A => A,
							  Z => Z);

Stimulus: process
begin
		B <= '0'; A <='0'; wait for 100 ns;
		B <= '0'; A <='1'; wait for 100 ns;
		B <= '1'; A <='0'; wait for 100 ns;
		B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end RTL;