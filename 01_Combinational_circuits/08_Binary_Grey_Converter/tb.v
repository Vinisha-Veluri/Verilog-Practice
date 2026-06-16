`timescale 1ns / 1ps
module tb8();
reg [3:0] in;
wire [3:0]out;
Binary_Grey_Converter DUT(in,out);
initial begin
    in=4'b0000;
    for(integer count=0;count<16;count=count+1) begin
        in=count[3:0];#10;
    end
    $finish;
 end
endmodule
