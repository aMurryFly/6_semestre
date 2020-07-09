library ieee;
use ieee.std_logic_arith.all;
use ieee.std_logic_1164.all;
entity top2 is port(
	clk, reset: in std_logic;
	count: out std_logic_vector(1 downto 0)
);
end top2;
architecture arqtop2 of top2 is
signal clk25: std_logic;
begin
	u1: entity work.relojlento(arqrelojlento) port map (clk, clk25);
	u2: entity work.cont2bits(arqcont) port map (clk25, reset,count);
end architecture;