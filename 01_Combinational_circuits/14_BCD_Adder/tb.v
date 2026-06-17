`timescale 1ns / 1ps
module tb14();
reg [3:0]a,b;
reg cin;
wire [3:0]out;
wire cout;
BCD_Adder DUT(a,b,cin,out,cout);
initial begin
    cin=0;
    a=4'b1000;b=4'b0101;#10;
    a=4'b1001;b=4'b1001;#10;
    a=4'b0001;b=4'b1001;#10;
    cin=1;
    a=4'b1001;b=4'b1001;#10;
    a=4'b0001;b=4'b1001;#10;
    $finish;
    end
endmodule
