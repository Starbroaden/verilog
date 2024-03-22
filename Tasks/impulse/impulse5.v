module impulse5(
   input wire clk, 
   input wire reset,
   output wire impulse
);

reg [2:0] counter;
reg pulse;

always @(posedge clk) 
begin
	if (reset) 
	begin
		counter <= 3'h0;
		pulse <= 1'b0;
	end
	else begin
		if (counter == 3'h4)
		begin
				counter <= 3'h0;
				pulse <= 1'b1;
		end
		else
		begin
			counter <= counter + 1'b1;
			pulse <= 1'b0;	
		end
	end
end

assign impulse = pulse;
  
endmodule
