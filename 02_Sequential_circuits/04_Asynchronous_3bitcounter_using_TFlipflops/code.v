`timescale 1ns / 1ps
module tff(
input t,rst,clk,
output reg q);
always @(negedge clk or posedge rst) begin
    if(rst)
        q<=0;
    else if(t)
        q<=~q;
    else
        q<=q;
    end
endmodule

module counter(
input rst,clk,
output [2:0]q,qbar
    );
    wire t;
    assign t=1'b1;
    tff i1(t,rst,clk,q[0]);
    tff i2(t,rst,q[0],q[1]);
    tff i3(t,rst,q[1],q[2]);
    assign qbar=~q;   
endmodule
