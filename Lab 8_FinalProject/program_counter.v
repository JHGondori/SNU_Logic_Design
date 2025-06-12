`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:26 06/12/2025 
// Design Name: 
// Module Name:    program_counter 
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
module program_counter(
    input clk,
    input reset,
    input branch,
    input [7:0] branch_target,
    output reg [7:0] pc_out
    );
	 
	 always @(posedge clk or posedge reset) begin
		if (reset) begin
			pc_out <= 8'd0;
		end else if (branch) begin
         pc_out <= pc_out + 8'd1 + $signed(branch_target);
		end else begin
         pc_out <= pc_out + 8'd1;
		end
	end


endmodule
