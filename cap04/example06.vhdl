-- Write the VHDL code that implements a 4:1 MUX using a single selected signal assignment statement. The inputs to the MUX are data inputs D3, D2, D1, D0 and a two-input control bus SEL. The single output is MX OUT.

architecture mux4_1_impl_select of mux4_1 is
begin
  with SEL select
    MX_OUT <= D3 when "11",
              D2 when "10",
              D1 when "01",
              D0 when "00",
              '0' when others;
end mux4_1_impl_select;
