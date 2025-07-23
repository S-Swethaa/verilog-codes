`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:28:53 AM
// Design Name: 
// Module Name: switchlevel_nandgate
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


module switchlevel_nandgate(
input a,b,
output f,
wire w
);

supply1 vdd;
supply0 gnd;

pmos p1(f,vdd,a);
pmos p2(f,vdd,b);
nmos n1(f,w,a);
nmos n2(w,gnd,b);
endmodule
