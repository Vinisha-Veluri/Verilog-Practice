`timescale 1ns / 1ps
module tb5();
reg [7:0] d;
wire [2:0] out;
priority_encoder DUT(d,out);
initial begin
    d=8'b00011111;#10;
    d=8'b00000000;#10;
    d=8'b10000000;#10;
    d=8'b00101010;#10;
    d=8'b00011100;#10;
    d=8'b11110000;#10;
    $finish;
end
endmodule
