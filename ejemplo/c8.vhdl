-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c8 is
  port (
    D: in std_logic;
    C: in std_logic;
    B: in std_logic;
    A: in std_logic;
    Y: out std_logic;
    X: out std_logic;
    W: out std_logic);
end c8;

architecture Behavioral of c8 is
  signal s0: std_logic;
  signal s1: std_logic;
begin
  Y <= (A OR D);
  s1 <= NOT D;
  s0 <= NOT A;
  X <= (s0 AND s1);
  W <= ((s0 AND NOT C AND s1) OR (s0 AND NOT B AND NOT C) OR (NOT B AND s1));
end Behavioral;
