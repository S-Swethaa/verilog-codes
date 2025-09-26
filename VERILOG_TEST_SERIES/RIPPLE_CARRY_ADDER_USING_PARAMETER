`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:25:09 PM
// Design Name: 
// Module Name: RIPPLE_CARRY_ADDER
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


module RIPPLE_CARRY_ADDER#(parameter N = 4)
(
input[N-1:0] a, b,
input cin,
output [N-1:0]sum,
output cout);
wire [N:0] carry;
assign carry[0] = cin;
assign cout = carry[N];
genvar i;
generate
for (i=0;i<N;i=i+1)begin 
full_adder uut(.a(a[i]),
.b(b[i]),
.cin(carry[i]),
.sum(sum[i]),
.cout(carry[i+1])
);
end
endgenerate
endmodule

module full_adder (
input a,b,cin,
output sum,cout
);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule


