library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx
 
entity TB_AND_GATE is
end TB_AND_GATE;
 
architecture TEST of TB_AND_GATE is
  component AND_GATE
    port (A, B : in std_logic;
             Z : out std_logic);
    end component;
 
  signal W_A, W_B, W_Z : std_logic;
 
begin
  DUT : AND_GATE
    port map(A => W_A,
             B => W_B,
             Z => W_Z);
 
  STIMULI : process
  begin
    W_A <= '0';
    W_B <= '0';
    wait for 10 ns;
 
    W_A <= '1';
    wait for 10 ns;
 
    W_B <= '1';
    wait for 10 ns;
 
    W_B <= '0';
    wait for 10 ns;
 
    wait;
  end process STIMULI;
end TEST;
 
configuration CFG_TB_AND_GATE of TB_AND_GATE is
  for TEST
  end for;
end CFG_TB_AND_GATE;