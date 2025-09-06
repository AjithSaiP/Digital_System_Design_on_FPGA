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

module dff_s(T, Q, CLK, pre, rst);
    input T, CLK, pre, rst;
    output Q;
    wire Q_, w1, w2, w3, w4, w5, w6;

    not #1 NOT1(Q_, Q);

    and #1 AND1(w1, CLK, rst, Q);
    and #1 AND2(w2, w5, Q, rst);
    nor #1 NOR1(Q_, w1, w2);

    and #1 AND3(w3, CLK, pre, Q_);
    and #1 AND4(w4, w6, Q_, pre);
    nor #1 NOR2(Q, w3, w4);

    nand #1 NAND1(w5, pre, Q, T, CLK);
    nand #1 NAND2(w6, rst, Q_, T, CLK);
    
endmodule
