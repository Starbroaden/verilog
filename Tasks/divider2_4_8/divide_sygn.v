module clk_div
(
	input wire clk,
	input wire reset,
	output reg clk_div2,
	output reg clk_div4,
	output reg clk_div8
);

always @(posedge clk)
if (reset)
	{clk_div2, clk_div4, clk_div8} <= 3'h0;
else begin
	clk_div2 <= ~clk_div2;
	clk_div4 <= (clk_div2)? ~clk_div4 : clk_div4;
	clk_div8  <= (clk_div4 & clk_div2)? ~clk_div8 : clk_div8;
end
endmodule
