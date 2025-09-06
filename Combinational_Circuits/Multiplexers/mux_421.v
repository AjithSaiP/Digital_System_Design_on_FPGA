`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 03:41:39 PM
// Design Name: 
// Module Name: mux_421
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


module mux_421(a,sel,out);
input [3:0]a;
output reg out;
input [1:0]sel;

always @(a,sel) begin
    case(sel)
       2'b00: out = a[0];
       2'b01: out = a[1];
       2'b10: out = a[2];
       2'b11: out = a[3];
    endcase
end

endmodule
