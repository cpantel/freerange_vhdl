-- conditional

-- a) !A C !D + !B C + B C ! D
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
    F  <= '1' when A = '1' and C = '1' and D = '0' else
          '1' when B = '0' and C = '1' else
          '1' when B = '1' and C = '1' and D = '0' else
          '0';
end impl;

