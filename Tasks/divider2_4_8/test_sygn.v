`timescale 1ns/1ns
`include "C:/intelFPGA/tasks/divide_sygn/divide_sygn.v"

module top();

wire clk2;
wire clk4;
wire clk8;

reg clk = 0;

always #1 clk = ~clk;
	
reg reset = 0;
initial begin
	@(posedge clk)
	reset <= 1;
	repeat(10) @(negedge clk);
	reset<= 0;
end

clk_div tesing_clk
(
	.clk(clk),
	.reset(reset),
	.clk_div2(clk2),
	.clk_div4(clk4),
	.clk_div8(clk8)
);

endmodule