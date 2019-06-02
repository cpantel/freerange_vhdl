-- Concurrent signal assignment



-- d)
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
  F <= (not A or not B or C or not D ) and
       (not A or not B or C or     D ) ;
end impl;

