`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:50:21 PM
// Design Name: 
// Module Name: PRIORITY_ENCODER
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


module PRIORITY_ENCODER(
input [3:0]in,
output reg[2:0] y
);
  always @(*) begin
    casez(in)
      8'b1xxxxxxx: y=3'd7;
      8'b01xxxxxx: y=3'd6;
      8'b001xxxxx: y=3'd5;
      8'b0001xxxx: y=3'd4;
      8'b00001xxx: y=3'd3;
      8'b000001xx: y=3'd2;
      8'b0000001x: y=3'd1;
      8'b00000001: y=3'd0;
      default:     y=3'd0; 
    endcase
  end


endmodule
