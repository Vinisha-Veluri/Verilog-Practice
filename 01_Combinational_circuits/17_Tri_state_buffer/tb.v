`timescale 1ns / 1ps
module tb17();
reg in,en;
wire out;
Tri_state_buffer DUT(in,en,out);
initial begin
    en=0;in=0;#10;
    en=1;in=0;#10;
    en=0;in=1;#10;
    en=1;in=1;#10;
    $finish;
    end
endmodule
