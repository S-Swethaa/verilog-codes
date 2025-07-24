`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 06:52:49 AM
// Design Name: 
// Module Name: demux_using_conditional_operator
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


module demux_using_conditional_operator(
input i,
input [2:0] s,
output y0,y1,y2,y3,y4,y5,y6,y7);

assign y0=(s==3'b000)?i:0;
assign y1=(s==3'b001)?i:0;
assign y2=(s==3'b010)?i:0;
assign y3=(s==3'b011)?i:0;
assign y4=(s==3'b100)?i:0;
assign y5=(s==3'b101)?i:0;
assign y6=(s==3'b110)?i:0;
assign y7=(s==3'b111)?i:0;

endmodule
