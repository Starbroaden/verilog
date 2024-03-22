module divider6(
   input wire clk, 
   input wire reset,
   output wire clk6
);
reg [2:0] counter;
always @(posedge clk) 
begin
	if (reset) 
	begin
		counter <= 3'h0;
	end
	else begin
		counter <= (counter == 3'h5)? 3'h0 : counter + 1'b1;	
	end
end

assign clk6 = (counter < 3'h3);
  
endmodule
