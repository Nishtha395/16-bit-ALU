`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 16:00:07
// Design Name: 
// Module Name: ALU_16
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


module ALU_16(
input [15:0]a,
input [15:0]b,
input C_in,
input [2:0]s,
output carry_out,
output borrow_out,
output [15:0]result
    );
    wire [15:0]w1,w2,w3,w4,w5,w6,w7,w8;
    wire adder_carry,adder_borrow;
    fulladd_16 FA1(.a_rca(a),.b_rca(b),.C_in(C_in),.s_rca(w1),.c_out(adder_carry));
    fullsubtract_16bit FS1(.a_rca(a),.b_rca(b),.borrow_in(C_in),.diff_rca(w2),.borrow_out(adder_borrow));
    assign w3=a&b;
    assign w4=a|b;
    assign w5=a^b;
    assign w6=~(a^b);
    assign w7=a<<b[3:0];
    assign w8=a>>b[3:0];
    assign carry_out  = (s == 3'b000) ? adder_carry : 1'b0;
    assign borrow_out = (s == 3'b001) ? adder_borrow : 1'b0;
    
    mux_8x1 M1(.a(w1),.b(w2),.c(w3),.d(w4),.e(w5),.f(w6),.g(w7),.h(w8),.s(s),.result(result));
endmodule
