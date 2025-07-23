`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 07:16:48 PM
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb();
reg x,y,z;
wire diff,borrow;
full_subtractor full_sub_u1(
.x(x),
.y(y),
.z(z),
.diff(diff),
.borrow(borrow)
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
