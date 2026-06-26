`timescale 1ns / 1ps
module tb();
reg r,s,clk;
wire q,qbar;
ff i1(r,s,clk,q,qbar);
initial clk=0;
always 
    #5 clk=~clk;

initial begin
    s=0;r=1;#10;
    s=1;r=0;#10;
    s=0;r=0;#10;
    s=1;r=1;#10;
    s=0;r=0;#10;
    s=0;r=1;#10;
    s=0;r=0;#10;
    $finish;
end
endmodule
