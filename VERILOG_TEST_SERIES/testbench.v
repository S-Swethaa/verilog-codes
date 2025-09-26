`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 05:11:25 PM
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
parameter N = 4;
reg [N-1:0]a,b;
reg cin;
wire [N-1:0]sum;
wire cout;
RIPPLE_CARRY_ADDER #(N) dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    initial begin
        a=4'b0000;b=4'b0000;cin=0;
        #10;
        a=4'b0011;b=4'b0101;cin=0;
        #10;
        a=4'b0111;b=4'b0111;cin=0;
        #10;
        a=4'b1111;b=4'b1111;cin=0;
        #10;
        a=4'b1010;b=4'b0110;cin=0;
        #10;
$finish;
end
        
endmodule
