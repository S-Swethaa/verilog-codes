`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 06:21:07 PM
// Design Name: 
// Module Name: simple_sram
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


module simple_sram(
output reg [7:0] read_data,
input clk,
input reset,
input wen,
input [7:0]w_data,
input [7:0]addr
    );
    reg [7:0]mem[0:7];
    //reg [7:0]dout;
 always@(posedge clk )begin
   if(reset)
     read_data<=8'b0;
   else if (wen) begin
            mem[addr[2:0]] <= w_data;
        end else begin
            read_data <= mem[addr[2:0]];
        end
  end
endmodule
