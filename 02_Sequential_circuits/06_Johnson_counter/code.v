`timescale 1ns / 1ps
module Johnson_counter(
input rst,clk,
output reg [3:0]q
    );
    always @(posedge clk) begin
        if(rst)
            q<=4'b0;
        else begin
            q[2:0]<=q[3:1];
            q[3]<=~q[0];
        end
    end
        
endmodule
