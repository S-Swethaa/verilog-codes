`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 06:42:22 AM
// Design Name: 
// Module Name: demux_using_bitwise_operator_tb
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


module demux_using_bitwise_operator_tb();
reg i,s;
wire y0,y1;

demux_using_bitwise_operator uut(.i(i),
.s(s),
.y0(y0),
.y1(y1));

initial begin
i=0;s=0;
#4
i=1;s=0;
#4
i=0;s=1;
#4
i=1;s=1;
#4
$finish;
end




endmodule
