-- Provide a VHDL model of an 8:1 MUX using conditional signal assignment and selected signal assignment.

--           +-----+
-- d_in -/8->| mux |---> d_out
-- sel  -/3->|     |
--           +-----+


library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
port (
  d_in  : in  std_logic_vector(7 downto 0);
  sel   : in  std_logic_vector(2 downto 0);
  d_out : out std_logic
);
end;

architecture mux_cond of mux is
begin
  d_out <= d_in(0) when sel = "000" else
           d_in(1) when sel = "001" else
           d_in(2) when sel = "010" else
           d_in(3) when sel = "011" else
           d_in(4) when sel = "100" else
           d_in(5) when sel = "101" else
           d_in(6) when sel = "110" else
           d_in(7) when sel = "111" else
           '0' when others;
end mux_cond;

architecture mux_sel of mux is
begin
  with sel select
    d_out <= d_in(0) when "000",
             d_in(1) when "001",
             d_in(2) when "010",
             d_in(3) when "011",
             d_in(4) when "100",
             d_in(5) when "101",
             d_in(6) when "110",
             d_in(7) when "111",
             '0' when others;

end mux_sel;
