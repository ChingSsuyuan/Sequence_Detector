`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 04:25:45 PM
// Design Name: 
// Module Name: seven
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


module seven_segment(input [3:0] in, output reg [3:0] seven_enable, output reg A,  output reg B, output reg C, output reg D, output reg E, output reg F, output reg G);

    initial
    begin
        A <= 1'b0;
        B <= 1'b0;
        C <= 1'b0;
        D <= 1'b0;
        E <= 1'b0;
        F <= 1'b0;
        G <= 1'b1;
        seven_enable <= 4'b1110;
    end

    always @(*) begin
        case(in)
            4'b0000: // HEX 0
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b1;
            end
            4'b0001: // HEX 1 
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b1;
                G = 1'b1;
            end
            4'b0010: // HEX 2
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b1;
                G = 1'b0;
            end
            4'b0011: // HEX 3
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b1;
                F = 1'b1;
                G = 1'b0;
            end
            4'b0100: // HEX 4
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0101: // HEX 5
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0110: // HEX 6
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b0111: // HEX 7
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b1;
                G = 1'b1;
            end
            4'b1000: // HEX 8
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1001: // HEX 9
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b1;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1010: // HEX A
            begin
                A = 1'b0;
                B = 1'b0;
                C = 1'b0;
                D = 1'b1;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1011: // HEX B
            begin
                A = 1'b1;
                B = 1'b1;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1100: // HEX C
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b1;
            end
            4'b1101: // HEX D
            begin
                A = 1'b1;
                B = 1'b0;
                C = 1'b0;
                D = 1'b0;
                E = 1'b0;
                F = 1'b1;
                G = 1'b0;
            end
            4'b1110: // HEX E
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b0;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
            4'b1111: // HEX F
            begin
                A = 1'b0;
                B = 1'b1;
                C = 1'b1;
                D = 1'b1;
                E = 1'b0;
                F = 1'b0;
                G = 1'b0;
            end
        endcase

    end

endmodule