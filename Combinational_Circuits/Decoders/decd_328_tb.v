`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 02:25:33 PM
// Design Name: 
// Module Name: decd_328_tb
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


module decd_328_tb();
    reg [2:0] d_3;
    wire [7:0] o_8;
    decd_328_s DUT(.In_ds(d_3),.Out_ds(o_8));

    initial begin
        d_3 = 0;#10;
        d_3 = 1;#10;
        d_3 = 2;#10;
        d_3 = 3;#10;
        d_3 = 4;#10;
        d_3 = 5;#10;
        d_3 = 6;#10;
        d_3 = 7;#10 $finish;
        
    end
endmodule
