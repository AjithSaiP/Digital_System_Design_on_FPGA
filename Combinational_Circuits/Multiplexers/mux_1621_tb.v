`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 03:42:30 PM
// Design Name: 
// Module Name: mux_1621_tb
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

module mux_1621_tb();

reg [15:0]a;
reg [3:0] sel;
wire out;

sixteen_one  DUT(a,sel,out);

initial begin
    a = 0; sel = 0;
end
always begin
    #2 sel = 4'b0000;a = 16'b0101110101010101;  
    #2 sel = 4'b0001; a = 16'b0101010101010101; 
    #2  sel = 4'b0010;a = 16'b0101010101011101;
    #2 $finish;
end

endmodule
