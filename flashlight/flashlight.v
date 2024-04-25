module flashlight (
    input wire clk,
    input wire reset,
    input wire [13:0] switches,
    input wire setbutt,
    output wire flash,
    output wire [6:0] digitcount1, digitcount2
);


reg [15:0] CountsPerOne;
reg [13:0] counter;
reg [13:0] settime;
reg [7:0] digitcnt;

button setbutton (
    .clk    (clk),
    .but (setbutt),
    .push   (setpush)
);

hex2seven_seg number1(
	.hex(digitcnt[3:0]),
	.seven_seg(digitcount1)
);

hex2seven_seg number2(
	.hex(digitcnt[7:4]),
	.seven_seg(digitcount2)
);


always @(posedge clk) 
begin
    if (~reset) 
	begin
        settime <= 0;
    end 
	
	else if (setpush)
	begin
        settime <= switches;
    end
end


always @(posedge clk) 
begin
    if (~reset) 
	begin
        CountsPerOne <= 0;
    end
	
	else 
	begin 
		CountsPerOne <= (CountsPerOne == 16'd49_999)? 0 : CountsPerOne + 1;
	end
end


always @(posedge clk) 
begin
    if (~reset) 
	begin
        counter <= 0;
		  digitcnt <= 0;
    end 
	
	
	else if (counter == settime) 
	begin
        counter <= 0;
		  digitcnt <= (settime != 0)? digitcnt + 1 : 0;
    end
	 
	else if (CountsPerOne == 16'd49_999) 
	begin
        counter <= counter + 1;
    end 
end

assign flash = ((counter << 1) < settime);


endmodule
