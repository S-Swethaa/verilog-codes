`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 07:27:08 PM
// Design Name: 
// Module Name: twos_complement_tb
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


module twos_complement_tb();
reg [3:0] x;
wire [3:0] y;

twos_complement uut(.x(x),
.y(y));

initial begin
x=4'b0000;
#10
x=4'b0010;
#10
x=4'b0100;
#10
x=4'b1000;
#10
x=4'b0110;
#10
x=4'b1010;
#10
x=4'b1100;
#10
x=4'b0000;
#10
x=4'b1111;
#10
$finish;
end


endmodule
