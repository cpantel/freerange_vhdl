-- conditional signal assignment.



-- d) sum(1,2)
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
  F  <= '1' when bundle = "0001" else
        '1' when bundle = "0010" else
        '0';
end impl;

