--The following two entity declarations contain two of the most common syntax errors made in VHDL. What are they?

-- a)

library IEEE;
use IEEE.std_logic_1164.all;

-- entity ckt_a is
-- port (
--   J,K : in  std_logic;
--   CLK : in  std_logic       -- missing ;
--  Q   : out std_logic;)      -- swapped ;)
-- end ckt_a;


entity ckt_a is
port (
  J,K : in  std_logic;
  CLK : in  std_logic;
  Q   : out std_logic);
end ckt_a;

