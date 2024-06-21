library IEEE;
use IEEE.std_logic_1164.all;
 
entity AND_GATE is
port (A,B : in std_logic;
        Z : out std_logic);
end AND_GATE;
 
architecture RTL of AND_GATE is
begin
  Z <= A and B;
end RTL;