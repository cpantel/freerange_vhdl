-- Provide a VHDL model of an 8-input AND gate using concurrent, conditional and selected signal assignment.

--           +-------+
-- d_in -/8->| and_e |---> d_out
--           +-------+

library IEEE;
use IEEE.std_logic.all;

entity and_e is
port(
  d_in  : in  std_logic_vector(7 downto 0);
  d_out : out std_logic
);
end;

architecture and_impl_csa of and_e is
begin
  d_out <= d_in(0) and d_in(1) and d_in(2) and d_in(3) and d_in(4) and d_in(5) and d_in(6)  and d_in(7);
end and_impl_csa;

architecture and_impl_cond of and_e is
begin
  d_out <= '1' when d_in = "11111111" else
           '0' when others;

end and_impl_cond;

architecture and_impl_sel of and_e is
begin
  with d_in select
    d_out <= '1' when "11111111",
             '0' when others;
end and_impl_sel;
