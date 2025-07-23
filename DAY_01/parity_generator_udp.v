`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 05:15:40 PM
// Design Name: 
// Module Name: parity_generator_udp
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

primitive parity_generator_udp(y,a,b,c);
input a,b,c;
output y;

table
// a b c : y;
0 0 0 : 0;
0 0 1 : 1;
0 1 0 : 1;
0 1 1 : 0;
1 0 0 : 1;
1 0 1 : 0;

1 1 0 : 0;
1 1 1 : 1;

endtable
endprimitive
