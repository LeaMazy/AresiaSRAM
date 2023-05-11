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
		BootClock 			: in std_logic;
		CS 					: in std_logic; 							--chip select
		BootReset			: in std_logic;
		BootStore			: in std_logic;
		BootLoad				: in std_logic;
		BootAddr				: in std_logic_vector(11 downto 0); --addr of boot instruction
		BootIn				: in std_logic_vector(31 downto 0);
		BootFunct3			: in std_logic_vector(2 downto 0);
		--OUTPUT
		BootOut				: out std_logic_vector(31 downto 0) --output boot instruction 
		instBoot: out std_logic_vector(31 downto 0)    --output boot instruction
	);
end entity;

-- ARCHITECTURE
architecture archi of Bootloader is
	TYPE ROM IS ARRAY(0 TO 11) OF std_logic_vector(0 to 31);
	SIGNAL rom_block : ROM :=(
		x"00001137" , x"00c000ef" , x"00100073" , x"0000006f" , x"c08807b7" , x"80001737" , x"fff78793" , x"fef72a23",
		x"000087b7" , x"3c078793" , x"fef72c23" , x"0000006f"
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
		sigad <= 11 when ((unsigned(sigpc) > 11)) else to_integer(unsigned(sigpc));
	--	instBoot <= rom_block(to_integer(unsigned(addrInstBoot))) when (rising_edge(clk));
	
end archi;
-- END FILE