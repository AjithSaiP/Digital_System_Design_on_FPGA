`timescale 1ns / 1ps


module mux_1621(a,sel,out);

    input [15:0]a;
    output out;
    input [3:0]sel;
    wire [3:0]w;
    mux_421 f1(.a(a[3:0]),.sel(sel[1:0]),.out(w[0]));
    mux_421 f2(.a(a[7:4]),.sel(sel[1:0]),.out(w[1]));
    mux_421 f3(.a(a[11:8]),.sel(sel[1:0]),.out(w[2]));
    mux_421 f4(.a(a[15:12]),.sel(sel[1:0]),.out(w[3]));
    mux_421 f5(.a(w[3:0]),.sel(sel[3:2]),.out(out));

endmodule
