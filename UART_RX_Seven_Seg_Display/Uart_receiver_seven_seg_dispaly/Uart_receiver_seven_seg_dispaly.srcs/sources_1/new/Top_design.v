`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 12:12:53 PM
// Design Name: 
// Module Name: Top_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top_design(
    input        i_clk , 
    input        i_rst_n , 
    input        i_rx_serial , 
    output       o_rx_data_valid ,
    output [3:0] o_seg_an ,  
    output [6:0] o_seven_seg 
    );



  //
   wire [7:0] rx_data ;  
    
 // uart receiver 
 //
 //
 
  uart_receiver 
  UO_UART_RX(
             .i_clk           (i_clk),             // FPGA clock
             .i_rst_n         (i_rst_n),           // Active low reset
             .i_rx_serial     (i_rx_serial),       // UART RX serial line input
             .o_rx_data_valid (o_rx_data_valid), // Signal indicating valid received data
             .o_rx_data       (rx_data) // Received data (8 bits)
   );
   
   //
   //
   //
   
   wire [3:0] i_seg ;
   
   // Multiplex logic -
   //
   //
   Mux_seven_seg_converter
   UO_MUX(
            .i_clk  (i_clk) ,  
//            .i_rst_n ,
            .o_seg1 (rx_data[7:4]),
            .o_seg2 (rx_data[3:0]),
            .o_seg3 (4'h0),
         //   .o_seg4 (4'h0), 
            .o_en   (o_seg_an), 
            .o_seg  (i_seg)
 );
   //
   //
   //
 
 // Hex to seven seg converter logic 
 //
 //
  Hex_seven_seg_converter
  UO_HEX_S7EG(
            .i_data (i_seg), 
            .seg_out(o_seven_seg)
    );
  //
  //
  //

endmodule
