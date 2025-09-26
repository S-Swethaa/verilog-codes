`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2025 07:40:44 PM
// Design Name: 
// Module Name: specification
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


module specification();
  reg [13:0] memory [7:0];  
  integer i;
  reg [17:0] sum;           
  reg [13:0] max_value;

 
  task fill_memory;
    begin
      for (i = 0; i < 8; i = i + 1) begin
        memory[i] = $random % 16384; 
      end
end
endtask
task sum_memory;
 begin
 sum = 0;
 for (i = 0; i < 8; i = i + 1) begin
 sum = sum + memory[i];
 end
 end
endtask

 
 task find_max;
 begin
 max_value = memory[0];
 for (i = 1; i < 8; i = i + 1) begin
 if (memory[i] > max_value)
 max_value = memory[i];
 end
 end
endtask
  
  initial begin
    fill_memory();  
    $display("Memory contents:");
    for (i = 0; i < 8; i = i + 1)
      $display("memory[%0d] = %0d", i, memory[i]);

    sum_memory();   
    find_max();     

    $display("Sum of memory values   = %0d", sum);
    $display("Maximum memory value   = %0d", max_value);
  end

endmodule

