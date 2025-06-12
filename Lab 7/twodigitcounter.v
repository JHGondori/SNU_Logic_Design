`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:05:17 05/28/2025 
// Design Name: 
// Module Name:    twodigitcounter 
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
module twodigitcounter(
    input CLK,
    input R,
  
	 output o1,
	 output o2,
	 output o3,
	 output o4,
	 output o5,
	 output o6,
	 output o7,
	 
	 output t1,
	 output t2,
	 output t3,
	 output t4,
	 output t5,
	 output t6,
	 output t7
    );
	 
	 wire [6:0] seg0;
	 wire [6:0] seg1;
	 wire sec;
	 reg [3:0] cnt1;
	 reg [3:0] cnt0;
	 wire zero;
	 assign zero = 0;
	 freqdivider div(
		.CLK(CLK),
		.R(zero),
		.out(sec)
	 );
	 initial begin
		cnt1 = 4'd0;
		cnt0 = 4'd0;
	 end
	 sevenseg_decoder dec1(
		.bcd(cnt1),
		.seg(seg1)
	 );
	 sevenseg_decoder dec0(
		.bcd(cnt0),
		.seg(seg0)
	 );
	 always @(posedge sec) begin
		cnt1 <= R ? 4'd0 : 
				  (cnt0 < 4'd9) ? cnt1 :
				  (cnt1 == 4'd9) ? 4'd0 : cnt1 + 1;
		cnt0 <= (R || cnt0 == 4'd9) ? 4'd0 : cnt0 + 1;
	 end
	 
	 assign {o7,o6,o5,o4,o3,o2,o1}=seg0;
	 assign {t7,t6,t5,t4,t3,t2,t1}=seg1;


endmodule
