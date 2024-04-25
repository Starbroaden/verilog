module button
(
    input   clk,
    input   but,
    output  push
);
reg but_r;
reg but_rr;
always @(posedge clk) 
begin
	but_r <= but;
	but_rr <= but_r;
end
assign push = but_rr&~but_r;
endmodule
