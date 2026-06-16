'timescale 1ns / 1ps
module decimal_BCD_encoder(
input [9:0]d,
output reg [3:0] out
    );
    always @(*) begin
        case(d)
            
            10'b0000000001: out= 4'b0000;
            10'b0000000010: out= 4'b0001;
            10'b0000000100: out= 4'b0010;
            10'b0000001000: out= 4'b0011;
            10'b0000010000: out= 4'b0100;
            10'b0000100000: out= 4'b0101;
            10'b0001000000: out= 4'b0110;
            10'b0010000000: out= 4'b0111;
            10'b0100000000: out= 4'b1000;
            10'b1000000000: out= 4'b1001;
        endcase
    end
endmodule


module decimal_BCD_encoder_assign(
input [9:0]d,
output [3:0] out
    );
    assign out[0]=d[1]|d[3]|d[5]|d[7]|d[9];
    assign out[1]=d[2]|d[3]|d[6]|d[7];
    assign out[2]=d[4]|d[5]|d[6]|d[7];
    assign out[3]=d[8]|d[9]; 
endmodule
