`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 07:01:53 PM
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
input x,y,z,
output diff,borrow,
wire d1,w1,w2,w3,w4);
xor xox_1(d1,x,y);
xor xox_2(diff,d1,z);
not not_1(w1,x);
and and_1(w2,w1,z);
and and_2(w3,w1,y);
and and_3(w4,y,z);
or or_1(borrow,w2,w3,w4);

    
endmodule
