-- conditional and selected signal assignment.

-- ===============================================================================
-- b) (!A + B )    ( !B + C + !D )     (!A + D)
--    (!A || B) && ( !B || C || !D) && ( !A || D)

-- A B C D
-- 0 0 0 0   1
-- 0 0 0 1   1
-- 0 0 1 0   1
-- 0 0 1 1   1
-- 0 1 0 0   1
-- 0 1 0 1   0
-- 0 1 1 0   1
-- 0 1 1 1   1
-- 1 0 0 0   0
-- 1 0 0 1   0
-- 1 0 1 0   0
-- 1 0 1 1   0
-- 1 1 0 0   0
-- 1 1 0 1   0
-- 1 1 1 0   0
-- 1 1 1 1   1

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
   F  <= '0' when A = '1' and B = '0' else
         '0' when B = '1' and C = '0' and D = '1' else
         '0' when A = '1' and D = '0' else
         '1';
end impl;

