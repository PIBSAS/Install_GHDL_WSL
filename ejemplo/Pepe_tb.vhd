library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx

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