`timescale 1ns / 1ps
module tb();
reg j,k,in,clk;

jkff i1(j,k,clk,q,qbar);
dff i2(in,clk,qd,qdbar);
tff i3(in,clk,qt,qtbar);
initial clk=0;
always
    #10 clk=~clk;
initial begin
    j=0;k=1;in=0;#10;
    j=1;k=1;#10;
    j=0;k=0;in=1;#10;
    j=0;k=1;#10;
    j=0;k=0;in=0;#10;
    j=1;k=1;#10;
    $finish;
    end
    
endmodule
