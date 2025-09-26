`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 06:22:13 PM
// Design Name: 
// Module Name: TESTBENCH
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


module TESTBENCH();
reg clk;
reg reset;
reg x;
wire y;
DETECT_ONES_ZEROS uut(.clk(clk),.reset(reset),.x(x),.y(y));
always #5 clk=~clk;
    reg [15:0]test_ip;
    integer i;
    initial begin
        clk = 0; reset = 1; x = 0;
        #12 reset = 0;
        test_ip= 16'b0001111000111001;
        for (i = 15; i >= 0; i = i - 1) begin
            x = test_ip[i];
            #10;
        end
        #20 $finish;
    end
endmodule













