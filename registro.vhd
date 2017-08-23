library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registro is


	port 
	(
	d: in std_logic_vector(5 downto 0);
	clk: in std_logic;
	ena: in std_logic;
	reset_n: in std_logic;
	q: out std_logic_vector(5 downto 0)
	);

end entity;

architecture rtl of registro is

begin

q<=(others=>'0') when reset_n='0' else d when ena='1' and rising_edge(clk);

end rtl;