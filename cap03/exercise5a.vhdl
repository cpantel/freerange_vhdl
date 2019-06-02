-- Provide black-box diagrams that are defined by the following VHDL entity declarations:

-- a)

library IEEE;
use IEEE.std_logic_1164.all;

entity ckt_c is
port (
   bun_a, bun_b, bun_c : in  std_logic_vector(7 downto 0);
   lda, ldb, ldc       : in  std_logic;
   reg_a, reg_b, reg_c : out std_logic_vector(7 downto 0));
end ckt_c;

--            +-------+
-- bun_a -/8->|       |
-- bun_b -/8->|       |-/8-> reg_a
-- bun_c -/8->| ckt_c |-/8-> reg_b
--   lda ---->|       |-/8-> reg_c
--   ldb ---->|       |
--   ldc ---->|       |
--            +-------+

