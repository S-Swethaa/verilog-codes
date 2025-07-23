`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 07:37:24 PM
// Design Name: 
// Module Name: fa_implement_using_2_ha
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


module fa_implement_using_2_ha(
input x,y,z,
output sum,carry,
wire w1,w2,w3);

and and_1(w1,x,y);
xor xor_1(w2,x,y);
and and_2(w3,w2,z);
or or_1(carry,w1,w3);
xor xor_2(sum,w2,z);



  
endmodule
