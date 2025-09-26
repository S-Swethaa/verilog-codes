`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 07:12:20 PM
// Design Name: 
// Module Name: testbench
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


module testbench();
reg clk;
reg reset;
reg x;
wire y;
SEQUENCE_DETECTOR uut(.clk(clk),.reset(reset),.x(x),.y(y));
always #5 clk=~clk;
    reg [15:0]test_ip;
    integer i;
    initial begin
        clk=0;reset=1;x=0;
        #12 reset=0;
        test_ip= 16'b0001011010001110;
        for (i=15;i>=0;i=i-1) begin
            x=test_ip[i];
            #10;
        end
        #20 $finish;
    end
endmodule














