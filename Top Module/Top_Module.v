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

module Top_module(clk, rst, switches, seven_seg, seven_enable,leds);
    input clk, rst; // Needed for synchronous inputs
    input [10:0] switches; // Input switches
    output [3:0] leds; 
    output [6:0] seven_seg; // Display outputs to seven segment
    output  [3:0] seven_enable; // Select which seven segment to display
    wire [3:0] out_from_state_machine;
    wire clk2;
    ClockDivider CD (.clk(clk),.clk_out(clk2));

     state_machine2 sm (
        .clk(clk2),
        .rst(rst),
        .switches(switches),
        .out(out_from_state_machine),
        .led_out(leds)
    );


    
    seven_segment sev_seg(.in(out_from_state_machine), .seven_enable(seven_enable[0]), .A(seven_seg[0]), .B(seven_seg[1]), .C(seven_seg[2]), .D(seven_seg[3]), .E(seven_seg[4]), .F(seven_seg[5]), .G(seven_seg[6]));


endmodule




