-- Provide a VHDL model of a 3:8 decoder using conditional signal assignment and selected signal assignment; consider the decoders outputs to be active-low.

--           +------+
-- d_in -/3->| deco |-/7-> d_out
--           +------+

library IEEE;
use IEEE.std_logic_1164.all;

entity exercise7 is
port(
   d_in  : in  std_logic_vector(2 downto 0);
   d_out : out std_logic_vector(7 downto 0)
);
end;


architecture deco_cond of exercise7 is
begin
  d_out <= "11111110" when d_in = "000" else
           "11111101" when d_in = "001" else
           "11111011" when d_in = "010" else
           "11110111" when d_in = "011" else
           "11101111" when d_in = "100" else
           "11011111" when d_in = "101" else
           "10111111" when d_in = "110" else
           "01111111" when d_in = "111" else
           "11111111";
end;

architecture deco_sel of exercise7 is
begin
  with d_in select
   d_out <= "11111110" when "000",
            "11111101" when "001",
            "11111011" when "010",
            "11110111" when "011",
            "11101111" when "100",
            "11011111" when "101",
            "10111111" when "110",
            "01111111" when "111",
            "11111111" when others;   
end;
