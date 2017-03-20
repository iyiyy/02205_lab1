library ieee;
use ieee.std_logic_1164.all;

entity reg24b is
  port (
    d : in std_logic_vector(23 downto 0);
    q : out std_logic_vector(23 downto 0);
    clk : in std_logic;
    reset : in std_logic
  );
end reg24b;

architecture bhv of reg24b is
begin
  process (d, clk, reset)
  begin
    if reset = '1' then
      q <= (others => '0');
    elsif rising_edge(clk) then
      q <= d;
    end if;
  end process;
end bhv;