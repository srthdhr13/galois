module mult(a , b , c);
   
   input logic [7:0] a;
   input logic [7:0] b;
   output logic [7:0] c;
    logic [7:0] accumulator;
    logic [7:0] running_a;
    integer	  i ;
   always_comb begin
       
      
       accumulator = 8'b0;
       running_a = a;
      
     
      for (i = 0 ; i < 8 ; i = i + 1) begin
	 if(b[i] == 1 ) begin 
	   accumulator ^= running_a;
	 end
   
   
 
	 if (running_a[7] == 1) begin 
	    running_a = running_a << 1 ;
	    running_a ^= 8'h1B;
	 end
	 else
	   running_a =running_a << 1;
   end // for (i = 0 ; i < 8 ; i = i + 1)
       c = accumulator;
   end // always_comb
   
      
endmodule // mult
