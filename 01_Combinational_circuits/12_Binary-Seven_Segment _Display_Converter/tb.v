`timescale 1ns / 1ps
module tb12();
reg [3:0]in;
wire a,b,c,d,e,f,g;
Binary_SevenSegment_Display DUT(in,a,b,c,d,e,f,g);
initial begin
    in=4'b0000;
    for(integer count=0;count<10;count=count+1) begin
        in=count[3:0];#10;
    end
    $finish;
end       
endmodule
