`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Boston Univerity
// Engineer: Siyuan Jing
// 
// Create Date: 10/10/2024 03:20:36 PM
// Design Name: 
// Module Name: ClockDivider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ClockDivider(
    input wire clk,           
         
    output reg clk_out   
);

    reg [26:0] counter;  
    parameter Half= 50000000; 


    initial begin
        counter = 0;
        clk_out = 0;
    end


    always @(posedge clk ) begin

            if (counter == Half-1) begin
                counter <= 0;
                clk_out <= ~clk_out;  
            end 
            else begin
                counter <= counter + 1;
            end
        end

endmodule



