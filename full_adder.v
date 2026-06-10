`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 00:07:24
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input Cin,
    output sum,
    output carry_out
    );
    wire w1,w2,w3;
    half_adder HA1(.a(A),.b(B),.sum(w1),.carry(w2));
    half_adder HA2(.a(w1),.b(Cin),.sum(sum),.carry(w3));
    assign carry_out = w2|w3;
endmodule
