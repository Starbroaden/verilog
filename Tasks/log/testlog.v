`include "log2.v"
`timescale 1ns/1ns
`include "C:/intelFPGA/tasks/log/log2.v"

module top();

wire [7:0] number1 = 8'b01000000;
wire [7:0] number2 = 8'b00100000;
wire [7:0] number3 = 8'b00000100;
wire [7:0] number4 = 8'b00000010;

wire [2:0] result1;
wire [2:0] result2;
wire [2:0] result3;
wire [2:0] result4;


log2
logtest1
(
	.number	(number1),
	.log	(result1)
);

log2
logtest2
(
	.number	(number2),
	.log	(result2)
);

log2
logtest3
(
	.number	(number3),
	.log	(result3)
);

log2
logtest4
(
	.number	(number4),
	.log	(result4)
);

endmodule