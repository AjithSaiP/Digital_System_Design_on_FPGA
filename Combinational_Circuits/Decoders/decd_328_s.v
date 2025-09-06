`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2025 03:11:33 PM
// Design Name: 
// Module Name: decd_328_s
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


module decd_328_s(In_ds,Out_ds);
    input [2:0] In_ds ;
    output [7:0] Out_ds;
    wire [2:0] In_ds_ ;
    
    not (In_ds_[0], In_ds[0]);
    not (In_ds_[1], In_ds[1]);
    not (In_ds_[2], In_ds[2]);
    
    and (Out_ds[0], In_ds_[0], In_ds_[1], In_ds_[2]);
    and (Out_ds[1], In_ds[0],  In_ds_[1], In_ds_[2]);
    and (Out_ds[2], In_ds_[0], In_ds[1],  In_ds_[2]);
    and (Out_ds[3], In_ds[0],  In_ds[1],  In_ds_[2]);
    and (Out_ds[4], In_ds_[0], In_ds_[1], In_ds[2]);
    and (Out_ds[5], In_ds[0],  In_ds_[1], In_ds[2]);
    and (Out_ds[6], In_ds_[0], In_ds[1],  In_ds[2]);
    and (Out_ds[7], In_ds[0],  In_ds[1],  In_ds[2]);

endmodule
