`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 05:26:49 PM
// Design Name: 
// Module Name: parity_generator_udp_tb
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


module parity_generator_udp_tb();
reg a,b,c;
wire y;

parity_generator_udp uut(.a(a),
.b(b),
.c(c),
.y(y));

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
