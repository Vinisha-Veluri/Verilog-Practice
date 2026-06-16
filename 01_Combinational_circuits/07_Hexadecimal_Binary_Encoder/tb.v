`timescale 1ns / 1ps
module tb();
reg [15:0]d;
wire [3:0]out;
Hexadecimal_Binary_Encoder DUT(d,out);
initial begin
    d=16'b0000000010000000;#10;
    d=16'b0010000000000000;#10;
    d=16'b0000000000000100;#10;
    d=16'b0000100000000000;#10;
    d=16'b1000000000000000;#10;
    $finish;
    end
