`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2025 10:13:02 PM
// Design Name: 
// Module Name: twos_cpmplement_fsm_tb
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


module twos_cpmplement_fsm_tb();
reg clk, reset;
reg[4:0]din;
    wire detected;
    twos_comple_fsm uut(
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        din = 4'b0010;
        #10 reset = 0;
        #10 din = 4'b0010;   
        #10 din = 4'b1111;  
        #10 din = 4'b0000;   
        #10 reset = 1;
        #10 reset = 0;
        #10 din = 4'b1011;
        #10 din = 4'b1001;
        #10 din = 4'b0010;
        #50
 $finish;
end
initial begin
$monitor("Time=%0t | clk=%b reset=%b din=%b state=%b detected=%b", 
                  $time, clk, reset, din, uut.state, detected);
    end

endmodule

