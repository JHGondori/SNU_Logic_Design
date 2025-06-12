`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:31 05/28/2025 
// Design Name: 
// Module Name:    freqdivider 
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
module freqdivider(
    input OSC,
    input reset,
    output reg clk
    );
	 reg [31:0] cnt;
	 always@(posedge OSC or posedge reset) begin
		if(reset) begin
		  cnt <= 32'd0;
		  clk <= 1'b0;
		end
		else if (cnt == 32'd25000000) begin
			cnt <= 32'd0;
			clk <= ~clk;
		end
		else begin
			cnt <= cnt + 1;
		end
	 end
endmodule