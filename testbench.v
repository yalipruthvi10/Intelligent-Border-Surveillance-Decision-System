module testbench;

reg motion, ir, vibration;
wire [1:0] decision;

BorderSurveillance dut (
    .motion(motion),
    .ir(ir),
    .vibration(vibration),
    .decision(decision)
);

initial begin
    $dumpfile("wave.vcd");   // waveform file
    $dumpvars(0, testbench);

    motion=0; ir=0; vibration=0; #10;
    motion=1; ir=0; vibration=0; #10;
    motion=1; ir=1; vibration=0; #10;
    motion=1; ir=1; vibration=1; #10;

    $finish;
end

endmodule
