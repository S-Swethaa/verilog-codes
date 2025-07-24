`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 07:09:41 AM
// Design Name: 
// Module Name: decoder_using_bitwise_operator
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


module decoder_using_bitwise_operator(
input [3:0]i,
output [1:0]y
    );
    
    assign y[0] = i[2]|i[3];
    assign y[1] = i[1]|i[3];
endmodule
