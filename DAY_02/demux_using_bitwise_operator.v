`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 06:39:16 AM
// Design Name: 
// Module Name: demux_using_bitwise_operator
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


module demux_using_bitwise_operator(
input i,s,
output y0,y1);

assign y0 = i&~s;
assign y1 = i&s;
endmodule
