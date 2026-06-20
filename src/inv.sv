module inv(a , invout);

   input logic [7:0] a;

   output logic [7:0] invout;

   logic [7:0]	      t1,t2,t3,t4,t5,t6,t7;
   logic [7:0]	      m1,m2,m3,m4,m5;
   
   

   mult inst1(

	     .a(a),
	     .b(a),
	     .c(t1));

     mult inst2(
	      .a(t1),
	      .b(t1),
	      .c(t2));
     mult inst3(
	      .a(t2),
	      .b(t2),
	      .c(t3));
     mult inst4(
	      .a(t3),
	      .b(t3),
	      .c(t4));
     mult inst5(
	      .a(t4),
	      .b(t4),
	      .c(t5));
     mult inst6(
	      .a(t5),
	      .b(t5),
	      .c(t6));
    mult inst7(
	      .a(t6),
	      .b(t6),
	      .c(t7));
    mult inst8(
	      .a(t6),
	      .b(t7),
	      .c(m1));
    mult inst9(
	      .a(t5),
	      .b(m1),
	      .c(m2));
    mult inst10(
	      .a(t4),
	      .b(m2),
	      .c(m3));
    mult inst11(
	      .a(t3),
	      .b(m3),
	      .c(m4));
    mult inst12(
	      .a(t2),
	      .b(m4),
	      .c(m5));
    mult inst13(
	      .a(t1),
	      .b(m5),
	      .c(invout));
   
   
endmodule 		 

      
   
