--  A testbench for c8_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c8_Testbench_tb is
end c8_Testbench_tb;

architecture behav of c8_Testbench_tb is
  component c8
    port (
      D: in std_logic;
      C: in std_logic;
      B: in std_logic;
      A: in std_logic;
      Y: out std_logic;
      X: out std_logic;
      W: out std_logic);
  end component;

  signal D : std_logic;
  signal C : std_logic;
  signal B : std_logic;
  signal A : std_logic;
  signal Y : std_logic;
  signal X : std_logic;
  signal W : std_logic;
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
  c8_0 : c8 port map (
    D => D,
    C => C,
    B => B,
    A => A,
    Y => Y,
    X => X,
    W => W );
  process
    type pattern_type is record
      D : std_logic;
      C : std_logic;
      B : std_logic;
      A : std_logic;
      Y : std_logic;
      X : std_logic;
      W : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0', '1', '1'), -- i=0
      ('0', '0', '0', '1', '1', '0', '1'), -- i=1
      ('0', '0', '1', '0', '0', '1', '1'), -- i=2
      ('0', '0', '1', '1', '1', '0', '0'), -- i=3
      ('0', '1', '0', '0', '0', '1', '1'), -- i=4
      ('0', '1', '0', '1', '1', '0', '1'), -- i=5
      ('0', '1', '1', '0', '0', '1', '0'), -- i=6
      ('0', '1', '1', '1', '1', '0', '0'), -- i=7
      ('1', '0', '0', '0', '1', '0', '1'), -- i=8
      ('1', '0', '0', '1', '1', '0', '0'), -- i=9
      ('1', '0', '1', '0', '1', '0', '0'), -- i=10
      ('1', '0', '1', '1', '1', '0', '0'), -- i=11
      ('1', '1', '0', '0', '1', '0', '0'), -- i=12
      ('1', '1', '0', '1', '1', '0', '0'), -- i=13
      ('1', '1', '1', '0', '1', '0', '0'), -- i=14
      ('1', '1', '1', '1', '1', '0', '0'));
  begin
    for i in patterns'range loop
      D <= patterns(i).D;
      C <= patterns(i).C;
      B <= patterns(i).B;
      A <= patterns(i).A;
      wait for 10 ns;
      assert std_match(Y, patterns(i).Y) OR (Y = 'Z' AND patterns(i).Y = 'Z')
        report "wrong value for Y, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y) & ", found " & std_logic'image(Y) severity error;assert std_match(X, patterns(i).X) OR (X = 'Z' AND patterns(i).X = 'Z')
        report "wrong value for X, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).X) & ", found " & std_logic'image(X) severity error;assert std_match(W, patterns(i).W) OR (W = 'Z' AND patterns(i).W = 'Z')
        report "wrong value for W, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).W) & ", found " & std_logic'image(W) severity error;end loop;
    wait;
  end process;
end behav;
