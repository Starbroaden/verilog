module adder (
    input wire clk,
    input wire reset,
    input wire addbutt,
    input wire [7:0] switches1,
    input wire [7:0] switches2,
    output wire overloadled,
    output wire [6:0] digit2,
    output wire [6:0] digit3,
    output wire [6:0] digit4,
    output wire [6:0] digit5,
    output wire  [6:0] digit6,
    output wire [6:0] digit7
);

wire addpush;
reg [8:0] sum;

assign overloadled = sum[8];

button addbutton (
    .clk    (clk),
    .but (addbutt),
    .push   (addpush)
);


hex2seven_seg hex2sev_segm4
(
    .hex    (switches1[3:0]),
    .seven_seg   (digit4)
);

hex2seven_seg hex2sev_segm5
(
    .hex    (switches1[7:4]),
    .seven_seg   (digit5)
);

hex2seven_seg hex2sev_segm6
(
    .hex    (switches2[3:0]),
    .seven_seg   (digit6)
);

hex2seven_seg hext2sev_segm7
(
    .hex    (switches2[7:4]),
    .seven_seg   (digit7)
);

hex2seven_seg hex2sev_segm2
(
    .hex    (sum[3:0]),
    .seven_seg   (digit2)
);

hex2seven_seg hex2sev_segm3
(
    .hex    (sum[7:4]),
    .seven_seg   (digit3)
);


always @(posedge clk)
begin
    if(~reset)
	begin
		sum <= 0;
	end
	
	else
	begin
		sum <= addpush ? switches1 + switches2 : sum;
	end
end

endmodule
