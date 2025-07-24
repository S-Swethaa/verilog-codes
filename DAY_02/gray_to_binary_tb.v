`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:20:42 AM
// Design Name: 
// Module Name: gray_to_binary_tb
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


module gray_to_binary_tb();
reg [3:0] gray;
wire [3:0] binary;
gray_to_binary dut(.binary(binary),
.gray(gray));
initial begin
gray =4'b0000;
#10;
gray =4'b0001;
#10;
gray =4'b0010;
#10;
gray =4'b0011;
#10;
gray =4'b0100;
#10;
gray =4'b0101;
#10;
gray =4'b0110;
#10;
gray =4'b0111;
#10;
gray =4'b1000;
#10;
$finish;
end
endmodule
