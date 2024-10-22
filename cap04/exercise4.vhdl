-- Provide a VHDL model of an 8-input OR gate using concurrent, conditional and selected signal assignment.

--           +------+
-- d_in -/8->| or_e |---> d_out
--           +------+


library IEEE;
use IEEE.std_logic_1164.all;

entity or_e is
port(
  d_in  : in  std_logic_vector(7 downto 0);
);
end;

architecture or_e_csa of or_e is
begin
  d_out <= d_in(0) or d_in(1) or or d_in(2) or d_in(3) or d_in(4) or d_in(5) or d_in(6) or d_in(7);

end or_e_csa;


architecture or_e_cond of or_e is
begin
  d_out <= '0' when d_in = "00000000" else
           '1' when others;
end or_e_cond;

architecture or_e_sel of or_e is
begin
  with d_in select
    d_out <= '0' when "00000000",
             '1' when others;
end or_e_sel;
