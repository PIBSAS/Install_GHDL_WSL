--  A testbench for c8_BIN_a_XS3_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c8_BIN_a_XS3_Testbench_tb is
end c8_BIN_a_XS3_Testbench_tb;

architecture behav of c8_BIN_a_XS3_Testbench_tb is
  component c8_BIN_a_XS3
    port (
      B3: in std_logic;
      B2: in std_logic;
      B1: in std_logic;
      B0: in std_logic;
      Y: out std_logic);
  end component;

  signal B3 : std_logic;
  signal B2 : std_logic;
  signal B1 : std_logic;
  signal B0 : std_logic;
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
  c8_BIN_a_XS3_0 : c8_BIN_a_XS3 port map (
    B3 => B3,
    B2 => B2,
    B1 => B1,
    B0 => B0,
    Y => Y );
  process
    type pattern_type is record
      B3 : std_logic;
      B2 : std_logic;
      B1 : std_logic;
      B0 : std_logic;
      Y : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '1'), -- i=0
      ('0', '0', '0', '1', '1'), -- i=1
      ('0', '0', '1', '0', '1'), -- i=2
      ('0', '0', '1', '1', '0'), -- i=3
      ('0', '1', '0', '0', '0'), -- i=4
      ('0', '1', '0', '1', '0'), -- i=5
      ('0', '1', '1', '0', '0'), -- i=6
      ('0', '1', '1', '1', '0'), -- i=7
      ('1', '0', '0', '0', '0'), -- i=8
      ('1', '0', '0', '1', '0'), -- i=9
      ('1', '0', '1', '0', '0'), -- i=10
      ('1', '0', '1', '1', '0'), -- i=11
      ('1', '1', '0', '0', '0'), -- i=12
      ('1', '1', '0', '1', '1'), -- i=13
      ('1', '1', '1', '0', '1'), -- i=14
      ('1', '1', '1', '1', '1'));
  begin
    for i in patterns'range loop
      B3 <= patterns(i).B3;
      B2 <= patterns(i).B2;
      B1 <= patterns(i).B1;
      B0 <= patterns(i).B0;
      wait for 10 ns;
      assert std_match(Y, patterns(i).Y) OR (Y = 'Z' AND patterns(i).Y = 'Z')
        report "wrong value for Y, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).Y) & ", found " & std_logic'image(Y) severity error;end loop;
    wait;
  end process;
end behav;
