module data_in ( 
input logic readyin, clock, n_rst,f1,f2,f3,f4,f5,readyin_1,
input logic [7:0]x,
output logic [2:0]w,
output logic  [7:0]rea,ima,reb,imb);


	
 always_ff @ (posedge clock, negedge n_rst)
  begin
   if (!n_rst)  
    begin
     rea<= 0;
	 ima<= 0;
	 reb<= 0;
	 imb<= 0;
	  w<= 0;
	 
	end
	 else  if(readyin&&f1&&readyin_1)
			     w<=x[2:0];				 
			   	 else if(readyin&&f2&&readyin_1)
                       reb<=x;
			             else if(readyin&&f3&&readyin_1)
				                 imb<=x;
			                else if(readyin&&f4&&readyin_1)
				                    rea<=x;
			                     else if(readyin&&f5&&readyin_1)				                   
								       ima<=x;																				    			          			   
  end
	
endmodule
