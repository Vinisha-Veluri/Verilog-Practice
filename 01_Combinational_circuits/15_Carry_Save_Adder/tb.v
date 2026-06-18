`timescale 1ns / 1ps
module tb15();
reg [3:0]a,b,c;
wire [5:0]out;
wire cout;
CSA DUT(a,b,c,out,cout);
initial begin
    a=4'b1000;b=4'b0101;c=4'b0001;#10;
    a=4'b1100;b=4'b1111;c=4'b1101;#10;
    a=4'b1011;b=4'b0111;c=4'b0011;#10;
    $finish;
    end
endmodule
