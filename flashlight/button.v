module button
(
    input   clk,
    input   button,
    output  push
);
always @(posedge clk) 
begin
	but_r <= button;
	but_rr <= but_r;
end
assign push = but_rr&~but_r;