module jkff(
input j,k,clk,
output reg q,
output qbar
);
    initial begin
        q=1'b0;
    end
    
    always @(posedge clk) begin
        if(!j&!k)
            q<=q;
        else if(!j&k)
            q<=1'b0;
        else if(j&!k)
            q<=1'b1;
        else if(j&k)
            q<=~q;   
        else
            q<=1'bx;
     end 
     
     assign qbar=~q;
endmodule


module dff(
input d,clk,
output reg q,
output qbar
);
    initial begin
        q=1'b0;
    end
    
    always @(posedge clk) begin
        q<=d;
    end
    
    assign qbar=~q;
endmodule


module tff(
input t,clk,
output reg q,
output qbar
);
    initial begin
        q=1'b0;
    end
    
    always @(posedge clk) begin
        if(t)
            q<=~q;
        else
            q<=q;
     end
     
     assign qbar=~q;
endmodule

