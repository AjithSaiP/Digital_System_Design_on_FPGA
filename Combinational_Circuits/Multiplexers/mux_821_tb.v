`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 02:17:12 PM
// Design Name: 
// Module Name: mux_821_tb
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

module four_one(a,sel,out);
input [3:0]a;
input [1:0]sel;
output out;
wire w1,w2,w3,w4,w5,w6;

not g1(w1,sel[0]);
not g2(w2,sel[1]);

and g3(w3,a[0],w1,w2);
and g4(w4,a[1],w2,sel[0]);
and g5(w5,a[2],sel[1],w1);
and g6(w6,a[3],sel[0],sel[1]);

or g7(out,w3,w4,w5,w6);

endmodule

module sixteen_one(a,sel,out);
input [15:0]a;
output out;
input [3:0] sel;
wire [3:0]w;

four_one a1(.a(a[3:0]),.sel(sel[1:0]), .out(w[0]));
four_one a2(.a(a[7:4]),.sel(sel[1:0]), .out(w[1]));
four_one a3(.a(a[11:8]),.sel(sel[1:0]), .out(w[2]));
four_one a4(.a(a[15:12]),.sel(sel[1:0]), .out(w[3]));
four_one a5(.a(w[3:0]),.sel(sel[3:2]), .out(out));

endmodule
