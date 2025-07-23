`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 03:27:23 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg x,y,z;
wire sum,carry;
full_adder full_adder_u1(
.x(x),
.y(y),
.z(z),
.sum(sum),
.carry(carry)
);
initial begin
x=0;y=0;z=0;
#10
x=0;y=0;z=1;
#10
x=0;y=1;z=0;
#10
x=0;y=1;z=1;
#10
x=1;y=0;z=0;
#10
x=1;y=0;z=1;
#10
x=1;y=1;z=0;
#10
x=1;y=1;z=1;
#10
$finish;
end
endmodule
