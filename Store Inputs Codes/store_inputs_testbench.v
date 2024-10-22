`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:09:21 PM
// Design Name: 
// Module Name: task_1_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module store_inputs_testbench;

    reg [9:0] switches;
    reg rst;
    reg clk;
    wire [9:0] sequence;
    
    store_inputs uut (
        .switches(switches),
        .rst(rst),
        .clk(clk),
        .sequence(sequence)
    );
    always #2 clk=~clk;
    initial begin
        // Initialize Inputs
       
        switches = 10'b0;    
        rst = 1'b0;        
        clk=1'b0;
 
        #30;
        switches[0] = 1;
        switches[2] = 1;
        switches[3] = 1;
        switches[5] = 1;
        switches[6] = 1;
        switches[7] = 1;
        switches[9] = 1;

        #10;   
        rst = 1;    
        #5;
        rst = 0; 
           
        #25    
        switches[0] = 0;
        switches[6] = 0;
        switches[8] = 1;
        switches[9] = 0;
        
        #100
        rst = 1;    
        #5;
        rst = 0; 
    end

endmodule

