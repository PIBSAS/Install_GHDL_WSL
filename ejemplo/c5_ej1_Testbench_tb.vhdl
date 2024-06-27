--  A testbench for c5_ej1_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c5_ej1_Testbench_tb is
end c5_ej1_Testbench_tb;

architecture behav of c5_ej1_Testbench_tb is
  component c5_ej1
    port (
      d: in std_logic;
      c: in std_logic;
      b: in std_logic;
      a: in std_logic;
      z: out std_logic);
  end component;

  signal d : std_logic;
  signal c : std_logic;
  signal b : std_logic;
  signal a : std_logic;
  signal z : std_logic;
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
  c5_ej1_0 : c5_ej1 port map (
    d => d,
    c => c,
    b => b,
    a => a,
    z => z );
  process
    type pattern_type is record
      d : std_logic;
      c : std_logic;
      b : std_logic;
      a : std_logic;
      z : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '1'), -- i=0
      ('0', '0', '0', '1', '1'), -- i=1
      ('0', '0', '1', '0', '1'), -- i=2
      ('0', '0', '1', '1', '1'), -- i=3
      ('0', '1', '0', '0', '1'), -- i=4
      ('0', '1', '0', '1', '0'), -- i=5
      ('0', '1', '1', '0', '0'), -- i=6
      ('0', '1', '1', '1', '1'), -- i=7
      ('1', '0', '0', '0', '1'), -- i=8
      ('1', '0', '0', '1', '1'), -- i=9
      ('1', '0', '1', '0', '1'), -- i=10
      ('1', '0', '1', '1', '1'), -- i=11
      ('1', '1', '0', '0', '0'), -- i=12
      ('1', '1', '0', '1', '1'), -- i=13
      ('1', '1', '1', '0', '0'), -- i=14
      ('1', '1', '1', '1', '1'));
  begin
    for i in patterns'range loop
      d <= patterns(i).d;
      c <= patterns(i).c;
      b <= patterns(i).b;
      a <= patterns(i).a;
      wait for 10 ns;
      assert std_match(z, patterns(i).z) OR (z = 'Z' AND patterns(i).z = 'Z')
        report "wrong value for z, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).z) & ", found " & std_logic'image(z) severity error;end loop;
    wait;
  end process;
end behav;
