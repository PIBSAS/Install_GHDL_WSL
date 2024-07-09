--  A testbench for Full_Adder_Tocci_Pag_322_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity Full_Adder_Tocci_Pag_322_tb is
end Full_Adder_Tocci_Pag_322_tb;

architecture behav of Full_Adder_Tocci_Pag_322_tb is
  component main
    port (
      A: in std_logic;
      B: in std_logic;
      C_IN: in std_logic;
      S: out std_logic;
      C_SAL: out std_logic);
  end component;

  signal A : std_logic;
  signal B : std_logic;
  signal C_IN : std_logic;
  signal S : std_logic;
  signal C_SAL : std_logic;
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
    C_IN => C_IN,
    S => S,
    C_SAL => C_SAL );
  process
    type pattern_type is record
      A : std_logic;
      B : std_logic;
      C_IN : std_logic;
      S : std_logic;
      C_SAL : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0'), -- i=0
      ('0', '0', '1', '1', '0'), -- i=1
      ('0', '1', '0', '1', '0'), -- i=2
      ('0', '1', '1', '0', '1'), -- i=3
      ('1', '0', '0', '1', '0'), -- i=4
      ('1', '0', '1', '0', '1'), -- i=5
      ('1', '1', '0', '0', '1'), -- i=6
      ('1', '1', '1', '1', '1'));
  begin
    for i in patterns'range loop
      A <= patterns(i).A;
      B <= patterns(i).B;
      C_IN <= patterns(i).C_IN;
      wait for 10 ns;
      assert std_match(S, patterns(i).S) OR (S = 'Z' AND patterns(i).S = 'Z')
        report "wrong value for S, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).S) & ", found " & std_logic'image(S) severity error;assert std_match(C_SAL, patterns(i).C_SAL) OR (C_SAL = 'Z' AND patterns(i).C_SAL = 'Z')
        report "wrong value for C_SAL, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).C_SAL) & ", found " & std_logic'image(C_SAL) severity error;end loop;
    wait;
  end process;
end behav;
