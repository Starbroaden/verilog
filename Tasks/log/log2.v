module log2
(
	input [7:0] number,
	output [2:0] log
);

assign log[0] = number[1] | number[3] | number[5] | number[7];
assign log[1] = number[2] | number[3] | number[6] | number[7];
assign log[2] = number[4] | number[5] | number[6] | number[7];

endmodule
