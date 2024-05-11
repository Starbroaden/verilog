`timescale 1ns/1ps

module digitmemory (
    input wire clk,
    input wire reset,
    input wire writepush,
    input wire [2:0] switch_address,
    input wire [7:0] switch_value,
    output wire [7:0] indicate_led,
	 //output wire [6:0] digit_addr,
	 output wire [6:0] digit_number1,
	 output wire [6:0] digit_number2
);

//wire writepush
reg [7:0] memory [7:0];


reg [7:0] indicating;
/*
button writebutton (
    .clk    (clk),
    .but (writebutt),
    .push   (writepush)
);


hex2seven_seg address_digit(
	.hex ({1'b0, switch_address}),
	.seven_seg(digit_addr)
);
*/
hex2seven_seg firstvalue_digit(
	.hex (indicating[3:0]),
	.seven_seg(digit_number1)
);

hex2seven_seg secondvalue_digit(
	.hex (indicating[7:4]),
	.seven_seg(digit_number2)
);


genvar cnt;
generate
	for (cnt = 0; cnt < 8; cnt = cnt + 1) begin: loop
		always @(posedge clk)
			if (reset)
				memory[cnt] <= 8'd0;
			else if (writepush)
		begin
			memory[cnt] <= (cnt == switch_address)? switch_value : memory[cnt];
		end
	end
endgenerate


always @(posedge clk)
begin 
	if (reset)
		indicating <= 8'd0;
	else
		indicating <= memory[switch_address];
end

//assign indicate_led = indicating;

decoder leding (
	.number(switch_address),
	.res(indicate_led)
);


endmodule
