`timescale 1ns / 1ps
module tb16();
reg [2:0]in;
wire [5:0] out;
Squares DUT(in,out);
initial begin
    for(integer count=0;count<8;count=count+1) begin
        in=count[2:0];#10;
    end
    $finish;
end
endmodule
