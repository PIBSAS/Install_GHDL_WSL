library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use	IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity GeneradordeParidad_4Ent_tb is
end GeneradordeParidad_4Ent_tb;

architecture RTL of GeneradordeParidad_4Ent_tb is

component GeneradordeParidad_4Ent is
	port ( A, B, C, D : in std_logic;
		   Pp : out std_logic);
end component;

signal D, C, B, A, Pp : STD_LOGIC := '0';

begin

dut : GeneradordeParidad_4Ent port map(
							  D => D,
							  C => C,
							  B => B,
							  A => A,
							  Pp => Pp);

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
end RTL;