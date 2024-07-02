--  A testbench for Bin_a_Gray_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Bin_a_Gray_Testbench_tb is
end Bin_a_Gray_Testbench_tb;

architecture behav of Bin_a_Gray_Testbench_tb is
  component main
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
  end component;

  signal D : std_logic;
  signal C : std_logic;
  signal B : std_logic;
  signal A : std_logic;
  signal Z : std_logic;
  signal Y : std_logic;
  signal W : std_logic;
  signal X : std_logic;
  signal Z1 : std_logic;
  signal Y0 : std_logic;
  signal W0 : std_logic;
  signal X0 : std_logic;
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
    D => D,
    C => C,
    B => B,
    A => A,
    Z => Z,
    Y => Y,
    W => W,
    X => X,
    Z1 => Z1,
    Y0 => Y0,
    W0 => W0,
    X0 => X0 );
  process
    type pattern_type is record
      D : std_logic;
      C : std_logic;
      B : std_logic;
      A : std_logic;
      Z : std_logic;
      Y : std_logic;
      W : std_logic;
      X : std_logic;
      Z1 : std_logic;
      Y0 : std_logic;
      W0 : std_logic;
      X0 : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'), -- i=0
      ('0', '0', '0', '1', '0', '0', '0', '1', '0', '0', '0', '1'), -- i=1
      ('0', '0', '1', '0', '0', '0', '1', '1', '0', '0', '1', '1'), -- i=2
      ('0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '1', '0'), -- i=3
      ('0', '1', '0', '0', '0', '1', '1', '0', '0', '1', '1', '0'), -- i=4
      ('0', '1', '0', '1', '0', '1', '1', '1', '0', '1', '1', '1'), -- i=5
      ('0', '1', '1', '0', '0', '1', '0', '1', '0', '1', '0', '1'), -- i=6
      ('0', '1', '1', '1', '0', '1', '0', '0', '0', '1', '0', '0'), -- i=7
      ('1', '0', '0', '0', '1', '1', '0', '0', '1', '1', '0', '0'), -- i=8
      ('1', '0', '0', '1', '1', '1', '0', '1', '1', '1', '0', '1'), -- i=9
      ('1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1'), -- i=10
      ('1', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '0'), -- i=11
      ('1', '1', '0', '0', '1', '0', '1', '0', '1', '0', '1', '0'), -- i=12
      ('1', '1', '0', '1', '1', '0', '1', '1', '1', '0', '1', '1'), -- i=13
      ('1', '1', '1', '0', '1', '0', '0', '1', '1', '0', '0', '1'), -- i=14
      ('1', '1', '1', '1', '1', '0', '0', '0', '1', '0', '0', '0'));
  begin
    for i in patterns'range loop
      D <= patterns(i).D;
      C <= patterns(i).C;
      B <= patterns(i).B;
      A <= patterns(i).A;
      wait for 10 ns;
      assert std_match(Z, patterns(i).Z) OR (Z = 'Z' AND patterns(i).Z = 'Z')
        report "wrong value for Z, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Z) & ", found " & std_logic'image(Z) severity error;assert std_match(Y, patterns(i).Y) OR (Y = 'Z' AND patterns(i).Y = 'Z')
        report "wrong value for Y, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y) & ", found " & std_logic'image(Y) severity error;assert std_match(W, patterns(i).W) OR (W = 'Z' AND patterns(i).W = 'Z')
        report "wrong value for W, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).W) & ", found " & std_logic'image(W) severity error;assert std_match(X, patterns(i).X) OR (X = 'Z' AND patterns(i).X = 'Z')
        report "wrong value for X, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).X) & ", found " & std_logic'image(X) severity error;assert std_match(Z1, patterns(i).Z1) OR (Z1 = 'Z' AND patterns(i).Z1 = 'Z')
        report "wrong value for Z1, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Z1) & ", found " & std_logic'image(Z1) severity error;assert std_match(Y0, patterns(i).Y0) OR (Y0 = 'Z' AND patterns(i).Y0 = 'Z')
        report "wrong value for Y0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y0) & ", found " & std_logic'image(Y0) severity error;assert std_match(W0, patterns(i).W0) OR (W0 = 'Z' AND patterns(i).W0 = 'Z')
        report "wrong value for W0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).W0) & ", found " & std_logic'image(W0) severity error;assert std_match(X0, patterns(i).X0) OR (X0 = 'Z' AND patterns(i).X0 = 'Z')
        report "wrong value for X0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).X0) & ", found " & std_logic'image(X0) severity error;end loop;
    wait;
  end process;
end behav;
