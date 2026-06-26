`timescale 1ns / 1ps
module ff(
input r,s,clk,
output reg q,
output qbar
    );
    always @(posedge clk) begin
        if(!s&!r)
            q<=q;
        else if(!s&r)
            q<=0;
        else if(s&!r)
            q<=1;
        else
            q<=1'bx;            
    end
    assign qbar=~q;
endmodule
