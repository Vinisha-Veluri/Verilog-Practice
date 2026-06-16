`timescale 1ns / 1ps
module tb11();
reg [3:0]in;
reg p;
wire error,error1;
Parity_Checker_even DUT(in,p,error);
Parity_Checker_odd DUT1(in,p,error1);
initial begin 
    in=4'b0000;
    p=1'b1;
    in=4'b0101;#10;
    in=4'b0111;#10;
    in=4'b1111;#10;
    in=4'b0001;#10;
    p=1'b0;
    in=4'b0101;#10;
    in=4'b0111;#10;
    in=4'b1111;#10;
    in=4'b0001;#10;
    $finish;
   end
endmodule
