`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 01:49:24 PM
// Design Name: 
// Module Name: gates_simulation
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


module gates_simulation;
reg a,b;
wire y0,y1,y2,y3,y4,y5,y6;
    gates gates_u1(.y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .a(a),
    .b(b));
    
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
