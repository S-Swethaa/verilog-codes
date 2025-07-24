`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 10:30:19 PM
// Design Name: 
// Module Name: mux_using_conditional_operator_tb
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


module mux_using_conditional_operator_tb();
reg a,b,c;
reg [2:0]s;
wire y;

mux_using_conditional_operator uut(.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.i4(i4),
.i5(i5),
.i6(i6),
.i7(i7),
.s(s),
.y(y));


initial begin
s=0
endmodule
