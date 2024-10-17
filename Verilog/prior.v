module f_adder(input a,b,cin ,output sum,carry);
assign sum = (a^b^cin);
assign carry = (a&b|(cin&(a^b)));
endmodule

module six_bit_adder(input [5:0]a,input [5:0]b,input c_in, output[5:0]sum ,output carry);
wire c1,c2,c3,c4,c5;
f_adder z(a[0],b[0],c_in,sum[0],c1);
f_adder y(a[1],b[1],c1,sum[1],c2);
f_adder c(a[2],b[2],c2,sum[2],c3);
f_adder d(a[3],b[3],c3,sum[3],c4);
f_adder e(a[4],b[4],c4,sum[4],c5);
f_adder f(a[5],b[5],c5,sum[5],carry);
endmodule

module four_bit_adder(input [3:0]a,input [3:0]b,input c_in, output[3:0]sum ,output carry);
wire c1,c2,c3;
f_adder z(a[0],b[0],c_in,sum[0],c1);
f_adder y(a[1],b[1],c1,sum[1],c2);
f_adder c(a[2],b[2],c2,sum[2],c3);
f_adder f(a[3],b[3],c3,sum[3],carry);
endmodule

