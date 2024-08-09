module alu (input logic clock, n_rst,                          
			  input logic  [7:0] reg_mul, mux3, 
			  input logic s11,s22,s33,s44,s55,s66,s77,s88,
			  output logic [7:0] reg_alu,
			  output logic [7:0] rey,imy,rez,imz,
			  output logic [7:0]alu_out,
			 output logic  [7:0] reg_mul_out);

  
always_comb
  begin
 alu_out=0;
 begin
  if (s22||s55||s77||s88)
     reg_mul_out=~reg_mul+1;
	else 
	 reg_mul_out=reg_mul;
	end
	alu_out=reg_mul_out+mux3;
  end
 
always_ff@(posedge clock, negedge n_rst)
 begin
   if (!n_rst)
    begin
     rey<=0;
     imy<=0;
     rez<=0;
     imz<=0;
	 reg_alu<=0;
    end
    else if(s11)
      reg_alu<=alu_out;
        else if (s22)
          rey<=alu_out;
            else if (s33)
              reg_alu<=alu_out;
	            else if (s44)
                   imy<=alu_out;
				   else if (s55)
                      reg_alu<=alu_out;
					    else if (s66)						 
                           rez<=alu_out;
						   else if (s77)
						     reg_alu<=alu_out;
							  else if (s88)
							    imz<=alu_out;
  
    
  end
  
endmodule
