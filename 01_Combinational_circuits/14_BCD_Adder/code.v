`timescale 1ns / 1ps
module BCD_Adder(
input [3:0]a,b,
input cin,
output reg [3:0]out,
output reg cout
    );
    reg [4:0]temp;
    always @(*) begin
        temp=a+b+cin;
        if(temp>5'd9) begin
            temp=temp+5'd6;
            cout=1'b1;
            end
        else
            cout=1'b0;
        out[3:0]=temp[3:0];
        end 
        
 endmodule
