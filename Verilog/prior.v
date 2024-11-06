module f_adder(input a, b, cin, output sum, carry);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (cin & (a ^ b));
endmodule

module six_bit_adder(input [5:0] a, input [5:0] b, output [5:0] sum, output carry);
    wire c1, c2, c3, c4, c5;

    // Instantiate full adders for each bit
    f_adder fa0(a[0], b[0],1'b0, sum[0], c1);
    f_adder fa1(a[1], b[1], c1, sum[1], c2);
    f_adder fa2(a[2], b[2], c2, sum[2], c3);
    f_adder fa3(a[3], b[3], c3, sum[3], c4);
    f_adder fa4(a[4], b[4], c4, sum[4], c5);
    f_adder fa5(a[5], b[5], c5, sum[5], carry);
endmodule

module four_bit_adder(input [3:0] a, input [3:0] b,  output [3:0] sum, output carry);
    wire c1, c2, c3;

    // Instantiate full adders for each bit
    f_adder fa0(a[0], b[0],1'b0, sum[0], c1);
    f_adder fa1(a[1], b[1], c1, sum[1], c2);
    f_adder fa2(a[2], b[2], c2, sum[2], c3);
    f_adder fa3(a[3], b[3], c3, sum[3], carry);
endmodule

module priorityservice(A,ex, totaltime, totalcost, carry1, carry2 ,  totalrtime, proritycost, carry3, carry4,costreturn,carry5);
    input [0:5] A;
    input ex;
    output [0:3] totaltime;
    output [0:5] totalcost;
    output [0:3] proritycost;//prority fee
    output [0:3] totalrtime;
    output [0:5] costreturn;//cost to be returned if serving time exceeds estimated time
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
    wire [0:5]w; 
    wire [0:5]a;
    wire [0:5]y;
    wire [0:5]b;
    wire [0:3]w1;
    wire [0:3]x1;
    wire [0:3]y1;
    wire [0:3]z1;
    wire [0:3]w2;
    wire [0:3]x2;
    wire [0:3]y2;
    wire [0:3]z2;
    wire [0:3]w3;
    wire [0:3]x3;
    wire [0:3]y3;
    wire [0:3]z3;
    wire [0:5]w4;
    wire [0:5]x4;
    wire [0:5]y4;
    wire [0:5]z4;
    wire c1, c2, c3, c4,c5;
    wire d1, d2, d3, d4,d5;
    wire e1, e2, e3 ,e4,e5;

    wire q1, q2, q3, q4,q5;
    wire t1, t2, t3, t4,t5;
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

    
    // Assigning priority fee and times for each service for priority
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

    // Adding all costs using six_bit_adder modules
    six_bit_adder add1(costa1, costa2, w, c1);
    six_bit_adder add2(w, costa3, a, c2);
    six_bit_adder add3(a, costa4, y, c3);
    six_bit_adder add4(y, costa5, b, c4);
    six_bit_adder add5(b, costa6, totalcost, c5);
    assign carry1 = c1|c2|c3|c4|c5;

    // Adding all times using four_bit_adder modules
    four_bit_adder add6(timea1, timea2,w1, d1);
    four_bit_adder add7(w1, timea3, x1, d2);
    four_bit_adder add8(x1, timea4,  y1, d3);
    four_bit_adder add9(y1, timea5, z1, d4);
    four_bit_adder add10(z1, timea6,  totaltime, d5);
      assign carry2 = d1|d2|d3|d4|d5;

       // Adding all priority costs using four_bit_adder modules
    four_bit_adder add11(rcosta1, rcosta2, w2, q1);
    four_bit_adder add21(w2, rcosta3, x2, q2);
    four_bit_adder add31(x2, rcosta4, y2, q3);
    four_bit_adder add41(y2, rcosta5, z2, q4);
    four_bit_adder add51(z2, rcosta6, proritycost, q5);
    assign carry3 = q1|q2|q3|q4|q5; 

    // Adding all reduced times using four_bit_adder modules
    four_bit_adder add61(rtimea1, rtimea2,w3, t1);
    four_bit_adder add71(w3, rtimea3, x3, t2);
    four_bit_adder add81(x3, rtimea4,  y3, t3);
    four_bit_adder add91(y3, rtimea5, z3, t4);
    four_bit_adder add101(z3, rtimea6,  totalrtime, t5);
      assign carry4 = t1|t2|t3|t4|t5;

     // Adding all return_costs using six_bit_adder modules
    six_bit_adder add111(recosta1, recosta2, w4, e1);
    six_bit_adder add211(w4, recosta3, x4, e2);
    six_bit_adder add113(x4, recosta4, y4, e3);
    six_bit_adder add411(y4, recosta5, z4, e4);
    six_bit_adder add511(z4, recosta6,returncost, e5);
    assign carry5 = e1|e2|e3|e4|e5;

    assign costreturn = ex ? returncost : 6'b000000;
endmodule
