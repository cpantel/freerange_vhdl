library IEEE;
use IEEE.std_logic_1164.all;

entity mux is
port(
   Data_in : in  std_logic_vector(7 downto 0);
   SEL     : in  std_logic_vector(2 downto 0);
   CE      : in  std_logic;
   F_CTRL  : out std_logic
);
end mux;

architecture mux_impl of mux is
begin

  mux : process (Data_in, SEL, CE)
  begin
    if CE = '0' then
      F_CTRL <= '0'
    else
      if SEL = "000" then
         F_CTRL <= Data_in(0);
      elsif SEL = "001" then
       F_CTRL <= Data_in(1);
      elsif SEL = "010" then
         F_CTRL <= Data_in(2);
      elsif SEL = "011" then
         F_CTRL <= Data_in(3);
      elsif SEL = "100" then
         F_CTRL <= Data_in(4);
      elsif SEL = "101" then
         F_CTRL <= Data_in(5);
      elsif SEL = "110" then
         F_CTRL <= Data_in(6);
      elsif SEL = "111" then
         F_CTRL <= Data_in(7);
      else
         F_CTRL <= '0'
      end if;
    end if;
  end process mux;
end mux_impl;

