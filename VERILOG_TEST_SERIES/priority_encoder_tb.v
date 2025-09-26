`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:37:43 PM
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb();
reg [3:0]in;
wire [2:0]y;

PRIORITY_ENCODER uut(.in(in),.y(y));

 initial begin
 in=8'd1;#4;
 in=8'd8;#4;
 in=8'd12;#4;
 in=8'd4;#4;

$finish;
end

endmodule
