`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 04:39:20 PM
// Design Name: 
// Module Name: nandgate_udp_tb
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


module nandgate_udp_tb();
reg x,y;
wire z;

nandgate_udp uut(.x(x),
.y(y),
.z(z));

initial begin
x=0;y=0;
#5
x=0;y=1;
#5
x=1;y=0;
#5
x=1;y=1;
#5
$finish;
end
endmodule
