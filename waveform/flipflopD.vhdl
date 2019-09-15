library IEEE;
use IEEE.std_logic_1164.all;
entity d_ff is
port(
  CLK, D :  in std_logic;
  Q   : out std_logic );
end d_ff;

architecture d_ff_arch of d_ff is
begin
  dff: process(CLK)
  begin
    if (rising_edge(CLK)) then
      Q <= D;
    end if;
  end process;
end d_ff_arch;
