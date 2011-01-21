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

architecture adder of main is
  signal sum : std_logic_vector(4 downto 0);
  signal i: std_logic_vector(4 downto 0);
begin
  -- Doing some complex calculations
  sum <= ('0' & a) + b + cin;
  
  -- What should the carry be set to ?
  cut <= '1' when (sum > 9) else '0';
  
  -- Writing to outgoing port - VHDL-style
  i <= sum when sum <= 9 else (sum + 6);
  s <= i(3 downto 0);
end architecture ; -- arch