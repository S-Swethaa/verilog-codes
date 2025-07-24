`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 07:18:01 AM
// Design Name: 
// Module Name: decoder_using_bitwise_operator_tb
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


module decoder_using_bitwise_operator_tb();
reg [3:0]i;
wire [1:0]y;

decoder_using_bitwise_operator uut(.i(i),
.y(y));

initial begin
i=2'b00;
#4
i=2'b01;
#4
i=2'b10;
#4
i=2'b11;
#4
$finish;
end




endmodule
