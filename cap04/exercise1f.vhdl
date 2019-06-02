-- Concurrent signal assignment


-- f)
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
  F <= (not A and not B and not C and     D ) or
       (not A and not B and     C and not D );
end impl;

