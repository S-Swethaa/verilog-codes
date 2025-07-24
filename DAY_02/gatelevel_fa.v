`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:58:44 AM
// Design Name: 
// Module Name: gatelevel_fa
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


module gatelevel_fa(
output [3:0] sum,
output carry,
input [3:0] a,b,
input c);
assign {carry,sum}=a|b|c;



  
endmodule
