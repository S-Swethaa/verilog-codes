`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 03:25:48 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input x,y,z,
output sum,carry,
wire s1,c1,c2,c3);
xor xox_1(s1,x,y);
xor xox_2(sum,s1,z);
and and_1(c1,x,y);
and and_2(c2,y,z);
and and_3(c3,x,z);
or or_1(carry,c1,c2,c3);

endmodule
