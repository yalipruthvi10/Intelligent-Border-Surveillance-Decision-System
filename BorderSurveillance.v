module BorderSurveillance(
    input motion,
    input ir,
    input vibration,
    output reg [1:0] decision
);

always @(*) begin
    case ({motion, ir, vibration})
        3'b000: decision = 2'b00; // IGNORE
        3'b001,
        3'b010,
        3'b100: decision = 2'b01; // WARNING
        default: decision = 2'b10; // ALERT
    endcase
end

endmodule
