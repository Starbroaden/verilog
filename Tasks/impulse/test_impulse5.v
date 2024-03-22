`timescale 1ns/1ns
`include "C:/intelFPGA/tasks/impulse/impulse5.v"

module top();

wire impulse;

reg clk = 0;

always #1 clk = ~clk;
	
reg reset = 0;
initial begin
	@(posedge clk)
	reset <= 1;
	repeat(5) @(negedge clk);
	reset <= 0;
end

impulse5 boooom
(
	.clk(clk),
	.reset(reset),
	.impulse(impulse)
);

endmodule