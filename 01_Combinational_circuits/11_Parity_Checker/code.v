`timescale 1ns / 1ps
module Parity_Checker_even(
input [3:0]in,
input p,
output error
    );
    assign error=in[0]^in[1]^in[2]^in[3]^p;
endmodule

module Parity_Checker_odd(
input [3:0]in,
input p,
output error1
    );
    assign error1=~(^in^p);
endmodule
