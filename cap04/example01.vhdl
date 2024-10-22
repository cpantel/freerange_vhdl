-- Write the VHDL code that implements a three-input NAND gate. The three input signals are named A, B and C and the output signal name is F.

--       +-----------+
-- A --->|           |
-- B --->| threeNAND |---> F
-- C --->|           |
--       +-----------+

library IEEE;
use IEEE.std_logic_1164.all;

entity threeNAND is
port (
  A,B,C : in  std_logic;
  F     : out std_logic
);

architecture threeNAND_impl of threeNAND is
begin
   F <= not (A and B and C);
end threeNAND_impl;
