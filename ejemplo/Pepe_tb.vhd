library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use	IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Pepe_tb is
end Pepe_tb;

architecture Bahavioral of Pepe_tb is

component Pepe is
	port ( D, C, B, A : in std_logic;
		   Q, S : out std_logic);
end component;

signal D, C, B, A, Q, S : STD_LOGIC := '0';

begin

dut : Pepe port map(
					  D => D,
					  C => C,
					  B => B,
					  A => A,
					  Q => Q,
					  S => S);

Stimulus: process
begin
		D <= '0'; C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '0'; C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '0'; B <= '1'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '0'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '0'; A <='1'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '1'; A <='0'; wait for 100 ns;
		D <= '1'; C <= '1'; B <= '1'; A <='1'; wait for 100 ns;
		wait;

end process;
end Bahavioral;