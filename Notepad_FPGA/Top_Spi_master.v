
// Top Design -: Spi master top design

module Spi_master_design
       #(parameter DATA_WIDTH            = 8 , 
	     parameter N_BYTES               = 1 , 
	     parameter SPI_MODE_SEL          = 0 ,
	     parameter CLK_DIV_W             = 2
	    )
	    (
	     input i_clk                         , 
		 input i_rst_n                       , 
		 input [DATA_WIDTH-1:0] i_data_byte  , 
         input i_data_valid                  ,
		 input [DATA_WIDTH-1:0] i_instr_byte , 
		 input i_transfer_mode               ,
		 inout i_SDIO                        ,
		 );
		 
		 
		 
		 
		 
		 
		 // instantiate SPI MASTER Design module
		  
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 // reg for register address 
	     reg [4:0] reg_addr                = 0;
	
     	// reg for latching number of bytes in instrcution byte 
     	 reg [1:0] latch_number_bytes      = 0;