module and2(input wire i0, i1, output wire o2);
	assign o2 = i0 & i1;
endmodule

module or2(input wire i0, i1, output wire o3);
	assign o3 = i0 | i1;
endmodule


module operate(input wire a,b,c, output wire z);
	wire t0,t1;
	and2 and2_0(a,b,t0);
	and2 and2_1(b,c,t1);
	or2 or2_0(t0,t1,z);
endmodule
