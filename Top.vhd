-- Projet de fin d'études : RISC-V
-- ECE Paris / SECAPEM
-- Top entity VHDL = Processor + DataMemory + InstructionMemory

-- LIBRARIES
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.simulPkg.ALL;

-- ENTITY
ENTITY Top IS
	PORT (
		-- INPUTS
		enableDebug, switchSEL, switchSEL2   : IN    STD_LOGIC; -- input for debuger
		TOPclock                             : IN    STD_LOGIC; --must go through pll
		buttonClock                          : IN    STD_LOGIC;
		reset                                : IN    STD_LOGIC;                                    --SW0

		-- OUTPUTS
		TOPdisplay1                          : OUT   STD_LOGIC_VECTOR(31 DOWNTO 0);                --0x80000004
		TOPdisplay2                          : OUT   STD_LOGIC_VECTOR(31 DOWNTO 0);                --0x80000008
		TOPleds                              : OUT   STD_LOGIC_VECTOR(31 DOWNTO 0)                 --0x8000000c
	);
END ENTITY;

-- ARCHITECTURE
ARCHITECTURE archi OF Top IS

	-- COMPONENTS
	-- processor
	COMPONENT Processor IS
		PORT (
			-- INPUTS
			Hold            : IN  STD_LOGIC;
			PROCclock       : IN  STD_LOGIC;
			PROCreset       : IN  STD_LOGIC;
			PROCinstruction : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			PROCoutputDM    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			-- OUTPUTS
			PROCprogcounter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			PROCstore       : OUT STD_LOGIC;
			PROCload        : OUT STD_LOGIC;
			PROCfunct3      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			PROCaddrDM      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			PROCinputDM     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			PROCdq 			 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT Counter IS
		PORT (
			-- INPUTS
			CPTclock   : IN  STD_LOGIC;
			CPTreset   : IN  STD_LOGIC;
			CPTwrite   : IN  STD_LOGIC;
			CPTaddr    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			CPTinput   : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);

			-- OUTPUTS
			CPTcounter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT Displays IS
		PORT (
			--INPUTS
			DISPclock    : IN  STD_LOGIC;
			DISPreset    : IN  STD_LOGIC;
			DISPaddr     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			DISPinput    : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
			DISPwrite    : IN  STD_LOGIC;

			--OUTPUTS
			DISPleds     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			DISPdisplay1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			DISPdisplay2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT clock1M IS
		PORT (
			areset : IN  STD_LOGIC := '0';
			inclk0 : IN  STD_LOGIC := '0';
			c0     : OUT STD_LOGIC;
			locked : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT RAM8x4 IS
		PORT (
			address_a : IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
			address_b : IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
			clock     : IN  STD_LOGIC := '1';
			data_a    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
			data_b    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
			enable    : IN  STD_LOGIC := '1';
			wren_a    : IN  STD_LOGIC := '0';
			wren_b    : IN  STD_LOGIC := '0';
			dq    	 : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
			q_a       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			q_b       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT DEBUGER IS
		PORT (
			-- INPUTS
			enable                : IN  STD_LOGIC;
			SwitchSel, SwitchSel2 : IN  STD_LOGIC;
			--reset    	: IN STD_LOGIC; --SW0
			PCregister            : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			Instruction           : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);

			--OUTPUTS
			TOPdisplay2           : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '1'); --0x80000008
			TOPdisplay1           : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '1')  --0x80000004
		);
	END COMPONENT;

	
	-- SIGNALS
	--SIGNAL SIGoutputDMorREG : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL SIGcounter                                    : STD_LOGIC_VECTOR (31 DOWNTO 0); --0x80000000
	SIGNAL SIGPLLclock                                   : STD_LOGIC;
	SIGNAL SIGPLLclockinverted                           : STD_LOGIC;
	SIGNAL SIGclock                                      : STD_LOGIC; --either from pll or simulation
	--SIGNAL SIGclockInverted : STD_LOGIC; --either from pll or simulation
	SIGNAL SIGsimulOn                                    : STD_LOGIC; --either from pll or simulation
	SIGNAL TOPreset                                      : STD_LOGIC;
	SIGNAL PLLlock                                       : STD_LOGIC;

	--SIGNAL debuger

	SIGNAL debugDisplay1, debugDisplay2			           : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL procDisplay1, procDisplay2, procLed           : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL RegcsDMProc, MuxcsDMProc                      : STD_LOGIC;
	
	
	--------SIGNALS
	SIGNAL SIGPROCinstruction 			: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGPROCoutputDM 				: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGPROChold 					: STD_LOGIC;
	SIGNAL SIGPROCprogcounter			: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGPROCstore, SIGPROCload : STD_LOGIC;
	SIGNAL SIGPROCfunct3 				: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL SIGPROCaddrDM 				: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGPROCinputDM 				: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGfunct3 						: STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL SIGcsDM, SIGwriteSelect   : STD_LOGIC;
	SIGNAL SIGinputDM, SIGAddressDM  : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL SIGReady_32b, SIGData_Ready_32b : STD_LOGIC;
	SIGNAL SIGDataOut_32b 				: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL MuxPROCstore  : STD_LOGIC;
	
	SIGNAL SIGPROCdq		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	--
	
	SIGNAL SIGbootfinish	 : std_logic;
BEGIN

	TOPreset <= '1' WHEN reset = '1' ELSE
				   reset WHEN rising_edge(SIGclock);
	-- BEGIN
	-- ALL
	-- TEST BENCH ONLY ---

	PKG_instruction   <= SIGPROCinstruction;
	PKG_store         <= SIGPROCstore;
	PKG_load          <= SIGPROCload;
	PKG_funct3        <= SIGPROCfunct3;
	PKG_addrDM        <= SIGPROCaddrDM;
	PKG_inputDM       <= SIGPROCinputDM;
	PKG_outputInstr	<= SIGPROCinstruction;
	PKG_outputDM      <= SIGPROCoutputDM;
	PKG_progcounter   <= SIGPROCprogcounter;
	PKG_counter       <= SIGcounter;
	SIGsimulOn			<= PKG_simulON;
	-----------------------
	
	
	-- Sram specific signal
	-- avoid writing in memory when the proc wants to write on its outputs
	MuxPROCstore <= '0' WHEN SIGPROCaddrDM(31)='1' ELSE
						 SIGPROCstore;
	--

	SIGclock          <= TOPclock WHEN SIGsimulOn = '1' ELSE
								buttonClock WHEN enableDebug = '1'  ELSE
								SIGPLLclock;

	TOPdisplay1 <= procDisplay1 WHEN enableDebug = '0' ELSE
		            debugDisplay1;

	TOPdisplay2 <= procDisplay2 WHEN enableDebug = '0' ELSE
		            debugDisplay2;

	TOPLeds <= procLed WHEN enableDebug = '0' ELSE
				  procLed;
		
	-- INSTANCES

	debug : debUGER
	PORT MAP(
		--TOPclock =>
		enable      => enableDebug,
		SwitchSel   => switchSEL,
		SwitchSel2  => switchSEL2,
		--reset => 
		PCregister  => SIGPROCprogcounter(15 DOWNTO 0),
		Instruction => SIGPROCinstruction,
		--OUTPUTS
		TOPdisplay2 => debugDisplay2,
		TOPdisplay1 => debugDisplay1
	);

	instPROC : Processor
	PORT MAP(
		Hold            => '0',
		PROCclock       => SIGclock,
		PROCreset       => TOPreset,
		PROCinstruction => SIGPROCinstruction,
		PROCoutputDM    => SIGPROCoutputDM,
		-- OUTPUTS
		PROCprogcounter => SIGPROCprogcounter,
		PROCstore       => SIGPROCstore,
		PROCload        => SIGPROCload,
		PROCfunct3      => SIGPROCfunct3,
		PROCaddrDM      => SIGPROCaddrDM,
		PROCinputDM     => SIGPROCinputDM,
		PROCdq 			 => SIGPROCdq
	);

	instCPT : Counter
	PORT MAP(
		CPTclock   => SIGclock,
		CPTreset   => TOPreset,
		CPTwrite   => SIGPROCstore,
		CPTaddr    => SIGPROCaddrDM,
		CPTinput   => SIGPROCoutputDM,
		CPTcounter => SIGcounter
	);

	instDISP : Displays
	PORT MAP(
		--INPUTS
		DISPclock    => SIGclock,
		DISPreset    => TOPreset,
		DISPaddr     => SIGPROCaddrDM,
		DISPinput    => SIGPROCinputDM,
		DISPWrite    => SIGPROCstore,
		--OUTPUTS
		DISPleds     => procLed,
		DISPdisplay1 => procDisplay1,
		DISPdisplay2 => procDisplay2
	);

	instPLL : clock1M
	PORT MAP(
		areset => '0',
		inclk0 => TOPclock,
		c0     => SIGPLLclock,
		locked => PLLlock
	);
	
	
	Memory : RAM8x4
	PORT MAP(
		address_a => SIGPROCprogcounter(13 downto 2), --  Addr instruction (divided by 4 because we use 32 bits memory)
		address_b => SIGPROCaddrDM(13 downto 2),       --  Addr memory (divided by 4 because we use 32 bits memory)
		clock     => SIGclock,
		data_a    => (OTHERS => '0'), -- Instruction in
		data_b    => SIGPROCinputDM,  -- Data in
		enable    => '1',
		wren_a    => '0',                -- Write Instruction Select
		wren_b    => MuxPROCstore,       -- Write Data Select
		dq			 => SIGPROCdq,
		q_a       => SIGPROCinstruction, -- DataOut Instruction
		q_b       => SIGPROCoutputDM		-- DataOut Data
	);
	-- END
END archi;
-- END FILE