`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 06:14:06 PM
// Design Name: 
// Module Name: SEQUENCE_DETECTOR
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


module SEQUENCE_DETECTOR(
input x,clk,reset,
output y
    );
parameter s0=3'd0,s1=3'd1,s2=3'd2,s3=3'd3,s4=3'd4,s5=3'd5;
reg[2:0]state,nextstate;

always @(posedge clk)begin
if(reset)
state<=s0;
else
state<=nextstate;
end

always @(*)begin
case(state)
s0:nextstate=(x)?s1:s0;
s1:nextstate=(x)?s1:s2;
s2:nextstate=(x)?s3:s1;
s3:nextstate=(x)?s4:s2;
s4:nextstate=(x)?s2:s5;
s5:nextstate=(x)?s2:s0;
endcase
end
assign y=(state==s5);

endmodule
