-- Concurrent signal assignment

-- a)

architecture impl of spec is
begin
  F <= not A and B or A or A and not B;
end impl;

--===============================================================================

-- b)

architecture impl of spec is
begin
  F <= not A and C and not D or not B and C or B and C and not D;
end impl;

-- ===============================================================================

-- c)

architecture impl of spec is
begin
  F <= (not A or B ) and (not B or C or not D) and (not A or D);
end impl;

-- ===============================================================================

-- d)

architecture impl of spec is
begin
  F <= (not A or not B or C or not D ) and
       (not A or not B or C or     D ) ;
end impl;

-- ===============================================================================

-- e)

architecture impl of spec is
begin
  F <= (not A or not B or     C) and 
       (not A or     B or     C) and 
       (    A or not B or not C) and 
       (    A or not B or     C);
end impl;

-- ===============================================================================

-- f)

architecture impl of spec is
begin
  F <= (not A and not B and not C and     D ) or
       (not A and not B and     C and not D );
end impl;
