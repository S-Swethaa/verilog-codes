`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:13:21 AM
// Design Name: 
// Module Name: oe_parity
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


module oe_parity(
input [3:0] a,
 output even_parity,
  output odd_parity);
  wire parity = a[3]^ a[2]^a[1]^a[0];
assign odd_parity  = parity;
  assign even_parity = ~parity;

endmodule
