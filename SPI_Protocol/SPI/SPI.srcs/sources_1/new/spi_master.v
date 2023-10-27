`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// design name -: spi master 
// Following are the specifications for the spi master
// spi clk              - runing at 12.5 MHZ
// data bits            - 8 bits
// spi modes            - all 4 modes are supported
// error detection      - working on...

// CLK_DIV_W            - this parameter defines the fpga clock to be divided by certain range to calculate spi clock frequency 
// Note                 - it should not be less than 2 
// for e.g,             - if FPGA clock freq is 50 MHZ , then spi clock freq would be 12.5 MHZ , as 2 denoting per half clock bit so it 
//                      - makes 4 clock cycles of spi compared to FPGA clock 

// Check out here on
// spi modes            - (add link................)
// SPI MODES            - CPOL       CPHA        MODE 
//                      - 0           0           0
//                      - 0           1           1
//                      - 1           0           2
//                      - 1           1           3

 module spi_master
  #(parameter DATA_WIDTH  = 8,
    parameter CLK_DIV_W   = 2, 
    parameter SPI_MODE_SEL = 0)
   (input  i_clk                   ,                 // FPGA System clock
    input  i_rst_n                 ,                 // active low reset 
    input  i_data_valid            ,                 // indicating valid data is available in master side to be sent to slave 
    input  [DATA_WIDTH-1:0] i_data ,                 // data to be sent to slave 
    input  i_miso                  ,                // data received from slave (master in slave out) 
    output o_mosi                  ,                // data sent to slave (master out slave in)
    output o_sclk                  ,                // spi clock for synchronization of data sent to slave from master and received from slave to master spi output
    output o_data_received         );
    
    
    // register for latching the data to be sent to slave
    reg [DATA_WIDTH-1:0] o_latch_data = 0;
    
    // spi clk 
    reg  spi_clock  = 0;
    
    // register for latching the data from miso line
    reg [DATA_WIDTH-1:0] i_latch_miso = 0;
    
    // leading edge reg 
    reg  _leading_edge = 0;
    
    // trailing edge reg
    reg  _trailing_edge = 0;
    
    // reg mosi , for sending the data bits to spi slave 
    reg  _mosi = 0;
    
    // signal for initialization of serializing the data onto mosi line 
    reg  start_serialize = 0; 
    
    // reg for indicating all the data is serialized
    reg  n_done_serializing = 0;
    
    
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
          
    /*********************************************************************************************
                  Latch the data in master spi to be sent to slave spi
    *********************************************************************************************/   
     always @(posedge i_clk) begin
        if (~i_rst_n) o_latch_data <= 0;
        else if (i_data_valid) o_latch_data <= i_data ;
        else o_latch_data <= o_latch_data ;
     end 

    /*********************************************************************************************
                       Initialize the serialization of data
    *********************************************************************************************/
        
     always @(posedge i_clk) begin
       if (~i_rst_n) start_serialize <= 0;
       else if (i_data_valid) start_serialize<= 1'b1 ;
       else if (n_done_serializing) start_serialize <= 1'b0 ;
       else     start_serialize <= start_serialize ;
      end 
    
    /***************************************************************************************
        -- shifting data in Mosi line 
        -- data is shifted from LSB --- right shifted 
    *****************************************************************************************/
    
     always @(posedge i_clk) begin
       if (~i_rst_n) _mosi <= 0;
       else if (start_serialize) _mosi <= {o_latch_data[6:0] , 1'b0};
       end 
    
    
endmodule
