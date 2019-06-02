-- selected signal assignment.

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
signal bundle : std_logic_vector(3 downto 0);
begin
     bundle <= A & B & C & D;
     with ( bundle ) select
        F  <= '0' when "1000"|"1001"|"1010"|"1011",
              '0' when "0101"|"1101",
              '0' when "1100"|"1110", -- 1000 and 1010 repeated...
              '1' when others;
end impl;

