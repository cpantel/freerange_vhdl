-- Write the VHDL code that implements a 4:1 MUX using a single conditional signal assignment statement. The inputs to the MUX are data inputs D3, D2, D1, D0 and a two-input control bus SEL. The single output is MX OUT.

--          +--------+
--  D3 ---->|        |
--  D2 ---->|        |
--  D1 ---->| mux4_1 |---> MX_OUT
--  D0 ---->|        |
-- SEL -/2->|        |
--          +--------+

library IEEE;
use IEEE.std_logic_1164.all;

entity mux4_1 is
port(
  D3,D2,D1,D0 : in  std_logic;
  SEL         : in  std_logic_vector (1 downto 0);
  MX_OUT      : out std_logic
);
end;

architecture mux4_1_impl of mux4_1 is
begin
  MX_OUT <= D3 when (SEL = "11") else
            D2 when (SEL = "10") else
            D1 when (SEL = "01") else
            D0 when (SEL = "00") else
            '0';
end mux4_1_impl;
