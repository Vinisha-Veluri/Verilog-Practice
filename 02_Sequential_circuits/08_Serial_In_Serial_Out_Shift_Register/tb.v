`timescale 1ns / 1ps
module tb();
reg rst,clk,sin;
wire sout;
SISO DUT(rst,clk,sin,sout);
initial begin
    clk=1'b0;
    forever #5 clk=~clk;
end
initial begin
    rst=1;#10;
    rst=0;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b0;#10;
    sin=1'b1;#10;
    sin=1'b0;#10;
    sin=1'b1;#10;
    sin=1'b1;#10;
    sin=1'b0;#10;
    sin=1'b1;#10;
    sin=1'b0;#10;
    sin=1'b1;#10;
    $finish;
end
endmodule
