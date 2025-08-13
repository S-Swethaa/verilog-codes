`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2025 10:27:36 PM
// Design Name: 
// Module Name: find_even_odd_tb
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


module find_even_odd_tb( );
reg clk, reset,din;
wire dout;

find_even_odd uut(.clk(clk),.reset(reset),.din(din),.dout(dout));

always #5 clk=~clk;

initial begin
clk=0;
reset=1;
clk=0;

#10 reset=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=1;

#20
$finish;
end

initial begin
$monitor("time=%0t |din=%b|state=%b",$time,din,dout,uut.state);

end


endmodule
