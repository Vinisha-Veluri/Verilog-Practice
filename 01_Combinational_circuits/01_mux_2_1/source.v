`timescale 1ns / 1ps
module mux(
input a,b,s,
output c
    );
    assign c=((~s)&a)|(s&b);
endmodule
