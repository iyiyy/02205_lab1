library ieee;
use ieee.std_logic_1164.all;

entity cpa24b is
port (
  x     : in std_logic_vector(23 downto 0);
  y     : in std_logic_vector(23 downto 0);
  cin   : in std_logic;
  z     : out std_logic_vector(23 downto 0);
  cout  : out std_logic
);
end cpa24b;

architecture bhv of cpa24b is
  signal c : std_logic_vector(23 downto 0);
begin
  process(x, y, c, cin)
    variable xorab : std_logic_vector(23 downto 0);
    variable andab : std_logic_vector(23 downto 0);
    variable i : integer;
  begin
    -- intermediate points
    for i in 0 to 23 loop
      xorab(i) := x(i) xor y(i);
      andab(i) := x(i) and y(i);
    end loop;

    -- carry logic
    c(0) <= cin;
    for i in 0 to 22 loop
      c(i+1) <= andab(i) or (c(i) and xorab(i));
    end loop;

    -- sum logic
    for i in 0 to 23 loop
      z(i) <= xorab(i) xor c(i);
    end loop;
    
    cout <= c(23);
  end process;
end bhv;
