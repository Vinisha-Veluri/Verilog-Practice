`timescale 1ns / 1ps
module tb();
reg clk,rst,ud;
wire [2:0]q;
up_down_counter in(clk,rst,ud,q);
initial clk=0;
always #10 clk=~clk;
initial begin
    ud=0;//count up
    rst=1;#10;
    rst=0;#200
    ud=1;//count down
    #200;
    $finish;
    end
endmodule
