-- conditional and selected signal assignment.

-- a) !A C !D + !B C + B C ! D

architecture impl of spec is
begin
    F3 <= '1' when A = '1' and C = '1' and D = '0' else
          '1' when B = '0' and C = '1' else
          '1' when B = '1' and C = '1' and D = '0' else
          '0' when others;
end impl;

-------------------------------------------------------------------------------
architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);

begin
   bundle <= ( A & B & C & D);
   with ( bundle )  select
     F3 <= '1' when "0110"|"0010",
           '1' when "0010"|"0011"|"1010"|"1011",
           '1' when "0110"|"1110";
end impl;

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



architecture impl of spec is
begin
   F3 <= '0' when A = '1' and B = '0' else 
         '0' when B = '1' and C = '0' and D = '1' else 
         '0' when A = '1' and D = '0' else
         '1' when others;
end impl;

-------------------------------------------------------------------------------

architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);
begin
     bundle <= A & B & C & D;
     with ( bundle ) select
        F3 <= '0' when "1000"|"1001"|"1010"|"1011",
              '0' when "0101"|"1101",
              '0' when "1000"|"1010"|"1100"|"1110", -- 1000 and 1010 repeated...
              '1' when others;
end impl;

===============================================================================

c) mul(3,2)

architecture impl of spec is
begin


end impl;

-------------------------------------------------------------------------------

architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);
begin
  bundle = A & B & C & D;
  with ( bundle ) select

  
  
end impl;

===============================================================================

d) sum(1,2)

architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);
begin
  bundle = A & B & C & D;
  F3 <= '1' when bundle = "0001" else
        '1' when bundle = "0010" else
        '0' when others;
end impl;

-------------------------------------------------------------------------------

architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);
begin
  bundle = A & B & C & D;
  with bundle select 
  F3 <= '1' when "0001"|"0010",
        '0' when others;
end impl;