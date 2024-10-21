# PRIORITY-DINE

<!-- First Section -->
## Team Details
<details>
  <summary>Meet the team</summary>

  - Semester: 3rd Sem B. Tech. CSE

  - Section: S2

  - Member-1: Mithun Patil V N , 231CS234 , mithunpatilvn.231cs234@nitk.edu.in 

  - Member-2: Pranav Venkat Y K , 231CS242 , pranavvenkatyk.231cs242@nitk.edu.in

  - Member-3: Yashwanth R , 231CS265 , yashwanthr.231cs265@nitk.edu.in
</details>

<!-- Second Section -->
## Abstract
<details>
  <summary>Key Takeaways</summary>
  
  1. **Motivation**:
  The inspiration for this project came from observing a gap in our campus food court services. Due to time constraints between classes, students often struggle with long wait timesfor their orders. While the food court was willing to offer a priority service for an additionalfee, there was no effective channel to facilitate this option. This project aims to bridge that gapby providing a platform where students can pay extra to receive their orders faster, enhancing
convenience and efficiency for both customers and the food court.

2. **Problem Statement**:
Priority Dine was created to solve this problem. It lets customers choose the order in
which their food is served—whether they want their drink first, their starter, or the main
course right away. This makes the dining experience more enjoyable for customers because
they can get their meal the way they prefer.
For hotel and restaurant owners, Priority Dine is also useful because it keeps track of all the
orders for the day. This helps owners know how much food is being ordered and can assist in
managing staff and supplies more efficiently. Overall, Priority Dine makes dining more flexible
for customers and more organized for businesses.

3. **Features**:
Priority Dine is a special service that helps people enjoy their food just the way they want.
We have three choices:
    1. **Priority Service**: If you want your food really fast, you can pay a little extra, and
it will come to you sooner.
    2. **Standard Service**: This is the regular way. You pay the normal price, and your food
comes when it usually does.
    3. **Discounted Service**: If your food takes too long, you get some money taken off your bill.

This way, everyone can choose how they want their food. It makes eating out more fun
and helps restaurants serve their customers better. Priority Dine helps make sure everyone is
happy when they eat!
    

</details>

