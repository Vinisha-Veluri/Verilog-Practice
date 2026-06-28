`timescale 1ns / 1ps
module tb();
reg rst,clk,sin;
wire [3:0]pout;
SIPO DUT(rst,clk,sin,pout);
initial begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;#10;
    rst=0;
    sin=1;#10;
    sin=1;#10;
    sin=0;#10;
    sin=1;#10;
    sin=0;#10;
    sin=1;#10;
    $finish;
end   
endmodule
