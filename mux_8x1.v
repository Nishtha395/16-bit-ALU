`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 14:27:16
// Design Name: 
// Module Name: mux_8x1
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


module mux_8x1(
input [15:0]a,
input [15:0]b,
input [15:0]c,
input [15:0]d,
input [15:0]e,
input [15:0]f,
input [15:0]g,
input [15:0]h,
input [2:0]s,
output reg[15:0] result
    );
    always@(*)begin
    case(s)
    3'b000 : result=a;
    3'b001 : result=b;
    3'b010 : result=c;
    3'b011 : result=d;
    3'b100 : result=e;
    3'b101 : result=f;
    3'b110 : result=g;
    3'b111 : result=h;
    endcase
    end
endmodule
