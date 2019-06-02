-- Concurrent signal assignment


-- e)
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
  F <= (not A or not B or     C) and
       (not A or     B or     C) and
       (    A or not B or not C) and
       (    A or not B or     C);
end impl;

