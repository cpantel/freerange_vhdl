-- Write VHDL entity declarations that describe the following black-box diagrams:

-- a)
--             +------+
--    a_in1--->|      |
--    b_in2--->| sys1 |---> out_b
--      clk--->|      |
-- ctrl_int--->|      |
--             +------+

library IEEE;
use IEEE.std_logic_1164.all;

entity sys1 is
port (
  a_in1    : in  std_logic;
  b_in2    : in  std_logic;
  clk      : in  std_logic;
  ctrl_int : in  std_logic;
  out_b    : out std_logic
);
end sys1;

