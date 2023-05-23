-- Projet de stage ING4 : RISC-V
-- ECE Paris / ARESIA
-- BOOTLOADER VHDL

-- LIBRARIES
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ENTITY
entity Bootloader is
	port (
		--INPUTS
		clk 					: in std_logic;
		CS 					: in std_logic; 							--chip select
		addrInstBoot		: in std_logic_vector(11 downto 0); --addr of boot instruction
		--OUTPUT
		instBoot				: out std_logic_vector(31 downto 0)    --output boot instruction
	);
end entity;

-- ARCHITECTURE
architecture archi of Bootloader is
	TYPE ROM IS ARRAY(0 TO 32) OF std_logic_vector(0 to 31);
	SIGNAL rom_block : ROM :=(
--		x"00001137" , x"00c000ef" , x"00100073" , x"0000006f" , x"000087b7" , x"80000737" , x"3c078793" , x"00f72423",
--		x"c08807b7" , x"fff78793" , x"00f72223" , x"0000006f"
		x"00001137" , x"00c000ef" , x"00100073" , x"0000006f" , x"01800713" , x"00000793" , x"c0000637" , x"ff800513",
		x"00062683" , x"0046f693" , x"fe068ce3" , x"00462683" , x"00062583" , x"0015f593" , x"fe059ce3" , x"00d62223",
		x"00e696b3" , x"ff870713" , x"00d7e7b3" , x"fca71ae3" , x"c0000737" , x"00079463" , x"0000006f" , x"00072683",
		x"0046f693" , x"fe068ce3" , x"00472603" , x"00072683" , x"0016f693" , x"fe069ce3" , x"00c72223" , x"fff78793",
		x"fd5ff06f" 
	);
--	signal sigad : integer;
--	signal sigpc : std_logic_vector(11 downto 0);
--	begin
--		sigpc <= addrInstBoot(11 downto 0);
--		instBoot <= rom_block(sigad) when rising_edge(clk);
--		sigad <= 206 when ((unsigned(sigpc) > 1023)) else to_integer(unsigned(sigpc));
	--	instBoot <= rom_block(to_integer(unsigned(addrInstBoot))) when (rising_edge(clk));
	
	signal SigBootAddr00 : integer;
	signal SigBootAddr08 : integer;
	signal SigBootAddr16 : integer;
	signal SigBootAddr24 : integer;
	signal SigBootOut00 : std_logic_vector(31 downto 0);
	signal SigBootOut08 : std_logic_vector(31 downto 0);
	signal SigBootOut16 : std_logic_vector(31 downto 0);
	signal SigBootOut24 : std_logic_vector(31 downto 0);
	signal sigad : integer;
	signal sigpc : std_logic_vector(11 downto 0);
	
--	signal intAddr : std_logic_vector(13 downto 0);
	
	begin
		sigpc <= addrInstBoot(11 downto 0);
		instBoot <= rom_block(sigad) when rising_edge(clk);
		sigad <= 32 when ((unsigned(sigpc) > 32)) else to_integer(unsigned(sigpc));
	--	instBoot <= rom_block(to_integer(unsigned(addrInstBoot))) when (rising_edge(clk));
	
end archi;
-- END FILE