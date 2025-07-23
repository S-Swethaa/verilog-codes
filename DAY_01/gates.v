`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 01:35:26 PM
// Design Name: 
// Module Name: gates
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


module gates(
input a,b,
output y0,y1,y2,y3,y4,y5,y6);
    assign y0 = a & b;
    assign y1 = ~(a & b);
    assign y2 = a | b;
    assign y3 = ~(a | b);
    assign y4 = a ^ b;
    assign y5 = ~(a ^ b);
    assign y6 = ~a;
    
    
    
endmodule
