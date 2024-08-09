module sequencer (
input logic clock, n_rst, readyin,

output logic readyin_0,readyin_1,
output logic f1,f2,f3,f4,f5,f6,f7,f8,f9,s00,s11,s22,s33,s44,s55,s66,s77,s88);


typedef enum {idle,in0,in1,in2,in3,in4,in5,s0,s1,s2,s3,s4,s5,s6,s7,s8,out0,out1,out2,out3,out4} state_type;
 state_type present_state, next_state;
	
 always_ff @(posedge clock, negedge n_rst)  
    begin
      if (!n_rst)  
       begin	  
        present_state<=idle;
		readyin_0 <=1'b0;
		readyin_1 <=1'b0;
		end
	  else
	   begin
		 present_state<=next_state;		
		 readyin_0 <=readyin;
		 readyin_1 <=readyin_0;				 
	   end
    end
  
 always_comb
    begin
      f1=0;
	  f2=0;
	  f3=0;
	  f4=0;
	  f5=0;
	  f6=0;
	  f7=0;
	  f8=0;
	  f9=0;
	  s00=0;
	  s11=0;
	  s22=0;
	  s33=0;
	  s44=0;
	  s55=0;
	  s66=0;
	  s77=0;
	  s88=0;	               
      next_state=present_state;	 
	unique case(present_state)
			  idle: begin
                                    
                       next_state= in0;
                     end
			 	 
						  in0: begin
						    if(readyin_0&&!readyin_1)
						       next_state=in1;							   
							   end
						  in1:begin
						       f1=1;
						       if(readyin_0&&!readyin_1)
							   next_state=in2;
							  end
						  in2:begin
						       f2=1;
						      if(readyin_0&&!readyin_1)
							   next_state=in3;
							 end
						  in3:begin
						       f3=1;
						       if(readyin_0&&!readyin_1)
							   next_state=in4;
							   end
						  in4:begin
						      f4=1;
						       if(readyin_0&&!readyin_1)
							   next_state=in5;
							   end
						  in5:begin
						       f5=1;
						      
							  next_state=s0;
							   end
						  
			 
						  s0:begin
						      s00=1;
						      next_state=s1;
						     end
						  s1:begin
						      s11=1;
						      next_state=s2;
							  end
						  s2:begin
						      s22=1;
						      next_state=s3;
							  end
						 s3:begin
						       s33=1;
						       next_state=s4;
							 end
						  s4:begin
						     s44=1;
						      next_state=s5;
						     end
						 s5:begin
						    s55=1;
						    next_state=s6;
						    end
						 s6:begin
						    s66=1;
						    next_state=s7;
						    end
						  s7:begin
						      s77=1;
						      next_state=s8;
						     end
						  s8:begin
						     s88=1;						 
						     next_state=out0;
                            end							
						 
                         out0:begin
						      
						       if(readyin_0&&!readyin_1)
							   next_state=out1;
							   end     
			             out1:begin
			            
						       f6=1;
						       if(readyin_0&&!readyin_1)
							   next_state=out2;
							  end
						  out2:begin
						       f7=1;
						      if(readyin_0&&!readyin_1)
							   next_state=out3;
							 end
						  out3:begin
						       f8=1;
						       if(readyin_0&&!readyin_1)
							   next_state=out4;
							   end
						  out4:begin
						      f9=1;
						       if(readyin_0&&!readyin_1)
							   next_state=idle;
							   end
						  
			  			           
			 default:;
			endcase        		 
    end 
 
endmodule
