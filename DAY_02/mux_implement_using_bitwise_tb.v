`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 09:44:13 PM
// Design Name: 
// Module Name: mux_implement_using_bitwise_tb
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


module mux_implement_using_bitwise_tb();
reg s,d0,d1;
wire y;
mux_implement_using_bitwise uut(.s(s),
.d0(d0),
.d1(d1),
.y(y));
initial begin
d0=0;d1=0; s=0;
#5
d0=1;d1=0; s=0;
#5
d0=0;d1=0;s=1;
#5
d0=1;d1=1;s=1;
#5
$finish;
end
endmodule
