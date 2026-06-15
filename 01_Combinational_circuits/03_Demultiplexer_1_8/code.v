timescale 1ns / 1ps
module Demux_1_8(
input d,
input [2:0]s,
output reg [7:0]out
    );
    
    always @(*) begin
        out=8'b00000000;
        case(s)
             3'b000:
                out[0]=d;
             3'b001:
                out[1]=d;
             3'b010:
                out[2]=d;
             3'b011:
                out[3]=d;
             3'b100:
                out[4]=d;
             3'b101:
                out[5]=d;
             3'b110:
                out[6]=d;
             3'b111:
                out[7]=d;
             default:
                out=8'b00000000;
         endcase
     end
                          
endmodule
