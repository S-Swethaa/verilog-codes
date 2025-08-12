`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2025 10:00:07 PM
// Design Name: 
// Module Name: twos_comple_fsm
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


module twos_comple_fsm(
    input clk, reset,
    input [4:0] din,
    output reg detected);

reg state, nextstate;
parameter S0 = 1'b0, S1 = 1'b1;

always @(posedge clk or posedge reset) begin
        if (reset)
         state <= S0;
        else
         state <= nextstate;
end
always @(*) begin
        nextstate = state;
        detected = 0;
        case (state)
        S0: begin
          detected = din;          
        if (din)             
          nextstate = S1;
        end
        S1: begin
          detected = ~din;        
          nextstate = S1;      
        end
endcase
end
endmodule

