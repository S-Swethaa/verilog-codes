`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 08:18:03 AM
// Design Name: 
// Module Name: decoder_using_conditional_operator_tb
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


module decoder_using_conditional_operator_tb();
reg i;
wire y0,y1;

decoder_using_conditional_operator uut(.i(i),
.y0(y0),
.y1(y1));

initial begin
i=0;
#4
i=1;
#4
$finish;
end

endmodule
