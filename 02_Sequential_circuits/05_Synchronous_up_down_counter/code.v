`timescale 1ns / 1ps
module tff(
input t,clk,rst,
output reg d);
always @(posedge clk or posedge rst) begin
    if(rst)
        d<=1'b0;
    else if(t)
        d<=~d;
    else
        d<=d;
end
endmodule
        

module up_down_counter(
input clk,rst,ud,
output [2:0]q
    );
    wire a,b;
    assign a=ud?~q[0]:q[0];
    assign b=ud?~q[0]&~q[1]:q[0]&q[1];
    tff in1(1,clk,rst,q[0]);
    tff in2(a,clk,rst,q[1]);
    tff in3(b,clk,rst,q[2]);
        
endmodule
