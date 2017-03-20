library ieee;

use ieee.std_logic_1164.all;

entity tb_cpa24b is
end tb_cpa24b;

architecture struct of tb_cpa24b is

  component clock
    generic (period : time := 50 ns);
    port (
      stop  : in std_logic;
      clk   : out std_logic := '0'
    );
  end component;

  component cpa24b is
    port (
      x     : in std_logic_vector(23 downto 0);
      y     : in std_logic_vector(23 downto 0);
      z     : out std_logic_vector(23 downto 0)
    );
  end component;
  
  -- clock signals 
  signal endSim : std_logic := '0';
  signal clk : std_logic;
  -- adder siganls
  signal x    : std_logic_vector(23 downto 0);
  signal y    : std_logic_vector(23 downto 0);
  signal z    : std_logic_vector(23 downto 0);
  
begin
  simClk : clock
    port map (
      stop => endSim,
      clk => clk
    );

  adder : cpa24b
    port map (
      x => x,
      y => y,
      z => z
    );

  x <= "000000000000000011010010";
  y <= "000000000000000011010010";
end struct;
