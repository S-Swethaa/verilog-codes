`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 08:00:07 PM
// Design Name: 
// Module Name: veilog_memory
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


module veilog_memory(
output reg [7:0]sum,
output reg [8:0]largest_no
);
 reg [7:0]mem[0:13];
integer i;
task fill_memory;
begin
for(i=0;i<14;i=i+1)begin
mem[i]=$random;
end
end
endtask

task display_memory;
begin
$display("memory elements");
for(i=0;i<14;i=i+1)begin
$display("mem[%0d]=%0d",i,mem[i]);
end
end
endtask

initial begin
fill_memory;
display_memory;
end
always @(*) begin
    sum = 0;
    largest_no = mem[0];
    for (i = 0; i < 14; i = i + 1) begin
        sum = sum + mem[i];
        if (mem[i] > largest_no)
            largest_no = mem[i];
    end
end



endmodule

