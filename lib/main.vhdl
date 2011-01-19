library ieee ;
  use ieee.std_logic_1164.all ;
  use ieee.numeric_std.all ;
  use ieee.std_logic_unsigned.all;

entity adder is
  port (
    X,Y : IN std_logic_vector(3 downto 0);
    RESULT, C : OUT std_logic_vector(3 downto 0)
  ) ;
end entity ; -- adder

architecture arch of adder is

begin

end architecture ; -- arch