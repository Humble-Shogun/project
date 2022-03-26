module tb;
reg t_a;
reg t_b;
reg t_c;
wire T;
//instantiate

//and2 a2(.i0(t_a),.i1(t_b),.o2(Q));
//and2 a2(.i0(t_a),.i1(t_b),.o2(Q));
//or2 a3(.i0(t_a),.i1(t_b),.o3(R));
operate a4(.a(t_a),.b(t_b),.c(t_c),.z(T));

initial begin $dumpfile("dmp2.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_c,T); //displays the content of the register
t_a=1'b0;//1 bit input
t_b=1'b0;
t_c=1'b0;
#10 //time nanosecs
t_a=1'b0;//1 bit input
t_b=1'b0;
t_c=1'b1;
#10 //time nanosecs
t_a=1'b0;//1 bit input
t_b=1'b1;
t_c=1'b0;
#10 //time nanosecs
t_a=1'b0;//1 bit input
t_b=1'b1;
t_c=1'b1;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b0;
t_c=1'b0;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b0;
t_c=1'b1;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b1;
t_c=1'b0;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b1;
t_c=1'b1;
#10 //time nanosecs

t_a=0;//inorder to see the last input
t_b=0;
t_b=0;
end
endmodule

