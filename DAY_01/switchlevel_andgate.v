`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:45:43 AM
// Design Name: 
// Module Name: switchlevel_andgate
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


module switchlevel_andgate(
input a,b,
output f,
wire w1,w2);

supply0 gnd2;
supply0 gnd1;
supply1 vdd2;
supply1 vdd1;

pmos p1(w2,vdd2,a);
pmos p2(w2,vdd2,b);
nmos n1(w2,a,w1);
nmos n2(w1,gnd2,b);

pmos p3(f,vdd1,w2);
nmos n3(f,gnd1,w2);



endmodule
