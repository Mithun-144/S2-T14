module tb_normalservice;
    // Inputs to normalservice module
    reg [0:5] A;
    
    // Outputs from normalservice module
    wire [0:3] totaltime;
    wire [0:5] totalcost;
    wire carry1,carry2;
    
    // Instantiate the normalservice module
    normalservice uut (
        .A(A),
        .totaltime(totaltime),
        .totalcost(totalcost),
        .carry1(carry1),
        .carry2(carry2)
    );
    
    initial begin
         A = 6'b000000;
        // No services selected
        repeat(63)#10 A+=6'b000001;
        #10 $finish;
    end
    // Test procedure
    initial begin
        // Display Header
        $display("Time   | A      | Total Cost  | Total Time ");        
        // Monitor outputs
        $monitor("%3d    | %b |   %b%b   |    %b%b    ", $time, A ,carry1,totalcost,carry2,totaltime);
    end
endmodule
