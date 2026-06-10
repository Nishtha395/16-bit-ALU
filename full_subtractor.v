`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 12:12:30
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(
    input x,
    input y,
    input b_in,
    output diff,
    output b_out
    );
    wire w1,w2,w3;
    half_subtractor HS1(.a(x),.b(y),.diff(w1),.borrow(w2));
    half_subtractor HS2(.a(w1),.b(b_in),.diff(diff),.borrow(w3));
    assign b_out=w2|w3;
endmodule
