module mux_123 ( input logic [7:0]  reb,imb,rew,imw,rea,ima,reg_alu,//register		
               input logic s00,s11,s22,s33,s44,s55,s66,s77,s88, 	  
			  output logic signed[7:0] mux1,mux2,
			  output logic  [7:0] mux3);
			  
//logic signed[7:0] ;			  

//typedef enum {idle,in0,in1,in2,in3,in4,in5,s0,s1,s2,s3,s4,s5,s6,s7,s8,out0,out1,out2,out3} state_type;
 //state_type present_state, next_state;

always_comb
  begin
   mux1 =0;
   mux2 =0;
   mux3 =0;
    if(s00)
       begin	    
   	    mux1 =reb;	
	    mux2 =rew;        
		end
	  else if (s11) begin
	    mux1 =imb;	
	    mux2 =imw;
        mux3=rea;
		end
	else if (s22)begin
	    mux1 =reb;	
	    mux2 =imw;
        mux3=reg_alu;
		end
	else if (s33)begin
	    mux1 =imb;	
	    mux2 =rew;
        mux3=ima;
		end
	else if (s44)begin
	    mux1 =reb;	
	    mux2 =rew;
        mux3=reg_alu;
		end
	else if (s55)begin
	    mux1 =imb;	
	    mux2 =imw;
        mux3=rea;
		end
	else if (s66)begin
	    mux1 =reb;	
	    mux2 =imw;
        mux3=reg_alu;
		end
	else if (s77)begin
	    mux1 =imb;	
	    mux2 =rew;
        mux3=ima; 
	    end
	else if(s88) begin
	    mux3=reg_alu; 	    
		end
		
	
	
  end
   

  endmodule 
