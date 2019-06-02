-- Concurrent signal assignment



-- c)
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
  F <= (not A or B ) and (not B or C or not D) and (not A or D);
end impl;

