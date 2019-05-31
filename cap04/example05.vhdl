-- Write VHDL code to implement the function expressed by the following logic equation: 

-- F3 = !L·!M ·N +L·M .

-- Use only selected signal assignment statements in your VHDL code.


architecture my_f3_impl_selected of my_f3 is

begin
  with ( L = '0' and M = '0' and N = '1' or L = '1' or M = '1') select
    F3 <= '1' when '1',
          '0' when '0',
          '0' when others; 
end my_f3_impl_selected;
