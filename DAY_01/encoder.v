`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 03:00:03 PM
// Design Name: 
// Module Name: encoder
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


module encoder(
input i1,i2,i3,i4,i5,i6,i7,
output a1,a2,a3);

assign a1 = (i7|i5|i3|i1);
assign a2 = (i7|i6|i3|i2);
assign a3 = (i7|i6|i5|i4);
endmodule
