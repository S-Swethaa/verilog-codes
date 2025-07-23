`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:14:23 AM
// Design Name: 
// Module Name: switchlevel_notgate
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


module switchlevel_notgate(
input a,
output y);

supply1 vdd;
supply0 gnd;

pmos p1(y,vdd,a);
noms n1(y,gnd,a);


endmodule
