`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:34:02 PM
// Design Name: 
// Module Name: verilog_test_4
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


module verilog_test_4(
input A,B,C,D,E,
output Y);
wire a1,a2,a3,a4,a5,a6,nb,nc,nd;

not #4(nb,B);
not #4(nc,C);
not #4(nd,D);

and #3(a1,A,nb);
and #3(a2,a1,nc); //and_out1
and #3(a3,A,B);
and #3(a4,a3,E); // and_out3
and #3(a5,C,nb);// and_out3
and #3(a6,C,nd);// and_out4

wire o1,o2,o3;
 or #2(o1,a2,a4);
 or #2(o2,a5,a6);
 or #2(o3,o1,o2);
 
 assign Y=o2;
 









//assign Y=((A&~B&~C)|(A&B&C)|(~C&B)|(C&~B));
endmodule
