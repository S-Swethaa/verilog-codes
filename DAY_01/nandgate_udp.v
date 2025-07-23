`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:29:36 PM
// Design Name: 
// Module Name: nandgate_udp
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


primitive nandgate_udp(z,x,y);
output z;
input x,y;


table 
//   xy: z;
     00 : 1;
     01 : 1;
     10 : 1;
     11 : 0;
 endtable
 endprimitive
