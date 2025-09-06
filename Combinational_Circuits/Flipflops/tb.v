`timescale 1ns / 1ps

module dff_s_tb();
    reg T, CLK, pre, rst;
    wire Q;

    // Instantiate the T Flip-Flop
    tff_s DUT(T, Q, CLK, pre, rst);

    // Clock Generation - Increased Delay
    initial CLK = 0;  
    always #5 CLK = ~CLK;  // 20ns clock period (increased)

    initial begin
        // Initialize signals
        T = 0; pre = 1; rst = 1;
        
        // Apply Reset
        #15 rst = 0;  // Deassert reset
        #15 rst = 1;

        // Apply test cases
        #20 T = 1;
        #20 T = 0;
        #20 T = 1;
        #20 T = 1;
        #20 T = 0;

        // Test preset functionality
        #20 pre = 0;
        #20 pre = 1;
        #20 T =1;
        // End simulation
        #100 $finish;
    end

    // Monitor changes
    initial begin
        $monitor("Time=%0t | CLK=%b | T=%b | pre=%b | rst=%b | Q=%b", 
                  $time, CLK, T, pre, rst, Q);
    end

endmodule
