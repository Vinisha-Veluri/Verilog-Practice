`timescale 1ns / 1ps
module tb();
reg rst,clk;
wire [2:0]q,qbar;
counter in(rst,clk,q,qbar);
initial clk=1'b0;
always 
#10 clk=~clk;

initial begin
rst=0;#10;
rst=1;#10;
rst=0;
 #200 $finish;
 end
endmodule
