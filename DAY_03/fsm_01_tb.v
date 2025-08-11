`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/11/2025 09:51:12 PM
// Design Name: 
// Module Name: fsm_01_tb
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



`timescale 1ns/1ps
module tb_fsm_01;
    reg clk;
    reg reset;
    reg din;
    wire detected;
    fsm_01 uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        din = 0;
        #12 reset = 0;

        #10 din = 1;  
        #10 din = 1;  
        #10 din = 0;  
        #10 din = 1;  

        #10 din = 1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
        #20 $finish;
    end
    initial begin
        $monitor("Time=%0t | din=%b  | detected=%b", 
                  $time, din,detected);
    end

endmodule

