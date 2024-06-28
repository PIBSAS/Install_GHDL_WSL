--  A testbench for c8_Comparador_2bits_Simplificacion_unos_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c8_Comparador_2bits_Simplificacion_unos_Testbench_tb is
end c8_Comparador_2bits_Simplificacion_unos_Testbench_tb;

architecture behav of c8_Comparador_2bits_Simplificacion_unos_Testbench_tb is
  component main
    port (
      D: in std_logic;
      C: in std_logic;
      B: in std_logic;
      A: in std_logic;
      Z: out std_logic);
  end component;

  signal D : std_logic;
  signal C : std_logic;
  signal B : std_logic;
  signal A : std_logic;
  signal Z : std_logic;
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
    Z => Z );
  process
    type pattern_type is record
      D : std_logic;
      C : std_logic;
      B : std_logic;
      A : std_logic;
      Z : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0'), -- i=0
      ('0', '0', '0', '1', '0'), -- i=1
      ('0', '0', '1', '0', '0'), -- i=2
      ('0', '0', '1', '1', '0'), -- i=3
      ('0', '1', '0', '0', '1'), -- i=4
      ('0', '1', '0', '1', '0'), -- i=5
      ('0', '1', '1', '0', '0'), -- i=6
      ('0', '1', '1', '1', '0'), -- i=7
      ('1', '0', '0', '0', '1'), -- i=8
      ('1', '0', '0', '1', '1'), -- i=9
      ('1', '0', '1', '0', '0'), -- i=10
      ('1', '0', '1', '1', '0'), -- i=11
      ('1', '1', '0', '0', '1'), -- i=12
      ('1', '1', '0', '1', '1'), -- i=13
      ('1', '1', '1', '0', '1'), -- i=14
      ('1', '1', '1', '1', '0'));
  begin
    for i in patterns'range loop
      D <= patterns(i).D;
      C <= patterns(i).C;
      B <= patterns(i).B;
      A <= patterns(i).A;
      wait for 10 ns;
      assert std_match(Z, patterns(i).Z) OR (Z = 'Z' AND patterns(i).Z = 'Z')
        report "wrong value for Z, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Z) & ", found " & std_logic'image(Z) severity error;end loop;
    wait;
  end process;
end behav;
