-- Write the VHDL code to implement the function expressed in Example 2. Use only conditional signal assignment statements in your VHDL code.


architecture my_f3_impl_conditional of my_f3 is
begin
F3 <=  '1' when ( L = '0' and M = '0' and N = '1') else 
       '1' when ( L = '1' and M = '1' ) else 
       '0'
end my_f3_impl_conditional;