module f_adder(
    input a, b, cin,
    output sum, carry
);
    wire xor1_out, and1_out, and2_out;

    xor (xor1_out, a, b);
    xor (sum, xor1_out, cin);

    and (and1_out, a, b);
    and (and2_out, cin, xor1_out);
    or (carry, and1_out, and2_out);

endmodule

module six_bit_adder(
    input [5:0] a, input [5:0] b,
    output [5:0] sum, output carry
);
    wire c1, c2, c3, c4, c5;

    // Instantiate full adders for each bit
    f_adder fa0(a[0], b[0], 1'b0, sum[0], c1);
    f_adder fa1(a[1], b[1], c1, sum[1], c2);
    f_adder fa2(a[2], b[2], c2, sum[2], c3);
    f_adder fa3(a[3], b[3], c3, sum[3], c4);
    f_adder fa4(a[4], b[4], c4, sum[4], c5);
    f_adder fa5(a[5], b[5], c5, sum[5], carry);
endmodule

module four_bit_adder(
    input [3:0] a, input [3:0] b,
    output [3:0] sum, output carry
);
    wire c1, c2, c3;

    // Instantiate full adders for each bit
    f_adder fa0(a[0], b[0], 1'b0, sum[0], c1);
    f_adder fa1(a[1], b[1], c1, sum[1], c2);
    f_adder fa2(a[2], b[2], c2, sum[2], c3);
    f_adder fa3(a[3], b[3], c3, sum[3], carry);
endmodule

module priorityservice(A,ex, totaltime, totalcost, carry1, carry2 ,  totalrtime, totalrcost, carry3, carry4,costreturn,carry5);
    input [0:5] A;
    input ex;
    output [0:3] totaltime;
    output [0:5] totalcost;
    output [0:3] totalrcost;
    output [0:3] totalrtime;
    output [0:5] costreturn;
    output [0:5] returncost;
    output carry1;
    output carry2;
    output carry3;
    output carry4;
    output carry5;
    // Internal wires for costs and times per service
    wire [0:5] costa1, costa2, costa3, costa4, costa5, costa6;
    wire [0:3] timea1, timea2, timea3, timea4, timea5, timea6;

    wire [0:3] rcosta1, rcosta2, rcosta3, rcosta4, rcosta5, rcosta6;
    wire [0:3] rtimea1, rtimea2, rtimea3, rtimea4, rtimea5, rtimea6;

    wire [0:5] recosta1, recosta2, recosta3, recosta4, recosta5, recosta6;

    // Wires for intermediate summation results and carry bits
    wire [0:5] w, a, y, b;
    wire [0:3] w1, x1, y1, z1;
    wire [0:3] w2, x2, y2, z2;
    wire [0:3] w3, x3, y3, z3;
    wire [0:5] w4, x4, y4, z4;
    wire c1, c2, c3, c4, c5;
    wire d1, d2, d3, d4, d5;
    wire e1, e2, e3, e4, e5;

    wire q1, q2, q3, q4, q5;
    wire t1, t2, t3, t4, t5;

    // Assigning costs and times for each service
    assign costa1 = A[0] ? 6'b010100 : 6'b000000;
    assign costa2 = A[1] ? 6'b010100 : 6'b000000;
    assign costa3 = A[2] ? 6'b011110 : 6'b000000;
    assign costa4 = A[3] ? 6'b011110 : 6'b000000;
    assign costa5 = A[4] ? 6'b001010 : 6'b000000;
    assign costa6 = A[5] ? 6'b001010 : 6'b000000;

    // Times for each service
    assign timea1 = A[0] ? 4'b0101 : 4'b0000;
    assign timea2 = A[1] ? 4'b0101 : 4'b0000;
    assign timea3 = A[2] ? 4'b0111 : 4'b0000;
    assign timea4 = A[3] ? 4'b0111 : 4'b0000;
    assign timea5 = A[4] ? 4'b0011 : 4'b0000;
    assign timea6 = A[5] ? 4'b0011 : 4'b0000;

    // Assigning reduced costs and times for each service
    assign rcosta1 = A[0] ? 4'b0010 : 4'b0000;
    assign rcosta2 = A[1] ? 4'b0010 : 4'b0000;
    assign rcosta3 = A[2] ? 4'b0011 : 4'b0000;
    assign rcosta4 = A[3] ? 4'b0011 : 4'b0000;
    assign rcosta5 = A[4] ? 4'b0001 : 4'b0000;
    assign rcosta6 = A[5] ? 4'b0001 : 4'b0000;

    assign rtimea1 = A[0] ? 4'b0100 : 4'b0000;
    assign rtimea2 = A[1] ? 4'b0100 : 4'b0000;
    assign rtimea3 = A[2] ? 4'b0110 : 4'b0000;
    assign rtimea4 = A[3] ? 4'b0110 : 4'b0000;
    assign rtimea5 = A[4] ? 4'b0010 : 4'b0000;
    assign rtimea6 = A[5] ? 4'b0010 : 4'b0000;

    // Assigning cost to be returned for each service
    assign recosta1 = A[0] ? 6'b001010 : 6'b000000;
    assign recosta2 = A[1] ? 6'b001010 : 6'b000000;
    assign recosta3 = A[2] ? 6'b001111 : 6'b000000;
    assign recosta4 = A[3] ? 6'b001111 : 6'b000000;
    assign recosta5 = A[4] ? 6'b000101 : 6'b000000;
    assign recosta6 = A[5] ? 6'b000101 : 6'b000000;

    // Adding all costs using six_bit_adder modules with gate-level carry calculation
    six_bit_adder add1(costa1, costa2, w, c1);
    six_bit_adder add2(w, costa3, a, c2);
    six_bit_adder add3(a, costa4, y, c3);
    six_bit_adder add4(y, costa5, b, c4);
    six_bit_adder add5(b, costa6, totalcost, c5);
    
    // Carry1 = c1 OR c2 OR c3 OR c4 OR c5 using gate-level modeling
    or(carry1, c1, c2, c3, c4, c5);

    // Adding all times using four_bit_adder modules with gate-level carry calculation
    four_bit_adder add6(timea1, timea2, w1, d1);
    four_bit_adder add7(w1, timea3, x1, d2);
    four_bit_adder add8(x1, timea4, y1, d3);
    four_bit_adder add9(y1, timea5, z1, d4);
    four_bit_adder add10(z1, timea6, totaltime, d5);
    
    // Carry2 = d1 OR d2 OR d3 OR d4 OR d5 using gate-level modeling
    or(carry2, d1, d2, d3, d4, d5);

    // Adding all reduced costs using four_bit_adder modules with gate-level carry calculation
    four_bit_adder add11(rcosta1, rcosta2, w2, e1);
    four_bit_adder add12(w2, rcosta3, x2, e2);
    four_bit_adder add13(x2, rcosta4, y2, e3);
    four_bit_adder add14(y2, rcosta5, z2, e4);
    four_bit_adder add15(z2, rcosta6, totalrcost, e5);
    
    // Carry3 = e1 OR e2 OR e3 OR e4 OR e5 using gate-level modeling
    or(carry3, e1, e2, e3, e4, e5);

    // Adding all reduced times using four_bit_adder modules with gate-level carry calculation
    four_bit_adder add16(rtimea1, rtimea2, w3, q1);
    four_bit_adder add17(w3, rtimea3, x3, q2);
    four_bit_adder add18(x3, rtimea4, y3, q3);
    four_bit_adder add19(y3, rtimea5, z3, q4);
    four_bit_adder add20(z3, rtimea6, totalrtime, q5);
    
    // Carry4 = q1 OR q2 OR q3 OR q4 OR q5 using gate-level modeling
    or(carry4, q1, q2, q3, q4, q5);

    // Adding all return costs using six_bit_adder modules with gate-level carry calculation
    six_bit_adder add21(recosta1, recosta2, w4, t1);
    six_bit_adder add22(w4, recosta3, x4, t2);
    six_bit_adder add23(x4, recosta4, y4, t3);
    six_bit_adder add24(y4, recosta5, z4, t4);
    six_bit_adder add25(z4, recosta6, returncost, t5);
    
    // Carry5 = t1 OR t2 OR t3 OR t4 OR t5 using gate-level modeling
    or(carry5, t1, t2, t3, t4, t5);

    assign costreturn = ex ? returncost : 6'b000000;
endmodule
