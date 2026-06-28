`timescale 1ns / 1ps
module tb();
reg clk,rst;
wire [3:0]q;
Ring_counter DUT(clk,rst,q);
initial clk=0;
always begin
 #5; clk=~clk;
 end
 initial begin
    rst=1;#10;
    rst=0;#200;
    $finish;
    end
endmodule
