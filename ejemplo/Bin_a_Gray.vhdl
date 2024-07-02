-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    D: in std_logic;
    C: in std_logic;
    B: in std_logic;
    A: in std_logic;
    Z: out std_logic;
    Y: out std_logic;
    W: out std_logic;
    X: out std_logic;
    Z1: out std_logic;
    Y0: out std_logic;
    W0: out std_logic;
    X0: out std_logic);
end main;

architecture Behavioral of main is
  signal s0: std_logic;
  signal s1: std_logic;
begin
  s0 <= NOT C;
  s1 <= NOT B;
  Y <= (D XOR C);
  W <= (C XOR B);
  X <= (B XOR A);
  Y0 <= ((NOT D AND C) OR (D AND s0));
  W0 <= ((s0 AND B) OR (C AND s1));
  X0 <= ((s1 AND A) OR (B AND NOT A));
  Z <= D;
  Z1 <= D;
end Behavioral;
