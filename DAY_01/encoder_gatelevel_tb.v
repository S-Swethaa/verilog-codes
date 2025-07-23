`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2025 03:11:10 PM
// Design Name: 
// Module Name: encoder_gatelevel_tb
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


module encoder_gatelevel_tb();
reg i1,i2,i3,i4,i5,i6,i7;
wire a1,a2,a3;

encoder uut(.i1(i1),
.i2(i2),
.i3(i3),
.i4(i4),
.i5(i5),
.i6(i6),
.i7(i7),
.a1(a1),
.a2(a2),
.a3(a3));

initial begin
i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1;
#10
i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0;
#5
i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0;
#5
i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0;
#5
i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0;
#5
i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0;
#5
i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0;
#5
$finish;
end



    
endmodule
