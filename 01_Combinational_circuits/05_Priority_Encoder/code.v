`timescale 1ns / 1ps
module priority_encoder(
input [7:0]d,
output reg [2:0]out
    );
    
    always @(*) begin
        if(d[7])
            out=3'b111;
        else if(d[6])
            out=3'b110;
        else if(d[5])
            out=3'b101;
        else if(d[4])
            out=3'b100;
        else if(d[3])
            out=3'b011;
        else if(d[2])
            out=3'b010;
        else if(d[1])
            out=3'b001;
        else
            out=3'b000;
    end
endmodule
