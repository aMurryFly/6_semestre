library ieee;
use ieee.std_logic_1164.all;
entity top2 is port(
	input_clk:  in   STD_LOGIC; 
	 pixel_clk:  buffer   STD_LOGIC;  --pixel clock at frequency of VGA mode being used
    
	 --reset_n   :  IN   STD_LOGIC;  --active low asycnchronous reset
    
	 --n_blank   :  OUT  STD_LOGIC;  --direct blacking output to DAC
    --n_sync    :  OUT  STD_LOGIC; --sync-on-green output to DAC
	 
	 red      :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --red magnitude output to DAC
    green    :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');  --green magnitude output to DAC
    blue     :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
	 h_sync   :  OUT  STD_LOGIC;  --horiztonal sync pulse
    v_sync   :  OUT  STD_LOGIC;  --vertical sync pulse
    dipsw    :  in std_logic_vector (1 downto 0);
	 reloj    :  in std_logic
);
end entity;
architecture arqtop2 of top is 

begin
	w1: entity work.relojlento(arqrelojlento) port map (input_clk,pixel_clk);
	w2: entity work.top(arqtop) port map
	(pixel_clk, pixel_clk, red,green,blue,h_sync,v_sync,dipsw,reloj);

end architecture;