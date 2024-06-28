--  A testbench for c8_BIN_a_BCD_Natural_Testbench_tb
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity c8_BIN_a_BCD_Natural_Testbench_tb is
end c8_BIN_a_BCD_Natural_Testbench_tb;

architecture behav of c8_BIN_a_BCD_Natural_Testbench_tb is
  component main
    port (
      B3: in std_logic;
      B2: in std_logic;
      B1: in std_logic;
      B0: in std_logic;
      BIT3: out std_logic;
      BIT2: out std_logic;
      BIT1: out std_logic;
      BIT0: out std_logic;
      bms_3: out std_logic;
      bms_2: out std_logic;
      bms_1: out std_logic;
      bms_0: out std_logic);
  end component;

  signal B3 : std_logic := '0';
  signal B2 : std_logic := '0';
  signal B1 : std_logic := '0';
  signal B0 : std_logic := '0';
  signal BIT3 : std_logic := '0';
  signal BIT2 : std_logic := '0';
  signal BIT1 : std_logic := '0';
  signal BIT0 : std_logic := '0';
  signal bms_3 : std_logic := '0';
  signal bms_2 : std_logic := '0';
  signal bms_1 : std_logic := '0';
  signal bms_0 : std_logic := '0';

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
    B3 => B3,
    B2 => B2,
    B1 => B1,
    B0 => B0,
    BIT3 => BIT3,
    BIT2 => BIT2,
    BIT1 => BIT1,
    BIT0 => BIT0,
    bms_3 => bms_3,
    bms_2 => bms_2,
    bms_1 => bms_1,
    bms_0 => bms_0 );

  process
    type pattern_type is record
      B3 : std_logic;
      B2 : std_logic;
      B1 : std_logic;
      B0 : std_logic;
      BIT3 : std_logic;
      BIT2 : std_logic;
      BIT1 : std_logic;
      BIT0 : std_logic;
      bms_3 : std_logic;
      bms_2 : std_logic;
      bms_1 : std_logic;
      bms_0 : std_logic;
    end record;
    type pattern_array is array (natural range <>) of pattern_type;
    constant patterns : pattern_array := (
      ('0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'), -- i=0
      ('0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1'), -- i=1
      ('0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0'), -- i=2
      ('0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1'), -- i=3
      ('0', '1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0'), -- i=4
      ('0', '1', '0', '1', '0', '0', '0', '0', '0', '1', '0', '1'), -- i=5
      ('0', '1', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0'), -- i=6
      ('0', '1', '1', '1', '0', '0', '0', '0', '0', '1', '1', '1'), -- i=7
      ('1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0'), -- i=8
      ('1', '0', '0', '1', '0', '0', '0', '0', '1', '0', '0', '1'), -- i=9
      ('1', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0'), -- i=10
      ('1', '0', '1', '1', '0', '0', '0', '1', '0', '0', '0', '1'), -- i=11
      ('1', '1', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0'), -- i=12
      ('1', '1', '0', '1', '0', '0', '0', '1', '0', '0', '1', '1'), -- i=13
      ('1', '1', '1', '0', '0', '0', '0', '1', '0', '1', '0', '0'), -- i=14
      ('1', '1', '1', '1', '0', '0', '0', '1', '0', '1', '0', '1'));
  begin
    for i in patterns'range loop
      B3 <= patterns(i).B3;
      B2 <= patterns(i).B2;
      B1 <= patterns(i).B1;
      B0 <= patterns(i).B0;
      wait for 10 ns;
      assert std_match(BIT3, patterns(i).BIT3) OR (BIT3 = 'Z' AND patterns(i).BIT3 = 'Z')
        report "wrong value for BIT3, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).BIT3) & ", found " & std_logic'image(BIT3) severity error;
      assert std_match(BIT2, patterns(i).BIT2) OR (BIT2 = 'Z' AND patterns(i).BIT2 = 'Z')
        report "wrong value for BIT2, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).BIT2) & ", found " & std_logic'image(BIT2) severity error;
      assert std_match(BIT1, patterns(i).BIT1) OR (BIT1 = 'Z' AND patterns(i).BIT1 = 'Z')
        report "wrong value for BIT1, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).BIT1) & ", found " & std_logic'image(BIT1) severity error;
      assert std_match(BIT0, patterns(i).BIT0) OR (BIT0 = 'Z' AND patterns(i).BIT0 = 'Z')
        report "wrong value for BIT0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).BIT0) & ", found " & std_logic'image(BIT0) severity error;
      assert std_match(bms_3, patterns(i).bms_3) OR (bms_3 = 'Z' AND patterns(i).bms_3 = 'Z')
        report "wrong value for bms_3, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).bms_3) & ", found " & std_logic'image(bms_3) severity error;
      assert std_match(bms_2, patterns(i).bms_2) OR (bms_2 = 'Z' AND patterns(i).bms_2 = 'Z')
        report "wrong value for bms_2, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).bms_2) & ", found " & std_logic'image(bms_2) severity error;
      assert std_match(bms_1, patterns(i).bms_1) OR (bms_1 = 'Z' AND patterns(i).bms_1 = 'Z')
        report "wrong value for bms_1, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).bms_1) & ", found " & std_logic'image(bms_1) severity error;
      assert std_match(bms_0, patterns(i).bms_0) OR (bms_0 = 'Z' AND patterns(i).bms_0 = 'Z')
        report "wrong value for bms_0, i=" & integer'image(i)
         & ", expected " & std_logic'image(patterns(i).bms_0) & ", found " & std_logic'image(bms_0) severity error;
    end loop;
    wait;
  end process;
end behav;
