--  A testbench for c4_ej7_Y_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c4_ej7_Y_tb is
end c4_ej7_Y_tb;

architecture behav of c4_ej7_Y_tb is
  component main
    port (
      A: in std_logic;
      B: in std_logic;
      C: in std_logic;
      Y: out std_logic);
  end component;

  signal A : std_logic;
  signal B : std_logic;
  signal C : std_logic;
  signal Y : std_logic;
  function to_string ( a: std_logic_vector) return string is
      variable b : string (1 to a'length) := (others => NUL);
      variable stri : integer := 1; 
  begin
      for i in a'range loop
          b(stri) := std_logic'image(a((i)))(2);
      stri := stri+1;
      end loop;
      return b;
  end function;
begin
  main_0 : main port map (
    A => A,
    B => B,
    C => C,
    Y => Y );
  process
    type pattern_type is record
      C : std_logic;
      B : std_logic;
      A : std_logic;
      Y : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '1'), -- i=0
      ('0', '0', '1', '1'), -- i=1
      ('0', '1', '0', '0'), -- i=2
      ('0', '1', '1', '1'), -- i=3
      ('1', '0', '0', '1'), -- i=4
      ('1', '0', '1', '1'), -- i=5
      ('1', '1', '0', '1'), -- i=6
      ('1', '1', '1', '1'));
  begin
    for i in patterns'range loop
      A <= patterns(i).A;
      B <= patterns(i).B;
      C <= patterns(i).C;
      wait for 10 ns;
      assert std_match(Y, patterns(i).Y) OR (Y = 'Z' AND patterns(i).Y = 'Z')
        report "wrong value for Y, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y) & ", found " & std_logic'image(Y) severity error;end loop;
    wait;
  end process;
end behav;
