-- generated by Digital. Don't modify this file!
-- Any changes will be lost if this file is regenerated.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity main is
  port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    D: in std_logic;
    Y: out std_logic);
end main;

architecture Behavioral of main is
begin
  Y <= ((NOT A OR NOT B) AND (NOT A OR D) AND (NOT B OR C) AND (NOT B OR D) AND (C OR D));
end Behavioral;
