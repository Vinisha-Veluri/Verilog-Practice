`timescale 1ns / 1ps
module CLA(
input [3:0]a,b,
input cin,
output [3:0]out,
output cout
    );
    wire [3:0] p,g,c;
    assign p=a^b;
    assign g=a&b;
    
    assign c[0]=cin;
    assign c[1]=cin&p[0]|g[0];
    assign c[2]=(cin&p[0]|g[0])&p[1]|g[1];
    assign c[3]=((cin&p[0]|g[0])&p[1]|g[1])&p[2]|g[2];
    assign cout=(((cin&p[0]|g[0])&p[1]|g[1])&p[2]|g[2])&p[3]|g[3];
    
    assign out=p^c;
    
endmodule
