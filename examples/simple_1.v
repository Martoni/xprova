module top (reset, clk1, clk2, x, y);

	input reset, clk1, clk2, x;
	output y;

	DFF ff1 ( .CK(clk1), .RS(reset), .D(x), .Q(n1) );
	DFF ff2 (. CK(clk1), .RS(reset), .D(n1), .Q(n2) );
	DFF ff3 (. CK(clk2), .RS(reset), .D(n2), .Q(n3) );
	DFF ff4 (. CK(clk2), .RS(reset), .D(n3), .Q(n4) );
	DFF ff5 ( .CK(clk2), .RS(reset), .D(n4), .Q(y) );

endmodule