`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:11 04/23/2025 
// Design Name: 
// Module Name:    v74x139_b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module v74x139_b(
    input G1,
    input A1,
    input B1,
    input G2,
    input A2,
    input B2,
    output [3:0] Y1,
    output [3:0] Y2
    );
	 wire [1:0] sel1;
	 wire [3:0] out1;
	 wire [1:0] sel2;
	 wire [3:0] out2;
	 
	assign sel1 = {B1, A1};
	
	assign out1 = (sel1 == 2'b00 && G1 == 1'b0) ? 4'b0001 :
						(sel1 == 2'b01 && G1 == 1'b0) ? 4'b0010 :
						(sel1 == 2'b10 && G1 == 1'b0) ? 4'b0100 :
						(sel1 == 2'b11 && G1 == 1'b0) ? 4'b1000 :
						4'b0000;
	assign Y1 = ~out1;
						
	assign sel2 = {B2, A2};
	
	assign out2 = (sel2 == 2'b00 && G2 == 1'b0) ? 4'b0001 :
						(sel2 == 2'b01 && G2 == 1'b0) ? 4'b0010 :
						(sel2 == 2'b10 && G2 == 1'b0) ? 4'b0100 :
						(sel2 == 2'b11 && G2 == 1'b0) ? 4'b1000 :
						4'b0000;
						
	assign Y2 = ~out2;
	

endmodule
