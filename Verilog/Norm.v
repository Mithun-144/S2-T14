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

module normalservice(A, totaltime, totalcost, carry1, carry2);
    input [0:5] A;
    output [0:3] totaltime;
    output [0:5] totalcost;
    output carry1;
    output carry2;
   
    // Internal wires for costs and times per service
    wire [0:5] costa1, costa2, costa3, costa4, costa5, costa6;
    wire [0:3] timea1, timea2, timea3, timea4, timea5, timea6;
    
    // Wires for intermediate summation results and carry bits
    wire [0:5]w; 
    wire [0:5]a;
    wire [0:5]y;
    wire [0:5]b;
    wire [0:3]w1;
    wire [0:3]x1;
    wire [0:3]y1;
    wire [0:3]z1;
    wire c1, c2, c3, c4,c5;
    wire d1, d2, d3, d4,d5;
    
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

endmodule
