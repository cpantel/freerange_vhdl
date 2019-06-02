--The following two entity declarations contain two of the most common syntax errors made in VHDL. What are they?


library IEEE;
use IEEE.std_logic_1164.all;

--  b)
-- entity ckt_b is
-- port (
--   mr_fluffy : in  std_logic_vector(15 downto 0);
--   mux_ctrl  : in  std_logic_vector(3 downto 0);
--   byte_out  : out std_logic_vector(3 downto 0);  -- missing )
-- end ckt_b;

entity ckt_b is
port (
  mr_fluffy : in  std_logic_vector(15 downto 0);
  mux_ctrl  : in  std_logic_vector(3 downto 0);
  byte_out  : out std_logic_vector(3 downto 0)
);
end ckt_b;
