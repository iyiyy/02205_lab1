library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cpa24b is
port (
  x : in std_logic_vector(23 downto 0);
  y : in std_logic_vector(23 downto 0);
  s : out std_logic_vector(23 downto 0)
);
end cpa24b;

architecture bhv of cpa24b is
begin
  process(x, y)
    begin
      s <= x + y;
  end process;
end bhv;
