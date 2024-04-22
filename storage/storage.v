module storage (
    input wire clk,
    input wire reset,
    input wire recordbutt,
    input wire transferbutt,
    input wire copybutt,
    input wire [7:0] switches,
    input wire redswitch,
    output wire [7:0] redled,
    output wire [7:0] greenled,
    output wire [6:0] hexnumber1,
    output wire [6:0] hexnumber2,
);

reg [7:0] rednumber;
reg [7:0] greennumber;
assign redled = rednumber;
assign grenled = greennumber;


button recordbutton(
	.clk(clk), 
	.but(recordbutt), 
	.push(recordpush)
);

button transferbutton(
	.clk(clk), 
	.but(transferbutt), 
	.push(transferpush)
);

button copybutton(
	.clk(clk), 
	.but(copybutt), 
	.push(copypush)
);

hex2seven_seg number1(
	.hex(rednumber[3:0]), 
	.seven_seg(hexnumber1)
);

hex2seven_seg number1(
	.hex(rednumber[7:4]), 
	.seven_seg(hexnumber2)
);


always @(posedge clk)
begin
    rednumber <= ~reset ? 8'h0 :
            recordpush ? switches :
            transferpush ? {redswitch, rednumber[7:1]} :
			//transferpush ? (rednumber >> 1) | (redswitch << 7) :
            rednumber;

    greennumber <= ~reset ? 8'h0 :
            transferpush ? {rednumber[0], greennumber[7:1]} :
            copypush ? rednumber :
            greennumber;
end

endmodule
