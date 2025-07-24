`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:53:30 AM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg [3:0]a,b;
reg c;
wire [3:0]sum;
wire carry;

ripple_carry_adder uut(.a(a),
.b(b),
.c(c),
.sum(sum),
.carry(carry));
initial begin

a=4'b0000;b=4'b0110;c=0;
#10
a=4'b0001;b=4'b0010;c=0;
#10
a=4'b0010;b=4'b0000;c=0;
#10
a=4'b0011;b=4'b1100;c=0;
#4
a=4'b0100;b=4'b1000;c=0;
#4
a=4'b1110;b=4'b0110;c=0;
#4
a=4'b1010;b=4'b0011;c=0;
#4
a=4'b0000;b=4'b0100;c=0;
#4
a=4'b0000;b=4'b111;
#4

$finish;
end
endmodule

