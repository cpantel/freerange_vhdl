-- Provide black-box diagrams that are defined by the following VHDL entity declarations:


-- b)

library IEEE;
use IEEE.std_logic_1164.all;

entity ckt_e is
port (
   RAM_CS, RAM_WE, RAM_OE : in  std_logic;
   SEL_OP1, SEL_OP2       : in  std_logic_vector(3 downto 0);
   RAM_DATA_IN            : in  std_logic_vector(7 downto 0);
   RAM_ADDR_IN            : in  std_logic_vector(9 downto 0);
   RAM_DATA_OUT           : out std_logic_vector(7 downto 0));
end ckt_e;


--                   +-------+
--      RAM_CS ----->|       |
--      RAM_WE ----->|       |
--      RAM_OE ----->| ckt_c |
--     SEL_OP1 -/4-->|       |-/8-> RAM_DATA_OUT
--     SEL_OP2 -/4-->|       |
-- RAM_DATA_IN -/8-->|       |
-- RAM_ADRR_IN -/10->|       |
--                   +-------+

