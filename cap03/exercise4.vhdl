-- Write VHDL entity declarations that describe the following black-box diagrams:

-- a)
--             +------+
--    a_in1--->|      |
--    b_in2--->| sys1 |---> out_b
--      clk--->|      |
-- ctrl_int--->|      |
--             +------+

entity sys1 is
port (
  a_in1    : in  std_logic;
  b_in2    : in  std_logic;
  clk      : in  std_logic;
  ctrl_int : in  std_logic;
  out_b    : out std_logic
);
end sys1;


-- b) 
--             +------+
-- input_w---->|      |
--  a_data-/8->| sys2 |-/8->dat_4
--  b_data-/8->|      |-/3->dat_5
--     clk---->|      |
--             +------+

entity sys2 is
port (
  input_w : in  std_logic;
  a_data  : in  std_logic_vector(7 downto 0);
  b_data  : in  std_logic_vector(7 downto 0);
  clk     : in  std_logic;
  dat_4   : out std_logic_vector(7 downto 0);
  dat_5   : out std_logic_vector(2 downto 0)

);
end sys2;