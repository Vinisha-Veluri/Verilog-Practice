`timescale 1ns / 1ps
module parity_generator_even(
input [3:0] in,
output p
    );
    assign p=in[0]^in[1]^in[2]^in[3];
endmodule

module parity_generator_odd(
input [3:0] in,
output p1
    );
    assign p1=~(in[0]^in[1]^in[2]^in[3]);
endmodule
