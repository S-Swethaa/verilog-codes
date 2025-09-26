`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:33:27 PM
// Design Name: 
// Module Name: DETECT_ONES_ZEROS
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


module DETECT_ONES_ZEROS(
input clk,
input reset,
input x,
output reg y
);
parameter S0 = 3'b000,P1 = 3'b001,P2 = 3'b010,P3 = 3'b011,Z1 = 3'b100,Z2 = 3'b101,Z3 = 3'b110;   
reg [2:0] state, nextstate;
always @(posedge clk) begin
if (reset)
 state <= S0;
else
 state <= nextstate;
end
always @(*) begin
nextstate = state;
y = 1'b0;  
case (state)
  S0: begin
  if (x) nextstate = P1;   
  else nextstate = Z1;   
  end
  P1: begin
  if (x) nextstate = P2;
  else nextstate = Z1;
  end
  P2: begin
  if (x) nextstate = P3;   
  else nextstate = Z1;
 end
  P3: begin
  y = 1'b1;               
  if (x) nextstate = P3;   
  else nextstate = Z1;
 end
  Z1: begin
  if (~x) nextstate = Z2;
  else nextstate = P1;
  end
  Z2: begin
  if (~x) nextstate = Z3;   
   else nextstate = P1;
   end
   Z3: begin
   y = 1'b1;                 
   if (~x) nextstate = Z3;   
   else nextstate = P1;
   end
endcase
    end

endmodule
