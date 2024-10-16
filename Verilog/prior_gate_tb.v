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