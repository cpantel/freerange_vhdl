-- Write the VHDL code to implement the function expressed by the following logic equation: 

-- F3 = !L · !M · N + L · M

--       +-------+
-- L --->|       |  
-- M --->| my_f3 |---> F3
-- N --->|       |
--       +-------+

library IEEE;
use IEEE.std_logic_1164.all;

entity my_f3 is
port (
   L,M,N : in  std_logic;
   F3    : out std_logic
);
end;

architecture my_f3_impl of my_f3 is
begin
   F3 <= (not L and not M and N or L and M );

end my_f3_impl;


