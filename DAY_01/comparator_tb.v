`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 07:19:19 PM
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
reg a,b;
wire a_greater,a_less,a_equal;
comparator dut(.a(a),
.b(b),
.a_greater(a_greater),
.a_less(a_less),
.a_equal(a_equal));
initial begin
a=0;b=0;
#10
a=0;b=1;
#10
a=1;b=0;
#10
a=1;b=1;
#10
$finish;
end
endmodule
