module tb_main();


    logic [7:0] a;

    logic [7:0] b;

    logic [1:0] op;

    logic [7:0] c;


   main uut(

	    .a(a),
	    .b(b),
	    .c(c),
	    .op(op)
);

   
   initial begin

      op = 2'b00;
      a  = 8'h57;
      b  = 8'h83;
      #10
      $display("%h" , c);

      #10

      op = 2'b01;
      a  = 8'h57;
      b  = 8'h13;
      #10
      $display("%h" , c);


      #10

      op = 2'b10;
      a = 8'h53;
      #10
      $display("%h" , c);
      
      $finish;
      

    end // initial begin
   

endmodule // tb_main


  

      

        

      










  
