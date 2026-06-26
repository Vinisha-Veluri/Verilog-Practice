`timescale 1ns / 1ps

module rs_latch_nor(
input r,s,
output q,qbar
    );
    assign qbar=~(s|q);
    assign q=~(r|qbar);
endmodule

module rs_latch_nand(
input r,s,
output q1,qbar1
    );
    assign q1=~(s&qbar1);
    assign qbar1=~(r&q1);
endmodule
