`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 07:16:26 PM
// Design Name: 
// Module Name: comparator
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


module comparator(
input a,
input b,
output a_greater,
output a_less,
output a_equal);

assign a_greater = a&~b;
assign a_less = ~a&b;
assign a_equal = ~(a^b);
assign a_equal=(a==b);
endmodule
