`timescale 1ns/1ns
`include "C:/intelFPGA/tasks/priority_decryptor/priority_decryptor.v"

module top();

reg	[7:0]	_test;
wire	[2:0]	_result;

always
begin
	#1
	_test = $random();
end

prio_en test_prio
(
	.N(_test),
	.pos(_result)
);


endmodule