`timescale 1ns / 1ps
module tb_1(

    );
    reg a,b,s;
    wire c;
    mux dut(a,b,s,c);
    initial begin
    s=0;
    a=1'b0;b=1'b1;#10;
    a=1'b1;b=1'b0;#10;
    a=1'b1;b=1'b1;#10;
    s=1;
    a=1'b0;b=1'b1;#10;
    a=1'b1;b=1'b0;#10;
    a=1'b1;b=1'b1;#10;
    $finish;
    end
    
endmodule
