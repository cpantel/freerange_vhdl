
--       +-----+
-- A --->|     |
-- B --->| fun |---> F_OUT
-- C --->|     |
--      +-----+

library IEEE;
use IEEE.std_logic.all;

entity fun is
port(
  A,B,C : in  std_logic;
  F_OUT : out std_logic
);
end fun;

architecture fun_impl_if of fun is
begin
   
   fun_box: process(A,B,C) is
   begin
      if ( A = '1' and B = '0' and C = '0') ) then  
         F_OUT <= '1';
      elsif ( B = '1' and C = '1') then
         F_OUT <= '1';
      else 
         F_OUT <= '0';
      end if;

   end process fun_box;
end fun_impl_if;

