module counter(
   input wire clk, 
   input wire reset,
   input wire but1,
   input wire but2,
   output wire [6:0] result
);
reg [3:0] cnt;
button button1(.clk(clk), .but(but1), .push(push1));
button button2(.clk(clk), .but(but2), .push(push2));
always @(posedge clk) 
begin
	if (~reset)
	begin
		cnt <= 4'h0;
	end
	else begin
		if (push1 == 1)
		begin
		cnt <= (cnt == 4'hf)? 0 : cnt + 4'h1;
		end
		if (push2 == 1)
		begin 
		cnt <= (cnt == 4'h0)? 4'hf : cnt - 4'h1;
		end
		
	end
end

hex2seven_seg segment(.hex(cnt), .seven_seg(result));
  
endmodule
