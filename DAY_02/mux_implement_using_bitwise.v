`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:29:57 PM
// Design Name: 
// Module Name: mux_implement_using_bitwise
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


module mux_implement_using_bitwise(
input s,d0,d1,
output y );

assign y = (~s & d0)|(s & d1 );

endmodule
