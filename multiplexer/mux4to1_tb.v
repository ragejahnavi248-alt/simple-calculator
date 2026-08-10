`timescale 1ns/1ps

module mux4to1_tb;

    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    // Instantiate the 4:1 multiplexer
    mux4to1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin

        // Create waveform file
        $dumpfile("waveform.vcd");
        $dumpvars(0, mux4to1_tb);

        $display("======================================");
        $display("       4:1 MULTIPLEXER TEST");
        $display("======================================");
        $display("Time\tI\tS\tY");
        $display("--------------------------------------");

        // Test 1: Select I0
        I = 4'b0001;
        S = 2'b00;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        // Test 2: Select I1
        I = 4'b0010;
        S = 2'b01;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        // Test 3: Select I2
        I = 4'b0100;
        S = 2'b10;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        // Test 4: Select I3
        I = 4'b1000;
        S = 2'b11;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        // Additional tests
        I = 4'b1010;
        S = 2'b00;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        I = 4'b1010;
        S = 2'b01;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        I = 4'b1010;
        S = 2'b10;
        #10;
        $display("%0t\t%b\t%b\t%b", $time, I, S, Y);

        I = 4'b1010;
        S = 2'b11;
        #10;
        $display("%0t\t%b\t%b", $time, I, Y);

        $display("--------------------------------------");
        $display("Simulation completed successfully.");
        $display("======================================");

        $finish;
    end

endmodule