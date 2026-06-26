`timescale 1ns / 1ps
module tb();
reg r,s;

rs_latch_nor i1(r,s,q,qbar);
rs_latch_nand i2(r,s,q1,qbar1);

initial begin
    r=0;s=1;#10;
    r=0;s=0;#10;
    r=1;s=0;#10;
    r=0;s=0;#10;
    r=0;s=0;#10;
    r=1;s=1;#10;
    r=1;s=0;#10;
    r=1;s=1;#10;
    $finish;
    end
endmodule
