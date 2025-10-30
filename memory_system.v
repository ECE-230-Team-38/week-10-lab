module memory_system (
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    reg [7:0] dA, dB, dC, dD;
    reg eA, eB, eC, eD;
    
    always @(*) begin
        dA = 8'b0;
        dB = 8'b0;
        dC = 8'b0;
        dD = 8'b0;
        
        eA = 1'b0;
        eB = 1'b0;
        eC = 1'b0;
        eD = 1'b0;
        
        case (addr)
            2'b00: begin dA = data; eA = store; end
            2'b01: begin dB = data; eB = store; end
            2'b10: begin dC = data; eC = store; end
            2'b11: begin dD = data; eD = store; end
        endcase
    end
    
    wire [7:0] qA, qB, qC, qD;
    
    byte_memory A(
        .data(dA),
        .store(eA),
        .memory(qA)
    );
    
    byte_memory B(
        .data(dB),
        .store(eB),
        .memory(qB)
    );
    
    byte_memory C(
        .data(dC),
        .store(eC),
        .memory(qC)
    );
    
    byte_memory D(
        .data(dD),
        .store(eD),
        .memory(qD)
    );
    
    reg [7:0] mux_out;
    always @(*) begin
        case(addr)
            2'b00: mux_out = qA;
            2'b01: mux_out = qB;
            2'b10: mux_out = qC;
            2'b11: mux_out = qD;
        endcase
    end
    
    assign memory = mux_out;
        
endmodule
