library ieee;
use ieee.std_logic_1164.all;

use std.textio.all;


entity stdout_test is
end stdout_test;

architecture behaviour of stdout_test is
begin
  process
    variable outbuffer : line;
    variable bus32     : std_logic_vector(31 downto 0);
  begin
    write (outbuffer, String'("Linea de texto y valores separados" ));
    writeline (output, outbuffer);
    write (outbuffer, Integer'(42));
    writeline (output, outbuffer);
    write (outbuffer, Boolean'(true));
    writeline (output, outbuffer);
    
    write (outbuffer, String'("Texto y valores combinados: Integer: " ));
    write (outbuffer, Integer'(42));
    write (outbuffer, String'(" Boolean : " ));
    write (outbuffer, Boolean'(true));
    writeline (output, outbuffer);


    wait;
  end process;
end behaviour;