<!--Third Section-->
## Block Diagram
<details>
  <summary>Click To See</summary>
  
  ![S2-T14](https://github.com/Mithun-144/S2-T14/blob/65d086898b42422ce58c8c3a66e49b8f8ace7ffe/Snapshots/S2-T14.drawio.png)
</details>

## Working
<details>
  <summary>Flow chart of working</summary>
  
  ![Flow Chart](https://github.com/Mithun-144/S2-T14/blob/15761d4b806e93c2fe83d70f696f7c4df7943578/Snapshots/working.drawio%20(1).png)
</details>

<details>
  <summary>Description Of Working</summary>

- *Menu Sections (Starters, Main Course, Dessert)*:

The menu is divided into these three categories. The items from these categories can be ordered.


- *Availability Check (Down Counter)*:

For each item ordered from a specific section, a down counter checks its availability.

This is represented by LED:

Light On: Item is available.

Light Off: Item is not available.

- *Order Priority Input*:

The system takes input for order priority, determining which section (Starters, Main Course, or
Dessert) should be served first.
This process involves a comparator, which compares the input priorities to decide the order in which
the items should be prepared and served.

- *Service Type Input (Normal/Priority)*:

The customer can select between two types of services:
- Normal Service
- Priority Service

- *Cost Calculation*:

The cost is calculated based on the items ordered and the type of service selected.

- *Estimated Time Display*:

Once the service type and order details are entered, the system calculates and displays the estimated time required to prepare the order.

An Order Ready Alarm is activated once the order is completed within the estimated time.
Priority Service:

- *For priority service*:

An additional Priority Fee (12.5 percent of the total cost) is applied.
The estimated time for the order is reduced.

- *If the time to serve exceeds the reduced time*:

A portion of the money (50percent of the cost) is returned to the customer.
The Order Ready Alarm is activated to indicate when the order is ready.

- *Timer and Comparator Logic*:

A timer and comparator are used to track the time taken to prepare the order.
If the preparation time exceeds the estimated or reduced time, the system triggers actions like money
return for priority customers.

A Up Counter is used to keep track total orders of the day.
</details>

<details>
  <summary>Truth Table</summary>
    
  Time   | A      | Total Cost  | Total Time |Total Time(Pr)  |Total Prioriy cost |Time Exceeded |Cost Return |
  |-------|-------|-------------|------------|----------------|-------------------|--------------|------------|
  0    | 000000 |   0000000   |    00000   |       00000    |          00000    |      0       |  000000      |  
  5    | 000000 |   0000000   |    00000   |       00000    |          00000    |      1       |  000000      | 
 10    | 000001 |   0001010   |    00011   |       00010    |          00001    |      0       |  000000      |  
 15    | 000001 |   0001010   |    00011   |       00010    |          00001    |      1       |  000101      |  
 20    | 000010 |   0001010   |    00011   |       00010    |          00001    |      0       |  000000      | 
 25    | 000010 |   0001010   |    00011   |       00010    |          00001    |      1       |  000101      |  
 30    | 000011 |   0010100   |    00110   |       00100    |          00010    |      0       |  000000      |  
 35    | 000011 |   0010100   |    00110   |       00100    |          00010    |      1       |  001010      |
 40    | 000100 |   0011110   |    00111   |       00110    |          00011    |      0       |  000000      |
 45    | 000100 |   0011110   |    00111   |       00110    |          00011    |      1       |  001111      |
 80    | 001000 |   0011110   |    00111   |       00110    |          00011    |      0       |  000000      |  
 85    | 001000 |   0011110   |    00111   |       00110    |          00011    |      1       |  001111      |
 160   | 010000 |   0010100   |    00101   |       00100    |          00010    |      0       |  000000      | 
 165   | 010000 |   0010100   |    00101   |       00100    |          00010    |      1       |  001010      |
 320   | 100000 |   0010100   |    00101   |       00100    |          00010    |      0       |  000000      | 
 325   | 100000 |   0010100   |    00101   |       00100    |          00010    |      1       |  001010      |
 620   | 111110 |   1101110   |    11011   |       10110    |          01011    |      0       |  000000      | 
 625   | 111110 |   1101110   |    11011   |       10110    |          01011    |      1       |  110111      |  
 630   | 111111 |   1111000   |    11110   |       11000    |          01100    |      0       |  000000      |  
 635   | 111111 |   1111000   |    11110   |       11000    |          01100    |      1       |  111100      |  
 640   | 111111 |   1111000   |    11110   |       11000    |          01100    |      0       |  000000      |
</details>

<!--Fourth Section-->
## Logisim Circuit Diagram

<details>
  <summary>Main Circuit</summary>
  
  ![Main Circuit]()
</details>

</details>

<details>
  <summary>Priority Service</summary>
  
  ![Priority Service](https://github.com/Mithun-144/S2-T14/blob/cd1a77baae7e4c7e56e0f6a93bcac45629732bd7/Snapshots/Priority%20Service.png)
</details>

<details>
  <summary>Normal Service</summary>
  
  ![Normal Service](https://github.com/Mithun-144/S2-T14/blob/8fb644998055093e44b7d3f01b043d655ce38dce/Snapshots/Normal%20Service.png)
</details>

<details>
  <summary>50% circuit</summary>
  
  ![50%](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/fifty_percent.png)
</details>

<details>
  <summary>5-bit up counter</summary>
  
   ![5-bit up counter](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/five_bit_up_counter.png)
</details>

<details>
  <summary>5 by 2 Multiplier</summary>
  
   ![5 by 2 Multiplier](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/five_by_2_multiplier.png)
</details>

<details>
  <summary>4-bit-down-counter</summary>
  
  ![4-bit-down-counterr](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/four_bit_down_counter.png)
</details>

<details>
  <summary>7-bit-up-counter</summary>

   ![7-bit-up-counter](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/seven_bit_up_counter.png)
</details>

<details>
  <summary>6-bit-adder</summary>
  
   ![6-bit-adder](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/six_bit_adder.png)
  
</details>

<details>
  <summary>6-bit-comparator</summary>

   ![6-bit-comparator](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/six_bit_comparator.png)
</details>

<details>
  <summary>3 by 2 Multiplier</summary>

![3*2 Multiplier](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/three_by_2_multiplier.png)
</details>

<details>
  <summary>12.5%</summary>
  
  ![12.5%](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/twelve_percent.png)
</details>

<details>
  <summary>2-bit-Comparator</summary>

   ![2-bit-Comparator](https://github.com/Mithun-144/S2-T14/blob/6ad23a8b9fe9ba29bcf8b92b40140781b569b621/Snapshots/two_bit_comparator.png)
</details>


<!--Fifth Section-->
## Verilog
<details>
  <summary>Gate Level Modelling</summary>

```verilog
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

  ```
</details>

<details>
  <summary>Data Flow Modelling</summary>

  ```verilog
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

       // Adding all reduced costs using four_bit_adder modules
    four_bit_adder add11(rcosta1, rcosta2, w2, q1);
    four_bit_adder add21(w2, rcosta3, x2, q2);
    four_bit_adder add31(x2, rcosta4, y2, q3);
    four_bit_adder add41(y2, rcosta5, z2, q4);
    four_bit_adder add51(z2, rcosta6, totalrcost, q5);
    assign carry3 = q1|q2|q3|q4|q5; 

    // Adding all times using four_bit_adder modules
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
```
</details>

<details>
  <summary>TestBench</summary>

  ```verilog
module tb_normalservice;
    // Inputs to normalservice module
    reg [0:5] A;
    reg ex;
    
    // Outputs from normalservice module
    wire [0:3] totaltime;
    wire [0:5] totalcost;
    wire [0:3]totalrtime;
    wire [0:3]totalrcost;
    wire [0:5] costreturn;
    wire carry1,carry2,carry3,carry4,carry5;
    
    // Instantiate the normalservice module
    priorityservice x(A,ex, totaltime, totalcost, carry1, carry2 ,  totalrtime, totalrcost, carry3, carry4,costreturn,carry5);

    initial
    begin
        ex=1'b0;
        forever #5 ex=~ex;
    end    
    initial begin
        A = 6'b000000;
        // No services selected
        repeat(63)#10 A+=6'b000001;
        #10 $finish;
    end
    // Test procedure
    initial begin
        // Display Header
        $display("----------------NORMAL SERVICE---------------PRIORITY SERVICE----------------------------------------------");
        $display("Time   | A      | Total Cost  | Total Time |Total Time(Pr)  |Total Prioriy cost |Time Exceeded |Cost Return");        
        // Monitor outputs
        $monitor("%3d    | %b |   %b%b   |    %b%b   |       %b%b    |          %b%b    |      %b       |  %b ", $time, A ,carry1,totalcost,carry2,totaltime,carry4,totalrtime,carry3,totalrcost,ex,costreturn);
    end
endmodule
  ```
</details>

<details>
  <summary>Truth Table</summary>
    
  Time   | A      | Total Cost  | Total Time |Total Time(Pr)  |Total Prioriy cost |Time Exceeded |Cost Return |
  |-------|-------|-------------|------------|----------------|-------------------|--------------|------------|
  0    | 000000 |   0000000   |    00000   |       00000    |          00000    |      0       |  000000      |  
  5    | 000000 |   0000000   |    00000   |       00000    |          00000    |      1       |  000000      | 
 10    | 000001 |   0001010   |    00011   |       00010    |          00001    |      0       |  000000      |  
 15    | 000001 |   0001010   |    00011   |       00010    |          00001    |      1       |  000101      |  
 20    | 000010 |   0001010   |    00011   |       00010    |          00001    |      0       |  000000      | 
 25    | 000010 |   0001010   |    00011   |       00010    |          00001    |      1       |  000101      |  
 30    | 000011 |   0010100   |    00110   |       00100    |          00010    |      0       |  000000      |  
 35    | 000011 |   0010100   |    00110   |       00100    |          00010    |      1       |  001010      |
 40    | 000100 |   0011110   |    00111   |       00110    |          00011    |      0       |  000000      |
 45    | 000100 |   0011110   |    00111   |       00110    |          00011    |      1       |  001111      |
 80    | 001000 |   0011110   |    00111   |       00110    |          00011    |      0       |  000000      |  
 85    | 001000 |   0011110   |    00111   |       00110    |          00011    |      1       |  001111      |
 160   | 010000 |   0010100   |    00101   |       00100    |          00010    |      0       |  000000      | 
 165   | 010000 |   0010100   |    00101   |       00100    |          00010    |      1       |  001010      |
 320   | 100000 |   0010100   |    00101   |       00100    |          00010    |      0       |  000000      | 
 325   | 100000 |   0010100   |    00101   |       00100    |          00010    |      1       |  001010      |
 620   | 111110 |   1101110   |    11011   |       10110    |          01011    |      0       |  000000      | 
 625   | 111110 |   1101110   |    11011   |       10110    |          01011    |      1       |  110111      |  
 630   | 111111 |   1111000   |    11110   |       11000    |          01100    |      0       |  000000      |  
 635   | 111111 |   1111000   |    11110   |       11000    |          01100    |      1       |  111100      |  
 640   | 111111 |   1111000   |    11110   |       11000    |          01100    |      0       |  000000      |
</details>

<!--Sixth Section-->
## References
<details>
 <summary>Click To See</summary> 
  
  1. M. Morris Mano, Digital Logic and Computer Design.
  2. Tutorials Point Youtube Channel.
 <url>
 http://www.youtube.com/@TutorialsPoint_ </url> 
</details>


