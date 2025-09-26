`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 04:38:36 PM
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
reg A,B,C,D,E;
wire Y;

verilog_test_4 uut(.A(A),.B(B),.C(C),.D(D),.E(E),.Y(Y));
initial begin
        $monitor("t=%0t | A=%b B=%b C=%b D=%b E=%b | Y=%b", $time, A,B,C,D,E,Y);
        {A,B,C,D,E} = 5'b00000;
        #10 {A,B,C,D,E} = 5'b10101;
        #10 {A,B,C,D,E} = 5'b11011;
        #10 {A,B,C,D,E} = 5'b11111;
        #10 $monitoroff;
        #50 $monitoron;
        #20 {A,B,C,D,E} = 5'b01010;
        #20 {A,B,C,D,E} = 5'b11100;

        #50 $finish;

  
 $finish;

end
endmodule
