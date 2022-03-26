
module and2(input wire i0,i1, output wire o2);
	assign o2 = i0&i1;
endmodule

module or2(input wire i0,i1,output wire o3);	
	assign o3=i0|i1;
endmodule

module xor2(input wire i0,i1,output wire o4);
	assign o4=i0^i1;
endmodule

module mux2 (input wire i0, i1, j, output wire o);
  assign o = (j==0)?i0:i1;
endmodule

module fulladd (input wire a,b,cin, output wire sum,cout);
	wire t0;
	wire t1;
	wire t2;
	wire t3;
	wire t4;
	xor2 xor_1(a,b,t0);
	xor2 xor_2(t0,cin,sum);
	and2 and_1(a,b,t1);
	and2 and_2(b,cin,t2);
	and2 and_3(cin,a,t3);
	or2 or_1(t1,t2,t4);
	or2 or_2(t4,t3,cout);

	 	
endmodule

module addsub (input wire i0,i1,cin,output wire sum,carry);
	wire t1;
	xor2 x1(i1,cin,t1);
	fulladd f1(i0,t1,cin,sum,carry);

endmodule

module alu_slice (input wire op1, i0, i1, op0, output wire  o, cout);
    
    wire t1,t2,t3,t4;
    
    addsub as1_0(i0,i1,op0,t1,cout);
	and2 a1_0(i0,i1,t2);
	or2 o1_0(i0,i1,t3);
	mux2 m1_0(t2,t3,op0,t4);
	mux2 m2_0(t4,t1,op1,o);
	
endmodule

module alu (input wire [1:0] op, input wire [15:0] i0, i1, output wire [15:0] o, output wire cout);

	wire c[14:0];

	alu_slice al_1(op[1],i0[0],i1[0],op[0],o[0],c[0]);
	alu_slice al_2(op[1],i0[1],i1[1],c[0],o[1],c[1]); 
	alu_slice al_3(op[1],i0[2],i1[2],c[1],o[2],c[2]); 
	alu_slice al_4(op[1],i0[3],i1[3],c[2],o[3],c[3]); 
	alu_slice al_5(op[1],i0[4],i1[4],c[3],o[4],c[4]); 
	alu_slice al_6(op[1],i0[5],i1[5],c[4],o[5],c[5]); 
	alu_slice al_7(op[1],i0[6],i1[6],c[5],o[6],c[6]); 
	alu_slice al_8(op[1],i0[7],i1[7],c[6],o[7],c[7]); 
	alu_slice al_9(op[1],i0[8],i1[8],c[7],o[8],c[8]); 
	alu_slice al_10(op[1],i0[9],i1[9],c[8],o[9],c[9]); 
	alu_slice al_11(op[1],i0[10],i1[10],c[9],o[10],c[10]); 
	alu_slice al_12(op[1],i0[11],i1[11],c[10],o[11],c[11]); 
	alu_slice al_13(op[1],i0[12],i1[12],c[11],o[12],c[12]); 
	alu_slice al_14(op[1],i0[13],i1[13],c[12],o[13],c[13]); 
	alu_slice al_15(op[1],i0[14],i1[14],c[13],o[14],c[14]);
	alu_slice al_16(op[1],i0[15],i1[15],c[14],o[15],cout);  
	 
endmodule



