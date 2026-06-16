`timescale 1ns / 1ps
module tb10();
reg [3:0]in;
wire p;
parity_generator_even DUT(in,p);
parity_generator_odd DUT1(in,p1);
initial begin
    in=4'b0101;#10;
    in=4'b0111;#10;
    in=4'b1111;#10;
    in=4'b0001;#10;
    $finish;
    end
endmodule
