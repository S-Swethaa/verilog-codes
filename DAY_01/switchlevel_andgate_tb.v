`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 01:52:02 AM
// Design Name: 
// Module Name: switchlevel_andgate_tb
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


module switchlevel_andgate_tb();
reg a,b;
wire f;
switchlevel_andgate uut(.f(f),
.a(a),
.b(b));

initial begin
a = 1'b0; b = 1'b0;
#5
a = 1'b0; b = 1'b1;
#5
a = 1'b1; b = 1'b0;
#5
a = 1'b1; b = 1'b1;
#5
$finish;

end
endmodule
