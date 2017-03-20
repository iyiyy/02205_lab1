library ieee;
use ieee.std_logic_1164.all;

entity clock is
  generic (period : time := 50 ns);
  port (
    stop : in std_logic;
    clk : out std_logic := '0'
  );
end clock;

architecture bhv of clock is
begin
  process
  begin
    if (stop = '0') then
      clk <= '1', '0' after period/2;
      wait for period;
    else
      wait;
    end if;
  end process;
end bhv;
    
