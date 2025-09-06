`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 02:18:51 PM
// Design Name: 
// Module Name: tff_s
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


module tff_s(T,Q,CLK,rst);

    input T,CLK,rst;
    output reg Q;
    
    always @(negedge CLK && rst) begin
        Q <= T^Q;
    end

    always @(!rst) Q <= 0;
    
endmodule
