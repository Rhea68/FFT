module counter ( input logic fastclock,	n_rst,		  
			  output logic clock);		      

logic [15:0] counter;   

 always_ff @(posedge fastclock, negedge n_rst)  
    begin
      if (!n_rst)
	  counter<=0;
	  else
	  counter <=counter+1;
	end   
	assign clock=counter[15];
  endmodule 
