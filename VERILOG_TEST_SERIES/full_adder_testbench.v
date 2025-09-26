`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:12:13 PM
// Design Name: 
// Module Name: full_adder_testbench
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


module full_adder_testbench();
parameter N=3;
reg[N-1:0]a,b;
reg cin;
wire[N-1:0]sum;
wire carry;

FULL_ADDER_USING_PARAMETER #(.N(N)) uut (.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
a=3'b000;b=3'b000;cin=0;
#10;
a=3'b001;b=3'b101;cin=0;
#10;
$display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
$finish;
end

endmodule
