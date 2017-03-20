library ieee;
use ieee.std_logic_1164.all;

entity top is
  port (
    a1 : in std_logic_vector(23 downto 0);
    a2 : in std_logic_vector(23 downto 0);
    clock : in std_logic;
    reset : in std_logic;
    z : out std_logic_vector(23 downto 0)
  );
end top;

architecture struct of top is
  component cpa24b is
    port (
      x     : in std_logic_vector(23 downto 0);
      y     : in std_logic_vector(23 downto 0);
      z     : out std_logic_vector(23 downto 0)
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
  
  signal reg1ToAdder,
    reg2ToAdder,
    adderToReg3, 
    result : std_logic_vector(23 downto 0);
begin
  z <= result;
  
  reg1 : reg24b
    port map (
      d => a1,
      q => reg1ToAdder,
      reset => reset,
      clk => clock    
    );
    
    reg2 : reg24b
    port map (
      d => a1,
      q => reg2ToAdder,
      reset => reset,
      clk => clock    
    );
    
    reg3 : reg24b
    port map (
      d => a1,
      q => result,
      reset => reset,
      clk => clock    
    );
    
    adder : cpa24b
      port map (
        x => reg1ToAdder,
        y => reg2ToAdder,
        z => adderToReg3
      );
      
end struct;























