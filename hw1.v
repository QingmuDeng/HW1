module demorgan
(
    input A,    // first bit of input
    input B,    // second bit of input
    output nA,
    output nB,
    output nAandnB
);

    wire nA;
    wire nB;
    not Ainv(nA, A);
    not Binv(nB, B);
    and andgate(nAandnB, nA, nB);

endmodule
