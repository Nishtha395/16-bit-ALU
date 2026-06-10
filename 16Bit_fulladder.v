`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 00:14:26
// Design Name: 
// Module Name: 16Bit_fulladder
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


module fulladd_16(
input [15:0]a_rca,
input [15:0]b_rca,
input C_in,
output [15:0]s_rca,
output c_out
    );
    wire [14:0]w;
    full_adder FA1(.A(a_rca[0]),.B(b_rca[0]),.Cin(C_in),.sum(s_rca[0]),.carry_out(w[0]));
    full_adder FA2(.A(a_rca[1]),.B(b_rca[1]),.Cin(w[0]),.sum(s_rca[1]),.carry_out(w[1]));
    full_adder FA3(.A(a_rca[2]),.B(b_rca[2]),.Cin(w[1]),.sum(s_rca[2]),.carry_out(w[2]));
    full_adder FA4(.A(a_rca[3]),.B(b_rca[3]),.Cin(w[2]),.sum(s_rca[3]),.carry_out(w[3]));
    full_adder FA5(.A(a_rca[4]),.B(b_rca[4]),.Cin(w[3]),.sum(s_rca[4]),.carry_out(w[4]));
    full_adder FA6(.A(a_rca[5]),.B(b_rca[5]),.Cin(w[4]),.sum(s_rca[5]),.carry_out(w[5]));
    full_adder FA7(.A(a_rca[6]),.B(b_rca[6]),.Cin(w[5]),.sum(s_rca[6]),.carry_out(w[6]));
    full_adder FA8(.A(a_rca[7]),.B(b_rca[7]),.Cin(w[6]),.sum(s_rca[7]),.carry_out(w[7]));
    full_adder FA9(.A(a_rca[8]),.B(b_rca[8]),.Cin(w[7]),.sum(s_rca[8]),.carry_out(w[8]));
    full_adder FA10(.A(a_rca[9]),.B(b_rca[9]),.Cin(w[8]),.sum(s_rca[9]),.carry_out(w[9]));
    full_adder FA11(.A(a_rca[10]),.B(b_rca[10]),.Cin(w[9]),.sum(s_rca[10]),.carry_out(w[10]));
    full_adder FA12(.A(a_rca[11]),.B(b_rca[11]),.Cin(w[10]),.sum(s_rca[11]),.carry_out(w[11]));
    full_adder FA13(.A(a_rca[12]),.B(b_rca[12]),.Cin(w[11]),.sum(s_rca[12]),.carry_out(w[12]));
    full_adder FA14(.A(a_rca[13]),.B(b_rca[13]),.Cin(w[12]),.sum(s_rca[13]),.carry_out(w[13]));
    full_adder FA15(.A(a_rca[14]),.B(b_rca[14]),.Cin(w[13]),.sum(s_rca[14]),.carry_out(w[14]));
    full_adder FA16(.A(a_rca[15]),.B(b_rca[15]),.Cin(w[14]),.sum(s_rca[15]),.carry_out(c_out));
endmodule
