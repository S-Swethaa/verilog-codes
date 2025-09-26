`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:44:27 PM
// Design Name: 
// Module Name: GENERATE_CLK
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


module GENERATE_CLK(
input clk,reset,
output reg clk_out);

localparam div=250000;
reg [18:0]count;  

always @(posedge clk)begin
if (reset)begin
clk_out=0;
count=0;
end else begin
if(count==div-1)begin
count<=0;
clk_out<=~clk_out;
end else
count<=count+1;
end
end

endmodule
