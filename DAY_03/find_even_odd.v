`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2025 10:26:23 PM
// Design Name: 
// Module Name: find_even_odd
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


module find_even_odd(
input clk,
input reset,
input din,
output reg dout );//1 if odd number of 1's else 0

parameter s0=2'b00,//Even 1's, Even 0's
s1=2'b01,// Odd 1's, Even 0's
s2=2'b10,//Even 1's, Odd 0's
s3=2'b11;//Odd 1's, Odd 0's

reg [1:0] state,nextstate;

always @(posedge clk or posedge reset)begin
if(reset)
state<=s0;
else
state<=nextstate;
end

always @(*)begin
nextstate=state;
dout=1'b0;
case(state)
s0:begin
if(din)
nextstate=s1;
else
nextstate=s2;
end

s1:begin
if(din)
nextstate=s0;
else
nextstate=s3;
end

s2:begin
if(din)
nextstate=s3;
else
nextstate=s0;
end

s0:begin
if(din)
nextstate=s2;
else
nextstate=s1;
end
endcase

if(state==s3)
dout=1'b1;
end
endmodule

