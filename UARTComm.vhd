LIBRARY ieee;
USE ieee.std_logic_1164.all;



ENTITY uartComm IS
	PORT(
		clk		:	IN	STD_LOGIC;
		reset_n	:	IN	STD_LOGIC;				--ascynchronous reset
		data_in  :  IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		-- reading  :  IN STD_LOGIC;
		addOutMP	:	IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		cs 		:	IN STD_LOGIC;
	   rx			:	IN STD_LOGIC;	

		data_out :  OUT 	STD_LOGIC_VECTOR(31 DOWNTO 0);
		tx			:	OUT	STD_LOGIC
	);
END uartComm;

ARCHITECTURE vhdl OF uartComm IS
	COMPONENT uart IS
	PORT(
		clk		:	IN	 	STD_LOGIC;				--system clock
		reset_n	:	IN	 	STD_LOGIC;				--ascynchronous reset
		tx_ena	:	IN		STD_LOGIC;				--initiate transmission
		tx_data	:	IN		STD_LOGIC_VECTOR(31 DOWNTO 0);  --data to transmit
		rx			:	IN		STD_LOGIC;				--receive pin
		rx_read	:	IN		STD_LOGIC;				--receive pin
		rx_full	:	OUT	STD_LOGIC;				--data reception in progress
		rx_error :	OUT	STD_LOGIC;				--start, parity, or stop bit error detected
		rx_data	:	OUT	STD_LOGIC_VECTOR(31 DOWNTO 0);	--data received
		tx_busy	:	OUT	STD_LOGIC;  				--transmission in progress
		tx			:	OUT	STD_LOGIC);				--transmit pin
	END COMPONENT;

	SIGNAL SIGSEL_STATUS  : std_logic;
	SIGNAL SIGSEL_RX		 : std_logic;
	SIGNAL SIGSEL_TX		 : std_logic;
	SIGNAL SIGRX_FULL		 : std_logic;
	SIGNAL SIGRX_ERROR	 : std_logic;
	SIGNAL SIGTX_BUSY		 : std_logic;
	SIGNAL SIGRX_DATA 	 : std_logic_vector(31 downto 0);
	SIGNAL SIGUART_STATUS : std_logic_vector(31 downto 0);
	SIGNAL SIGMUXOUT		 : std_logic_vector(31 downto 0);
	SIGNAL SIGRXi		 	 : std_logic;
	
BEGIN
	SIGSEL_STATUS <= '1' when (cs='1' and addOutMP(3)='0' and addOutMP(2)='0') else '0';
	SIGSEL_RX <= '1' when (cs='1' and addOutMP(3)='0' and addOutMP(2)='1') else '0';
	SIGSEL_TX <= '1' when (cs='1' and addOutMP(3)='1' and addOutMP(2)='1') else '0';
	SIGUART_STATUS <= ("00000000000000000000000000000" & SIGRX_FULL & SIGRX_ERROR & SIGTX_BUSY);
	SIGMUXOUT <= SIGUART_STATUS when (SIGSEL_STATUS='1') else 
				   (SIGRX_DATA);
	
	process (clk)
	begin
		if rising_edge (clk)
		then data_out <= SIGMUXOUT;
		end if;
	end process;
	
	instUART : uart
	PORT MAP(
		clk	   => clk,
		reset_n	=> reset_n,
		tx_ena	=> SIGSEL_TX,
		tx_data	=> data_in,
		rx			=> SIGRXi,
		rx_read	=> SIGSEL_RX,
		rx_full	=> SIGRX_FULL,
		rx_error => SIGRX_ERROR,
		rx_data	=> SIGRX_DATA,
		tx_busy	=> SIGTX_BUSY,
		tx	 		=> tx
	);
END vhdl;
