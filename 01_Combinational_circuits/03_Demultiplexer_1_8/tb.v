timescale 1ns / 1ps
module tb3();
reg d;
reg [2:0]s;
wire [7:0]out;
Demux_1_8 DUT(d,s,out);
initial begin
        d=1'b1;
        for(integer count=0;count<8;count=count+1) begin
            s=count[2:0];#10;
         end
         $finish;
     end
endmodule
