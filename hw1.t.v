`include "hw1.v"

module demorgan_test ();

    reg A, B;
    /* for ~A~B */
    // wire nA, nB, nAandnB;

    // demorgan dut(A, B, nA, nB, nAandnB);

    // initial begin
    //     $display("A B | ~A ~B | ~A~B");     // Header for the truth table for nAandnB
    //     A = 0; B = 0; #1
    //     $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
    //     A = 0; B = 1; #1
    //     $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
    //     A = 1; B = 0; #1
    //     $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
    //     A = 1; B = 1; #1
    //     $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAandnB);
    // end

    /* for ~(A+B) */
    // wire AorB, notAorB;

    // demorgan dut(A, B, AorB, notAorB);

    // initial begin
    //     $display("A B | A+B | ~(A+B)");     // Header for the truth table for nAandnB
    //     A = 0; B = 0; #1
    //     $display("%b %b |  %b  |     %b", A, B, AorB, notAorB);
    //     A = 0; B = 1; #1
    //     $display("%b %b |  %b  |     %b", A, B, AorB, notAorB);
    //     A = 1; B = 0; #1
    //     $display("%b %b |  %b  |     %b", A, B, AorB, notAorB);
    //     A = 1; B = 1; #1
    //     $display("%b %b |  %b  |     %b", A, B, AorB, notAorB);
    // end

    /* for ~(A+B) */
    // wire AandB, notAandB;

    // demorgan dut(A, B, AandB, notAandB);

    // initial begin
    //     $display("A B | A&B | ~(A&B)");     // Header for the truth table for nAandnB
    //     A = 0; B = 0; #1
    //     $display("%b %b |  %b  |     %b", A, B, AandB, notAandB);
    //     A = 0; B = 1; #1
    //     $display("%b %b |  %b  |     %b", A, B, AandB, notAandB);
    //     A = 1; B = 0; #1
    //     $display("%b %b |  %b  |     %b", A, B, AandB, notAandB);
    //     A = 1; B = 1; #1
    //     $display("%b %b |  %b  |     %b", A, B, AandB, notAandB);
    // end

    /* for ~A+~B */
    wire nA, nB, nAornB;

    demorgan dut(A, B, nA, nB, nAornB);

    initial begin
        $display("A B | ~A ~B | ~A+~B");     // Header for the truth table for nAandnB
        A = 0; B = 0; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAornB);
        A = 0; B = 1; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAornB);
        A = 1; B = 0; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAornB);
        A = 1; B = 1; #1
        $display("%b %b |  %b  %b |    %b", A, B, nA, nB, nAornB);
    end

endmodule