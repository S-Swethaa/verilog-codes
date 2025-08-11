`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 09:38:37 PM
// Design Name: 
// Module Name: fsm_01
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


module fsm_01(
input clk,reset,din,
output reg detected

    );
    
    reg[1:0]state,nextstate;
    
    parameter s0=2'd0,s1=2'd1,s2=2'd2,s3=2'd3;
    
    always @(posedge clk or posedge reset)
    begin
    if (reset)
        state <= s0;
    else
        state <= nextstate;
    end
    
    always @(*) begin
    nextstate=state;
    detected=0;
    
    case(state)
    s0:nextstate=din?s1:s0;
    s1:nextstate=din?s2:s0;
    s2:nextstate=din?s2:s3;
    s3:begin
    
    if(din)begin
    detected=1;
    nextstate=s1;
    end
    else
    begin
    nextstate=s0;
    end
    end
    endcase
    end
    endmodule
