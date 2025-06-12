`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:19 04/30/2025 
// Design Name: 
// Module Name:    sevenseg_behav 
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
module sevenseg_behav(
    input [3:0] I,
    output [6:0] Y
    );
	 reg [6:0] out;
	 assign Y = {out[0], out[1], out[2], out[3], out[4], out[5], out[6]};
	 always @(I) begin
		case(I)
		 	4'b0000: out = 7'b1111110; // 0
         4'b0001: out = 7'b0110000; // 1
         4'b0010: out = 7'b1101101; // 2
         4'b0011: out = 7'b1111001; // 3
         4'b0100: out = 7'b0110011; // 4
         4'b0101: out = 7'b1011011; // 5
         4'b0110: out = 7'b1011111; // 6
         4'b0111: out = 7'b1110010; // 7
         4'b1000: out = 7'b1111111; // 8
         4'b1001: out = 7'b1111011; // 9
			default: out = 7'b0000000; // invalid
		endcase
	end
	
	 
	 
	 


endmodule
