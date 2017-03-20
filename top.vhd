library ieee;
use ieee.std_logic_1164.all;

entity top is
  port (
    a1 : in std_logic_vector(23 downto 0);
    a2 : in std_logic_vector(23 downto 0);
    clk : in std_logic;
    reset : in std_logic;
    z : out std_logic_vector(23 downto 0)
  );
end top;

architecture struct of top is
  component cpa24b is
    port (
      x : in std_logic_vector(23 downto 0);
      y : in std_logic_vector(23 downto 0);
      s : out std_logic_vector(23 downto 0) 
    );
  end component;
  
  component reg24b is
    port (
      d : in std_logic_vector(23 downto 0);
      q : in std_logic_vector(23 downto 0);
      reset : in std_logic;
      clk : in std_logic
    );
  end component;
begin
end struct;