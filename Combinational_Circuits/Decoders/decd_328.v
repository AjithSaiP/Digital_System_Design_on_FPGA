`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 02:24:21 PM
// Design Name: 
// Module Name: decd_328
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

module decd_328(In_d,Out_d);
    input [2:0] In_d;
    output reg [7:0] Out_d;
    always @(*) begin
        case(In_d)
            3'b000: Out_d = 1;
            3'b001: Out_d= 2;
            3'b010: Out_d = 4;
            3'b011: Out_d = 8;
            3'b100: Out_d = 16;
            3'b101: Out_d = 32;
            3'b110: Out_d = 64;
            3'b111: Out_d = 128;
        endcase
    end
endmodule
