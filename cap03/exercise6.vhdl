--The following two entity declarations contain two of the most common syntax errors made in VHDL. What are they?

-- a)
entity ckt_a is
port (
  J,K : in  std_logic;
  CLK : in  std_logic
  Q   : out std_logic;)
end ckt_a;


entity ckt_a is
port (
  J,K : in  std_logic;
  CLK : in  std_logic    -- missing ;
  Q   : out std_logic;) -- swapped ;)
end ckt_a;



--  b)
entity ckt_b is
port (
  mr_fluffy : in  std_logic_vector(15 downto 0);
  mux_ctrl  : in  std_logic_vector(3 downto 0);
  byte_out  : out std_logic_vector(3 downto 0);
end ckt_b;

entity ckt_b is
port (
  mr_fluffy : in  std_logic_vector(15 downto 0);
  mux_ctrl  : in  std_logic_vector(3 downto 0);
  byte_out  : out std_logic_vector(3 downto 0)
-- missing )
; 
end ckt_b;