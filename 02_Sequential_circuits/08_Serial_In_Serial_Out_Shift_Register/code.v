`timescale 1ns / 1ps
module SISO(
input rst,clk,sin,
output reg sout
    );
    reg [3:0]s;
    always @(posedge clk) begin
        if(rst) begin
            s<=4'b0;
            sout<=0;
            end
        else 
            {sout,s}<={s[3:0],sin};
    end 
endmodule
