`timescale 1ns / 1ps
module tb();
reg rst,clk;
wire [3:0]q;
Johnson_counter DUT(rst,clk,q);
initial clk=0;
always #10 clk=~clk;
initial begin
    rst=1;#15;
    rst=0;#200;
    $finish;
end
endmodule
