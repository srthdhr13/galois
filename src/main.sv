module main(

	    input logic [7:0]  a,
	    input logic [7:0]  b,
	    input logic [1:0]  op,
	    output logic [7:0] c);

   logic [7:0]		       add_o , mul_o , inv_o;
   


   add inst1(

	     .a(a),
	     .b(b),
	     .c(add_o)
     );

   mult inst2(

	      .a(a),
	      .b(b),
	      .c(mul_o)

    );
   
   inv inst3(

	     .a(a),
	     .invout(inv_o)
);


   always_comb begin

      case(op) 

	 2'b00 : c = add_o ;
	 2'b01 : c = mul_o;
	 2'b10 : c = inv_o;
	default : c = 8'b0;
	
      endcase // case (op)

   end

endmodule // main
