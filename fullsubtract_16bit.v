`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:00:25
// Design Name: 
// Module Name: fullsubtract_16bit
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


module fullsubtract_16bit(
input [15:0]a_rca,
input [15:0]b_rca,
input borrow_in,
output [15:0]diff_rca,
output borrow_out
    );
    wire [14:0]w;
    full_subtractor FS1(.x(a_rca[0]),.y(b_rca[0]),.b_in(borrow_in),.diff(diff_rca[0]),.b_out(w[0]));
    full_subtractor FS2(.x(a_rca[1]),.y(b_rca[1]),.b_in(w[0]),.diff(diff_rca[1]),.b_out(w[1]));
    full_subtractor FS3(.x(a_rca[2]),.y(b_rca[2]),.b_in(w[1]),.diff(diff_rca[2]),.b_out(w[2]));
    full_subtractor FS4(.x(a_rca[3]),.y(b_rca[3]),.b_in(w[2]),.diff(diff_rca[3]),.b_out(w[3]));
    full_subtractor FS5(.x(a_rca[4]),.y(b_rca[4]),.b_in(w[3]),.diff(diff_rca[4]),.b_out(w[4]));
    full_subtractor FS6(.x(a_rca[5]),.y(b_rca[5]),.b_in(w[4]),.diff(diff_rca[5]),.b_out(w[5]));
    full_subtractor FS7(.x(a_rca[6]),.y(b_rca[6]),.b_in(w[5]),.diff(diff_rca[6]),.b_out(w[6]));
    full_subtractor FS8(.x(a_rca[7]),.y(b_rca[7]),.b_in(w[6]),.diff(diff_rca[7]),.b_out(w[7]));
    full_subtractor FS9(.x(a_rca[8]),.y(b_rca[8]),.b_in(w[7]),.diff(diff_rca[8]),.b_out(w[8]));
    full_subtractor FS10(.x(a_rca[9]),.y(b_rca[9]),.b_in(w[8]),.diff(diff_rca[9]),.b_out(w[9]));
    full_subtractor FS11(.x(a_rca[10]),.y(b_rca[10]),.b_in(w[9]),.diff(diff_rca[10]),.b_out(w[10]));
    full_subtractor FS12(.x(a_rca[11]),.y(b_rca[11]),.b_in(w[10]),.diff(diff_rca[11]),.b_out(w[11]));
    full_subtractor FS13(.x(a_rca[12]),.y(b_rca[12]),.b_in(w[11]),.diff(diff_rca[12]),.b_out(w[12]));
    full_subtractor FS14(.x(a_rca[13]),.y(b_rca[13]),.b_in(w[12]),.diff(diff_rca[13]),.b_out(w[13]));
    full_subtractor FS15(.x(a_rca[14]),.y(b_rca[14]),.b_in(w[13]),.diff(diff_rca[14]),.b_out(w[14]));
    full_subtractor FS16(.x(a_rca[15]),.y(b_rca[15]),.b_in(w[14]),.diff(diff_rca[15]),.b_out(borrow_out));
endmodule
