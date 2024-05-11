module decoder
(
	input [2:0] number,
	output [7:0] res
);

assign res[0] = (~number[2])&(~number[1])&(~number[0]);
assign res[1] = (~(number[2])&~(number[1])&(number[0]));
assign res[2] = (~(number[2])&(number[1])&~(number[0]));
assign res[3] = (~(number[2])&(number[1])&(number[0]));
assign res[4] = ((number[2])&~(number[1])&~(number[0]));
assign res[5] = ((number[2])&~(number[1])&(number[0]));
assign res[6] = ((number[2])&(number[1])&~(number[0]));
assign res[7] = ((number[2])&(number[1])&(number[0]));

endmodule