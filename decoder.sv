module decoder ( input logic [2:0]w,			  
			  output logic [7:0] rew,imw);		      

   
always_comb
   begin
    rew=0;
    imw=0;
   case(w)
    3'b000:begin 
	    rew=8'b01111111;
        imw=8'b00000000;
		end
	3'b001:begin
	    rew=8'b01011011;
        imw=8'b10100101;
		end
	3'b010:begin
	    rew=8'b00000000;
        imw=8'b10000000;
		end
	3'b011:begin
	    rew=8'b10100101;
        imw=8'b10100101;
		end
	3'b100:begin
	    rew=8'b10000000;
        imw=8'b00000000;
		end
	3'b101:begin
	    rew=8'b10100101;
        imw=8'b01011011;
		end
	3'b110:begin
	    rew=8'b00000000;
        imw=8'b01111111;
		end
	3'b111:begin
	    rew=8'b01011011;
        imw=8'b01011011;
		end
	default:;
	endcase
	end   
  endmodule 
