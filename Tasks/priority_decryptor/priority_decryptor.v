module prio_en(
	input [7:0]N,
	output [2:0]pos
);
assign pos[2] = N[4] | N[5] | N[6] | N[7];
assign pos[1] = (pos[2] & (N[6] | N[7])) | (~pos[2] & (N[3] | N[4]));
assign pos[0] = (pos[2] & pos[1] & N[7]) | (pos[2] & ~pos[1] & N[5]) | (~pos[2] & pos[1] & N[3]) | (~pos[2] & ~pos[1] & N[1]);

endmodule
