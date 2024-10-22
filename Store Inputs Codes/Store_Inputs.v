`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:04:27 PM
// Design Name: 
// Module Name: Task_1
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

module store_inputs(    
    input clk, rst,        
    input [1:0] btn,       // For better control of simulation
    input [9:0] switches,  // 10-bit binary input, 10 switches
//    output [3:0] leds,     // Display N, V, C, Z
//    output [6:0] seven_seg, // Display outputs to seven segment
//    output [3:0] seven_enable,
    output reg [9:0] sequence
    // Select which seven segment to display
);

    initial begin
        sequence = 10'b0; 
    end

    // Register update logic

    always @( posedge clk) begin
        if(rst)begin 
           sequence <= switches;
        end   
    end

endmodule

