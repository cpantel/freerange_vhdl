-- Write the VHDL code that implements the following circuit.
-- The circuit contains an input bundle of four signals and an output bundle of three signals.
-- The input bundle, D IN, represents a 4-bit binary number.
-- The output bus, SZ OUT, is used to indicate the magnitude of the 4-bit binary input number.
-- The relationship between the input and output is shown in the table below.

-- Use a selected signal assignment statement in the solution.

-- range of D IN     SZ OUT
-- 0000 -> 0011       100
-- 0100 -> 1001       010
-- 1010 -> 1111       001
-- unknown value     000

--           +-----+
-- D_IN -/4->| mag |-/3-> SZ_OUT
--           +-----+


entity mag is
port(
  D_IN   : in  std_logic_vector (3 downto 0);
  SZ_OUT : out std_logic_vector (2 downto 0)
);
end;

architecture mag_impl of mag is

begin
  with D_IN select
     SZ_OUT <= "100" when "0000"|"0001"|"0010"|"0011",
               "010" when "0100"|"0101"|"0110"|"0111"|"1000"|"1001",
               "001" when "1010"|"1011"|"1100"|"1101"|"0110"|"1111",
               "000" when others;
end mag_impl;
