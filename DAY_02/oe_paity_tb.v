`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 09:15:19 AM
// Design Name: 
// Module Name: oe_paity_tb
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


module oe_paity_tb();
reg [3:0] a;
wire even_parity, odd_parity;
oe_parity uut(.a(a),
    .even_parity(even_parity),
    .odd_parity(odd_parity));
initial begin
    a = 4'b0000; #10; 
    a = 4'b0001; #10; 
    a = 4'b0011; #10; 
    a = 4'b0111; #10; 
    a = 4'b1111; #10; 
    a = 4'b1010; #10; 
    a = 4'b1001; #10; 
    a = 4'b1101; #10; 
$finish;
end
endmodule
