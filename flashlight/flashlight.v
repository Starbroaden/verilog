module flashlight(
   input wire clk,
   input wire reset,
   input wire [13:0] switches,
   input wire setbut,
   output wire [6:0] digit1, digit2, digit3, digit4;
   output wire light
);

reg [13:0] settimer;
reg [15:0] timer;
reg [13:0] counter;
reg lightsignal;

button setbutton(
	.clk(clk), 
	.but(setbut), 
	.push(setpush)
);

hex2seven_seg number1(
	.hex(settimer[3:0]), 
	.seven_seg(digit1)
);

hex2seven_seg number2(
	.hex(settimer[7:4]), 
	.seven_seg(digit2)
);

hex2seven_seg number3(
	.hex(settimer[11:8]), 
	.seven_seg(digit3)
);

hex2seven_seg number4(
	.hex({2'b0, settimer[13:12]}), 
	.seven_seg(digit4)
);



always @(posedge clk) 
begin
	if (~reset)
	begin
		settimer <= 14'h0;
	end
	else begin
		if (setpush)
		begin
			settimer <= switches;
		end		
	end
end




always @(posedge clk) 
begin
		if(timer >= 50000)
		begin
			timer <= 0;
			counter <= counter + 1;
		end
		
		if (counter == settimer)
		begin 
			lightsignal <= (lightsignal)? 1'b0 : 1'b1;
			counter <= 14'h0;
		end
end



assign light = lightsignal;
 
endmodule
