`timescale 1ns / 1ps
module SIPO(
input rst,clk,sin,
output reg [3:0] pout
    );
    always @(posedge clk) begin
        if(rst)
            pout<=4'b0;
        else
            pout<={pout[2:0],sin};
    end
endmodule
