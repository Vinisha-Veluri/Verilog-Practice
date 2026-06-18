`timescale 1ns / 1ps
module Tri_state_buffer(
input in,en,
output out
    );
    assign out=en?in:1'bz;
endmodule
