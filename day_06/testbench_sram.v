`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2025 06:22:24 PM
// Design Name: 
// Module Name: testbench_sram
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


module testbench_sram();
wire [7:0] read_data;
reg clk;
reg reset;
reg wen;
reg [7:0]w_data;
reg [7:0]addr;

simple_sram u1(.read_data(read_data),.reset(reset),.wen(wen),.w_data(w_data),.addr(addr),.clk(clk));
always #5 clk=~clk;
initial begin
clk=0;reset=1;#10;
reset=0;
w_data=8'h24;wen=1;addr=8'h04;#10;
w_data=8'h87;wen=1;addr=8'h03;#10;
w_data=8'h38;wen=1;addr=8'h05;#10;
w_data=8'h05;wen=1;addr=8'h07;#10;

wen=0;addr=8'h03;#10;
wen=0;addr=8'h04;#10;
wen=0;addr=8'h07;#10;
wen=0;addr=8'h05;#10;
end
endmodule
