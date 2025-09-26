`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2025 07:16:59 PM
// Design Name: 
// Module Name: generate_signed
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


/*module generate_signed();
integer a;
integer random_number=4;
initial begin
repeat (10) begin
a=($random(random_number)% 256)-100;
$display("random_number: %0d",random_number);
end
end
integer i;
initial begin
for(i=0;i<256;i=i+1)begin
random_number=$urandom;
end
end
endmodule*/
module random_generator;
  integer seed;
  integer rand_val;

  initial begin
    seed = 32'hDEADBEEF; 
    repeat (10) begin
      rand_val = ($random(seed) % 201) - 100;
      $display("Random value: %0d", rand_val);
    end
  end
endmodule







