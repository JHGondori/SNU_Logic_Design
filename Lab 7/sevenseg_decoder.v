`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:16 05/28/2025 
// Design Name: 
// Module Name:    sevenseg_decoder 
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
module sevenseg_decoder(
    input [3:0] bcd,
    output reg [6:0] seg
    );
	 
	 always @(bcd) begin
		case(bcd)
			4'd0: seg <= 7'b0111111;
			4'd1: seg <= 7'b0000110;
			4'd2: seg <= 7'b1011011;
			4'd3: seg <= 7'b1001111;
			4'd4: seg <= 7'b1100110;
			4'd5: seg <= 7'b1101101;
			4'd6: seg <= 7'b1111101;
			4'd7: seg <= 7'b0000111;
			4'd8: seg <= 7'b1111111;
			4'd9: seg <= 7'b1101111;
		endcase
	 end


endmodule
