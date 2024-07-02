--  A testbench for 00_FPGA_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity 00_FPGA_Testbench_tb is
end 00_FPGA_Testbench_tb;

architecture behav of 00_FPGA_Testbench_tb is
  component main
    port (
      C: in std_logic;
      B: in std_logic;
      A: in std_logic;
      C0: in std_logic;
      A0: in std_logic;
      Z: out std_logic;
      Y: out std_logic;
      Z0: out std_logic;
      Y0: out std_logic);
  end component;

  signal C : std_logic;
  signal B : std_logic;
  signal A : std_logic;
  signal C0 : std_logic;
  signal A0 : std_logic;
  signal Z : std_logic;
  signal Y : std_logic;
  signal Z0 : std_logic;
  signal Y0 : std_logic;
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
    C => C,
    B => B,
    A => A,
    C0 => C0,
    A0 => A0,
    Z => Z,
    Y => Y,
    Z0 => Z0,
    Y0 => Y0 );
  process
    type pattern_type is record
      C : std_logic;
      B : std_logic;
      A : std_logic;
      Z : std_logic;
      Y : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0'), -- i=0
      ('0', '0', '1', '1', '1'), -- i=1
      ('0', '1', '0', '0', '0'), -- i=2
      ('0', '1', '1', '1', '1'), -- i=3
      ('1', '0', '0', '1', '1'), -- i=4
      ('1', '0', '1', '0', '0'), -- i=5
      ('1', '1', '0', '1', '1'), -- i=6
      ('1', '1', '1', '0', '0'));
  begin
    for i in patterns'range loop
      C <= patterns(i).C;
      B <= patterns(i).B;
      A <= patterns(i).A;
      C0 <= patterns(i).C0;
      A0 <= patterns(i).A0;
      wait for 10 ns;
      assert std_match(Z, patterns(i).Z) OR (Z = 'Z' AND patterns(i).Z = 'Z')
        report "wrong value for Z, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Z) & ", found " & std_logic'image(Z) severity error;assert std_match(Y, patterns(i).Y) OR (Y = 'Z' AND patterns(i).Y = 'Z')
        report "wrong value for Y, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y) & ", found " & std_logic'image(Y) severity error;assert std_match(Z0, patterns(i).Z0) OR (Z0 = 'Z' AND patterns(i).Z0 = 'Z')
        report "wrong value for Z0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Z0) & ", found " & std_logic'image(Z0) severity error;assert std_match(Y0, patterns(i).Y0) OR (Y0 = 'Z' AND patterns(i).Y0 = 'Z')
        report "wrong value for Y0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y0) & ", found " & std_logic'image(Y0) severity error;end loop;
    wait;
  end process;
end behav;
