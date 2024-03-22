`timescale 1ns/1ns
`include "C:/intelFPGA/tasks/divider6/divider6.v"

module top();

wire clk6;

reg clk = 0;

always #1 clk = ~clk;
	
reg reset = 0;
initial begin
	@(posedge clk)
	reset <= 1;
	repeat(10) @(negedge clk);
	reset <= 0;
end

divider6 testdiv6
(
	.clk(clk),
	.reset(reset),
	.clk6(clk6)
);

endmodule