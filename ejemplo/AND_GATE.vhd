library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all; --Es propietaria de Xilinx
--use ieee.std_logic_unsigned.all; --Es propietaria de Xilinx
--use ieee.numeric_std.all; --Ambas se reemplazan con se reemplaza con: use ieee.numeric_std.all
-- compilar con ghdl -s --std=08 --ieee=synopsys archivo.vhd si usamos las bibliotecas de Xilnx
 
entity AND_GATE is
port (A,B : in std_logic;
        Z : out std_logic);
end AND_GATE;
 
architecture RTL of AND_GATE is
begin
  Z <= A and B;
end RTL;