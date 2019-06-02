-- Provide a VHDL model of a 3:8 decoder using conditional signal assignment and selected signal assignment; consider the decoder’s outputs to be active-high.

--           +------+
-- d_in -/3->| deco |-/8-> d_out
--           +------+

library IEEE;
use IEEE.std_logic_1164.all;

entity deco is
port(
   d_in  : in  std_logic_vector(2 downto 0);
   d_out : out std_logic_vector(7 downto 1);
);
end;


architecture deco_cond of deco is
begin
  d_out <= "00000001" when d_in = "000" else
           "00000010" when d_in = "001" else
           "00000100" when d_in = "010" else
           "00001000" when d_in = "011" else
           "00010000" when d_in = "100" else
           "00100000" when d_in = "101" else
           "01000000" when d_in = "110" else
           "10000000" when d_in = "111" else
           "00000000" when others;
end;

architecture deco_sel of deco is
begin
  with d_in select
   d_out <= "00000001" when "000",
            "00000010" when "001",
            "00000100" when "010",
            "00001000" when "011",
            "00010000" when "100",
            "00100000" when "101",
            "01000000" when "110",
            "10000000" when "111",
            "00000000" when others;
end;
