'timescale 1ns / 1ps
module tb6();
reg [9:0]d;
wire [3:0]out,out_assign;
decimal_BCD_encoder DUT(d,out);
decimal_BCD_encoder_assign DUT1(d,out_assign);
initial begin
    d=10'b0000000100; #10
    d=10'b1000000000; #10
    d=10'b0000100000; #10
    d=10'b0000001000; #10
$finish;
end
endmodule

