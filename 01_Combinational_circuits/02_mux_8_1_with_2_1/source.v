`timescale 1ns / 1ps
module mux_8_1(
input [7:0]i,[2:0]s,
output out
    );
    wire t1,t2,t3,t4,t5,t6;
    mux j1(i[0],i[1],s[0],t1);
    mux j2(i[2],i[3],s[0],t2);
    mux j3(i[4],i[5],s[0],t3);
    mux j4(i[6],i[7],s[0],t4);
    mux j5(t1,t2,s[1],t5);
    mux j6(t3,t4,s[1],t6);
    mux j7(t5,t6,s[2],out);
       
endmodule
