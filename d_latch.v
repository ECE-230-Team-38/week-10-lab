module d_latch (
    input D,
    input E,
    output reg Q,
    output notQ
);

    always @(D,E) begin
        if(E)
            Q <= D;
    end
    
    assign notQ = ~Q;
endmodule
