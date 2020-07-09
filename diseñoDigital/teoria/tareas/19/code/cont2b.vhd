library ieee;
use ieee.std_logic_1164.all;
entity cont2b is port (
	E, clk: in std_logic;
	S: out std_logic_vector(1 downto 0)
	
);
end entity;
architecture arqcont2b of cont2b is
	signal Q2,Q1,Q0:std_logic;
	signal T2,T1,T0:std_logic;
begin
	
	u1: entity work.combinacional(arqcomb) port map (E,Q2,Q1,Q0,T2,T1,T0);
	fft1: entity work.FFT(arqFFT) port map (T2,clk,Q2);
	fft2: entity work.FFT(arqFFT) port map (T1,clk,Q1);
	fft3: entity work.FFT(arqFFT) port map (T0,clk,Q0);
	sal:  entity work.salida(arqsal) port map (Q2,Q1,Q0,S);
	
end architecture;