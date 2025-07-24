`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 02:02:05 AM
// Design Name: 
// Module Name: gatelevel_fa_tb
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


module gatelevel_fa_tb();
reg [3:0] a,b;
reg c;
wire [3:0]sum;
wire carry;

gatelevel_fa uut(.a(a),
.b(b),
.c(c),
.sum(sum),
.carry(carry));

initial begin

a=0;b=0;c=0;
#10
a=0;b=0;c=1;
#10
a=0;b=1;c=0;
#10
a=0;b=1;c=1;
#10
a=1;b=0;c=0;
#10
a=1;b=0;c=1;
#10
a=1;b=1;c=0;
#10
a=1;b=1;c=1;
#10
$finish;
end


    
endmodule
