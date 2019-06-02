-- conditional and selected signal assignment.

-- a) !A C !D + !B C + B C ! D
library IEEE;
use IEEE.std_logic_1164.all;

entity spec is
port(
   A,B,C,D :  in std_logic;
   F       : out std_logic
);
end entity spec;


architecture impl of spec is
signal bundle : std_logic_vector(3 downto 0);

begin
   bundle <= ( A & B & C & D);
   with ( bundle )  select
     F  <= '1' when "0110"|"0010",
           '1' when "1010"|"1011",
           '1' when "1110",
           '0' when others;
end impl;

