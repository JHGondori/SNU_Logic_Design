`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:46:53 06/12/2025 
// Design Name: 
// Module Name:    seven_segment_display 
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
module seven_segment_display(
    input [3:0] hex,
    output reg [6:0] seg
    );
	 always @(hex) begin
		case(hex)
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
			4'd10: seg <= 7'b1110111;
			4'd11: seg <= 7'b1111100;
			4'd12: seg <= 7'b0111001;
			4'd13: seg <= 7'b1011110;
			4'd14: seg <= 7'b1111001;
			4'd15: seg <= 7'b1110001;
		endcase
	 end

endmodule
