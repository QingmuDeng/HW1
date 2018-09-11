// ~A~B
// module demorgan
// (
//     input A,    // first bit of input
//     input B,    // second bit of input
//     output nA,
//     output nB,
//     output nAandnB
// );

//     wire nA;
//     wire nB;
//     not Ainv(nA, A);
//     not Binv(nB, B);
//     and andgate(nAandnB, nA, nB);

// endmodule


// ~(A+B) 
// module demorgan
// (
//     input A,    // first bit of input
//     input B,    // second bit of input
//     output AorB,
//     output notAorB
// );

//     wire AorB;
//     or AORB(AorB, A, B);
//     not notAORB(notAorB, AorB);

// endmodule

// ~(AB) 
// module demorgan
// (
//     input A,    // first bit of input
//     input B,    // second bit of input
//     output AandB,
//     output notAandB
// );

//     wire AandB;
//     and AandB(AandB, A, B);
//     not notAANDB(notAandB, AandB);

// endmodule

// ~A+~B
module demorgan
(
    input A,    // first bit of input
    input B,    // second bit of input
    output nA,
    output nB,
    output nAornB
);

    wire nA;
    wire nB;
    not Ainv(nA, A);
    not Binv(nB, B);
    or orgate(nAornB, nA, nB);

endmodule