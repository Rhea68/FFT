
module data_out ( 
input logic readyin, clock, n_rst,f6,f7,f8,f9,
input logic [7:0]rey,imy,rez,imz,

output logic  [7:0] y);


	
 always_ff @ (posedge clock, negedge n_rst)
  begin
   if (!n_rst)  
    begin
     
	  y<= 0;
	 
	end
	 else  if(readyin&&f6)
		 y<=rey;				 
			  else if(readyin&&f7)
                   y<=imy;
			           else if(readyin&&f8)
				              y<=rez;
			                else if(readyin&&f9)
				                    y<=imz;
			                     	        	  			   
  end
	
endmodule 