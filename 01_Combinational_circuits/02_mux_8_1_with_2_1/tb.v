`timescale 1ns / 1ps
module tb2();
    reg [7:0]i;
    reg [2:0]s;
    wire out;
    integer count;
    mux_8_1 DUT(i,s,out);
    initial begin
        i=8'b01010101;
        for(count=0;count<8;count=count+1) begin
            s=count[2:0];#10;
         end
         $finish;
     end
endmodule
