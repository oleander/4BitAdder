library ieee ;
  use ieee.std_logic_1164.all ;
  use ieee.numeric_std.all ;
  use ieee.std_logic_unsigned.all;

entity main is
  port (
    a,b : IN std_logic_vector(3 downto 0);
    cin : IN std_logic;
    s   : OUT std_logic_vector(3 downto 0);
    cut : OUT std_logic
  ) ;
end entity ; -- adder

architecture arch of main is
  signal sum : std_logic_vector(4 downto 0);
  signal adjust: std_logic;
  signal save: std_logic_vector(3 downto 0);
begin
  sum <= ('0' & a) + ('0' & b) + cin;
  adjust <= '1' when sum > 9 else '0';
  
  -- Writing to outgoing port
  sum <= sum when (adjust = '0') else sum + 6;
  s <= sum(3 downto 0);
  
  -- Writing the carry to outgoing port
  cut <= adjust;
end architecture ; -- arch
