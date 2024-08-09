module mul (input logic clock,               
            input logic signed[7:0]  mux1,mux2,//data			  
			  output logic [7:0] reg_mul,
output logic [15:0] mul_out); 		      


always_comb
  begin
    mul_out=mux1*mux2;
  end
 
always_ff @ (posedge clock)
 begin 
       reg_mul	<= mul_out[14:7];
    
  end

endmodule