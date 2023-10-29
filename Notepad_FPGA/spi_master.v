`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// design name -: spi master 
// Following are the specifications for the spi master

// spi clk              - runing at 12.5 MHZ  , Max Frequency is @20 MHZ
// data bits            - upto 4 bytes 
// spi modes            - all 4 modes are supported

// CLK_DIV_W            - this parameter defines the fpga clock to be divided by certain range to calculate spi clock frequency 
// Note                 - it should not be less than 2 
// for e.g,             - if FPGA clock freq is 50 MHZ , then spi clock freq would be 12.5 MHZ , as 2 denoting per half clock bit so it 
//                      - makes 4 clock cycles of spi compared to FPGA clock 
//
// Theory of Operation  - There are two phases to communications cycle on the AD9714.
//
//                      - Phase 1 is the instrcution cycle , which is the writing of an instrcution
//                      - byte into the AD9714 , coinciding with first eight SCLK rising edges.
//                      - In phase 2 , instruction byte provides the serial port controller
//                      - of the AD9714 with information regarding the data transfer cycle.
//                      
//                      - The phase 1 instrcution byte defines whether the upcoming data transfer
//                      - a read(1) or write(0) , number of bytes in the transfer , the starting
//                      - register address for the first byte of the data transfer .
//
//                      - The first eight SCLK rising edges of each communication cycle are used
//                      - to write the instrcution byte into the AD9714.
//
//                      - The phase 2 of the communication cycle is the actual data transfer
//                      - between the AD9714 and the system controller .
//                      - it can inlude upto 4 bytes maximum , according to what specified
//                      - in instruction byte.
//
//                      - Registers change immediately upon writing to the last bit of each 
//                      - transfer byte.
//
//
//Instruction Byte      - MSB                                           LSB 
//                      - DB7    DB6    DB5   DB4   DB3    DB2   DB1    DB0
//                      - R/W'   N1     N0    A4    A3     A2    A1     A0 
//
//
//                      - R - read (1) 
//                      - W - write(0)
//
//                      - {N1 , N0}
//                      - The above is used to determine how many bytes in the transfer 
//                      - Max upto 4 bytes 
//
//
//
//                      - {A4 , A3, A2, A1, A0}
//                      - The above is used to determine which reegister is accessed 
//                      - during data transfer portion of the communication cycle.
//
//                      
// SDIO-Serial Data I/0 - The SDIO pin is used as a bidirectional data line to transmit and receive data 
//
//
// ___
// CS - Chip Select     - Chip select should stay low during entire communication cycle
//                      - it is used to select more than one device 
//                       - SDIO pin reaches a high impedance('z) state when this input is high.
//
// 
//                      - There are 4 SPI MODES.
//
// SPI MODES            - CPOL       CPHA        MODE 
//                      - 0           0           0
//                      - 0           1           1
//                      - 1           0           2
//                      - 1           1           3
//
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

 module spi_master
       #(parameter DATA_WIDTH         = 8,
         parameter CLK_DIV_W          = 2, 
   		 parameter SPI_MODE_SEL       = 0
	    )
        (    
	     input  i_clk                          ,                 // FPGA System clock
         input  i_rst_n                        ,                 // active low reset 
         input  i_data_valid                   ,                 // indicating valid data is available in master side to be sent to slave 
         input  i_chip_sel                     ,                 // chip select 
		 input  [DATA_WIDTH-1:0] i_data        ,                 // data to be sent to slave 
         //input  [1:0] i_number_bytes         ,                 // number of bytes to send / Receive
		 //input  [4:0] i_reg_address          ,                 // used to select register addresses 
   		// input  [DATA_WIDTH-1:0] i_instr_byte  ,                 // instruction byte  
		 inout  io_SDIO                        ,                // data received from slave (master in slave out) 
         output o_sclk                         ,                // spi clock for synchronization of data sent to slave from master and received from slave to master spi output
         output o_data_received         
	    );
    
    
    // register for latching the data to be sent to slave
    reg [DATA_WIDTH-1:0] o_latch_data = 0;
    
    // spi clk 
    reg  spi_clock                    = 0;
    
    // register for latching the data from miso line
    reg [DATA_WIDTH-1:0] i_latch_miso = 0;
    
    // leading edge reg 
    reg  _leading_edge                = 0;
    
    // trailing edge reg
    reg  _trailing_edge               = 0;
    
    // reg mosi , for sending the data bits to spi slave 
    reg  _mosi                        = 0;
    
    // signal for initialization of serializing the data onto io_SDIO line 
    reg  start_serialize              = 0; 
    
	// reg for counting the number of bits sent from io_SDIO line
	reg [2:0] tx_byte_count           = 0;
	
	// counter for keeping count of how many bytes are sent 
	reg [1:0] byte_count              = 0;
   	
	
	// counter for counting number of clock edges in transfer 
	// there are total 16 clock edges (rising + falling edges) in one byte transfer 
	reg [4:0] spi_clk_edges           = 0;
	
	// counter for counting the number of clock cycles 
	// for e.g if fpga clock is 100 MHZ , and 
	// CLK_DIV_W = 2 , which means for 2 clock cycles, spi clock
	// would stay low(0) , and for next 2 clock cyles it would stay high(1)
	// which leads us to know that fpga clock is divided by 4
	// the following counter keeps track of half of clk_w(2) and full clk cycle (4)
	// it is also useful for generating leading and trailing edge for spi clock modes
	reg [1:0] spi_clk_count         = 0;
	
    // wire for CPOL(clock polarity and CPHA(clock phase)
    wire  _CPHA  ;
    wire  _CPOL   ;
    
    /*********************************************************************************************
      assign clock polarity and clock phase 
      As  CPHA is 1 in SPI MODE - 1 and 3
      and CPOL is 1 in SPI MODE - 2 and 3
    *********************************************************************************************/
     assign _CPHA = (SPI_MODE_SEL == 1) | (SPI_MODE_SEL == 3);
     assign _CPOL = (SPI_MODE_SEL == 2) | (SPI_MODE_SEL == 3);
          
		  
	 /********************************************************************************************
                   Generate the spi clock , leading and trailing edge
     *********************************************************************************************/ 		  
	
     always @(posedge i_clk) 
      begin
         if (~i_rst_n) 
		  begin
               spi_clk_count     <= 0;
               spi_clk_edges     <= 0;
               _leading_edge     <= 0;
               _trailing_edge    <= 0;
           end 
		 else
    	  begin
             if (i_data_valid)
		        spi_clk_edges    <= 16 ;
		     if (spi_clk_edges>0)
		       begin
		     if (spi_clk_count == CLK_DIV_W*2-1)
			   begin
			     _leading_edge   <= 1'b0 ;
				 _trailing_edge  <= 1'b1 ;
				 spi_clk_count   <= 0    ;
				 spi_clk_edges   <= spi_clk_edges-1'b1 ;
				end 
			else if (spi_clk_count == CLK_DIV_W-1)
                 begin
                 _leading_edge   <= 1'b1 ;
                 _trailing_edge  <= 1'b0 ;
                 spi_clk_count   <= spi_clk_count + 1'b1 ;
                 spi_clk_edges   <= spi_clk_edges - 1'b1 ;
                 end 
             else 
                 spi_clk_count   <= spi_clk_count + 1'b1 ;
           end // (~i_rst_n)
       end // (posedge i_clk)		   
				
				 
    /*********************************************************************************************
                  Latch the data in master spi to be sent to slave spi
    *********************************************************************************************/   
     always @(posedge i_clk) 
	 begin
        if (~i_rst_n) 
		   o_latch_data <= 0;
        else if (i_data_valid) 
		   o_latch_data <= i_data ;
        else 
		   o_latch_data <= o_latch_data ;
      end 

    /*********************************************************************************************
                       Initialize the serialization of data
    *********************************************************************************************/
        
     always @(posedge i_clk)
	 begin
       if (~i_rst_n) 
	      start_serialize <= 0;
       else if (i_data_valid) 
	      start_serialize<= 1'b1 ;
       else   
    	  start_serialize <= 1'b0 ;
      end 
	  
	  
	 /*******************************************************************************************
	                 Drive io_SDIO line to high impedance when CS goes high 
	 ********************************************************************************************/
	  always @(posedge i_clk) 
	  begin
	      if (~i_rst_n)
             begin		  
		       io_SDIO       <= 1'b0 ;
			   tx_byte_count <= 
	      else if (i_chip_sel)
		       io_SDIO <= 1'bz ;
	     else if (~i_chip_sel)
		    begin
			   if (i_tx_valid)
			   tx_byte_count 
         	  
	  
	  
	  
    
    /***************************************************************************************
        -- shifting data in Mosi line 
        -- data is shifted from LSB --- right shifted 
    *****************************************************************************************/
    
    
endmodule 