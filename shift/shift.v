module shift(
    input wire clk,
    input wire reset,
    input wire leftbutt,
    input wire rightbutt,
    input wire leftswitch,
    input wire rightswitch,
    output wire [7:0] led
);

reg [7:0] shiftmemory;

button leftbutton(
	.clk(clk),
	.but(leftbutt), 
	.push(leftpush)
);

button rightbutton(
	.clk(clk),
	.but(rightbutt), 
	.push(rightpush)
);

assign led[0] = shiftmemory[0];
assign led[1] = shiftmemory[1];
assign led[2] = shiftmemory[2];
assign led[3] = shiftmemory[3];
assign led[4] = shiftmemory[4];
assign led[5] = shiftmemory[5];
assign led[6] = shiftmemory[6];
assign led[7] = shiftmemory[7];

always @(posedge clk) 
begin	
	if(~reset)
	begin
		shiftmemory <= 8'b0;
	end
    else
	begin
		if(leftbutton)
		begin
			shiftmemory <= {shiftmemory[6:0], leftswitch};
		end
		
		if(rightbutton)
		begin
			shiftmemory <= {rightswitch, memory[7:1]};
		end
	end
end

endmodule
