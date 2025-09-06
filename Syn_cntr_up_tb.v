`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 02:17:01 PM
// Design Name: 
// Module Name: Syn_cntr_up_tb
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

module Syn_cntr_up_tb();

    reg clk, rst, T,PRE;
    wire [3:0] OUT;
    
    initial begin
        clk = 0; rst = 1;
        PRE = 0;
        T = 1;
        #26 rst = 1;PRE = 1;
        $monitor("Time = %0t | clk = %b | rst = %b | T = %b | OUT = %d", $time, clk, rst, T, OUT);
    end

    always #5 clk = ~clk;

    initial #200 $finish;
    S_cntr_up DUT(T, clk, rst,PRE, OUT);

endmodule
