`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2025 02:15:25 PM
// Design Name: 
// Module Name: S_cntr_up
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


module S_cntr_up(T,Clk,rst,Pre,Out);

    input Clk,rst,T,Pre;
    output [3:0] Out;
    wire w1,w2,w3;
    //assign Out[4]=w1;

    and AND1(w1,Out[0],Clk);
    and AND2(w2,Out[1],w1);
    and AND3(w3,Out[2],w2);
    
    tff_s T1(T,Out[0],Clk,Pre,rst);
    tff_s T2(T,Out[1],w1,Pre,rst);
    tff_s T3(T,Out[2],w2,Pre,rst);
    tff_s T4(T,Out[3],w3,Pre,rst);
    
endmodule
