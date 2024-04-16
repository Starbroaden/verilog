module counter(
   input wire clk, 
   input wire reset,
   input wire but1,
   input wire but2,
   output wire [7:0] result
);
reg [2:0] cnt;
button button1(.clk(clk), .but(but1), .push(push1));
button button2(.clk(clk), .but(but2), .push(push2));
always @(posedge clk) 
begin
	if (~reset)
	begin
		cnt <= 3'h0;
	end
	else begin
		if (push1 == 1)
		begin
		cnt <= (cnt == 3'h7)? 0 : cnt + 3'h1;
		end
		if (push2 == 1)
		begin 
		cnt <= (cnt == 3'h0)? 3'h7 : cnt - 3'h1;
		end		
	end
end

decoder translate(.number(cnt), .res(result));

endmodule
