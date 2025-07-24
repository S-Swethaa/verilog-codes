`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 08:15:19 AM
// Design Name: 
// Module Name: decoder_using_conditional_operator
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


module decoder_using_conditional_operator(
input i,
output y0,y1);

assign y0=(i==1'b0)?1'b1:1'b0;
assign y1=(i==1'b1)?1'b1:1'b0;
endmodule
