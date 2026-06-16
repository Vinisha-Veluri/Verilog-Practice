`timescale 1ns / 1ps
module tb13();
reg [3:0]a,b;
reg cin;
wire [3:0]out;
wire cout;
CLA DUT(a,b,cin,out,cout);
initial begin
    a=4'b0000;b=4'b0000;
    cin=1'b0;
    a=4'b0011;b=4'b1010;#10;
    a=4'b1001;b=4'b1000;#10;
    a=4'b0101;b=4'b1110;#10;
    $finish;
    end
  
endmodule
