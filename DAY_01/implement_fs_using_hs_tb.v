`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 10:15:35 PM
// Design Name: 
// Module Name: implement_fs_using_hs_tb
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


module implement_fs_using_hs_tb(
input x,y,z,
output sum,carry,
wire w1,w2,w3);

and and_1(w1,x,y);
xor xor_1(w2,x,y);
and and_2(w3,w2,z);
or or_1(carry,w1,w3);
xor xor_2(sum,w2,z);



  
endmodule

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2025 09:33:41 PM
// Design Name: 
// Module Name: implement_fa_using_ha_tb
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


module implement_fa_using_ha_tb();
reg x,y,z;
wire diff,borrow;
fs_using_2_hs u1(
.x(x),
.y(y),
.z(z),
.diff(diff),
.borrow(borrow)
);
initial begin
x=0;y=0;z=0;
#10
x=0;y=0;z=1;
#10
x=0;y=1;z=0;
#10
x=0;y=1;z=1;
#10
x=1;y=0;z=0;
#10
x=1;y=0;z=1;
#10
x=1;y=1;z=0;
#10
x=1;y=1;z=1;
#10
$finish;
end
endmodule
