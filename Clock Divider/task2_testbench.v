`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 03:31:30 PM
// Design Name: 
// Module Name: task2_testbench
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


module task2_testbench;
    reg clk;         
         
    wire clk_out;    

    ClockDivider uut (
        .clk(clk),

        .clk_out(clk_out)
    );
    always begin 

        #5 clk = ~clk; 
    end 
    initial begin
        clk = 0; 
 
        #1000000000;
        $finish;
    end
  
endmodule


