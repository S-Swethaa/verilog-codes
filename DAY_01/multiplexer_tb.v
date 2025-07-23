`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:07:17 AM
// Design Name: 
// Module Name: multiplexer_tb
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


module multiplexer_tb();
reg i1,i2,i3,i4,i5,i6,i7,i8;
reg s0,s1,s2;
wire o;
 multiplexer u1(.i1(i1),
 .i2(i2),
 .i3(i3),
 .i4(i4),
 .i5(i5),
 .i6(i6),
 .i7(i7),
 .i8(i8),
 .s0(s0),
 .s1(s1),
 .s2(s2),
 .o(o));
 initial begin
 
 
  i1 = 0; s0 = 1'b0; s1 = 1'b0; s2 = 1'b0;
#5
 i2 = 1; s0 = 1'b0; s1 = 1'b0; s2 = 1'b1;
#5
 i3 = 0; s0 = 1'b0; s1 = 1'b1; s2 = 1'b0;
#5
 i4 = 1; s0 = 1'b0; s1 = 1'b1; s2 = 1'b1;
#5
 i5 = 0; s0 = 1'b1; s1 = 1'b0; s2 = 1'b0;
#5
 i6 = 1; s0 = 1'b1; s1 = 1'b0; s2 = 1'b1;
#5
 i7 = 0; s0 = 1'b1; s1 = 1'b1; s2 = 1'b0;
#5
 i8 = 1; s0 = 1'b1; s1 = 1'b1; s2 = 1'b1;
#5

 
$finish;

 
 
 end
endmodule
