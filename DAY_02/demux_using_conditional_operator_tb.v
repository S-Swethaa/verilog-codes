`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 06:57:51 AM
// Design Name: 
// Module Name: demux_using_conditional_operator_tb
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


module demux_using_conditional_operator_tb();
reg i;
reg [2:0]s;
wire y0,y1,y2,y3,y4,y5,y6,y7;

demux_using_conditional_operator uut(.i(i),
.s(s),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3),
.y4(y4),
.y5(y5),
.y6(y6),
.y7(y7) );

initial begin
i=0; s=3'b000;
#4
i=1; s=3'b001;
#4
i=0; s=3'b010;
#4
i=1; s=3'b011;
#4
i=1; s=3'b100;
#4
i=0; s=3'b101;
#4
i=0; s=3'b110;
#4
i=1; s=3'b110;
#4
$finish;
end 



endmodule
