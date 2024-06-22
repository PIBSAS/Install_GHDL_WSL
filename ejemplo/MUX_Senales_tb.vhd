library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use	IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX_Senales_TB is
end MUX_Senales_TB;

architecture Behavioral of MUX_Senales_TB is

component MUX_Senales is
	port ( A, B, C : in std_logic;
		   Y : out std_logic);
end component;

signal C, B, A, Y : STD_LOGIC := '0';

begin

dut : MUX_Senales port map(
					  C => C,
					  B => B,
					  A => A,
					  Y => Y);

Stimulus: process
begin
		C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end Behavioral;