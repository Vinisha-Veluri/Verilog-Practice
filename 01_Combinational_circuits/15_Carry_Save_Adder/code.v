`timescale 1ns / 1ps
module FA(
input a,b,cin,
output d,cout);
    assign d=a^b^cin;
    assign cout=((a^b)&cin)|(a&b);
endmodule

module CSA(
input [3:0]a,b,c,
output [5:0]out,
output cout
    );
    wire [4:0] sum;
    wire [3:0] carry;
    wire [3:1]co;
    assign sum[4]=1'b0;
    FA s0(a[0],b[0],c[0],sum[0],carry[0]);
    FA s1(a[1],b[1],c[1],sum[1],carry[1]);
    FA s2(a[2],b[2],c[2],sum[2],carry[2]);
    FA s3(a[3],b[3],c[3],sum[3],carry[3]);
    //assign carry={carry[3:0],1'b0};
    //FA o0(sum[0],carry[0],1'b0,out[0],co[0]);
    FA o1(sum[1],carry[0],1'b0,out[1],co[1]);
    FA o2(sum[2],carry[1],co[1],out[2],co[2]);
    FA o3(sum[3],carry[2],co[2],out[3],co[3]);
    FA o4(sum[4],carry[3],co[3],out[4],cout);
    assign out[0]=sum[0];    
    assign out[5]=cout;
    
endmodule
