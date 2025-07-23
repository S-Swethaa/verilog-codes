`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:55:17 PM
// Design Name: 
// Module Name: tri_state_buffer_tb
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


module tri_state_buffer_tb();
reg x,s,y;
wire f;
tri_state_buffer dut(.x(x),
.y(y),
.s(s),
.f(f));
initial begin
x=1;y=0;s=0;
#10
x=1;y=1;s=0;
#10;
x=0;y=0;s=0;
#10;
x=0;y=1;s=0;
#10
x=1;y=0;s=1;
#10
x=1;y=1;s=1;
#10;
x=0;y=0;s=1;
#10;
x=0;y=1;s=1;
#10

$finish;
end
endmodule
