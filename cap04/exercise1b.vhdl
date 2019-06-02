-- Concurrent signal assignment

-- b)
library IEEE;
use IEEE.std_logic_1164.all;

entity spec is
port(
   A,B,C,D :  in std_logic;
   F       : out std_logic
);
end spec;
architecture impl of spec is
begin
  F <= (not A and C and not D ) or ( not B and C ) or ( B and C and not D );
end impl;

