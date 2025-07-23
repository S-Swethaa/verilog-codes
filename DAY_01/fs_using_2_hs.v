`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 10:01:02 PM
// Design Name: 
// Module Name: fs_using_2_hs
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


module fs_using_2_hs(
input x,y,z,
output diff,borrow,
wire  n1,n2,w1,w2,w3);
not not_1(n1,x);
xor xor_1(w1,x,y);
and and_1(w2,n1,y);
not not_2(n2,w1);
xor xor_2(diff,z,w1);
and and_2(w3,n2,z);
or or_1(borrow,w3,w2);
endmodule
