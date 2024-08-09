module fft (input logic readyin, fastclock, n_rst, input logic [7:0]x, 
                  output logic [7:0]y);
      
 logic f1,f2,f3,f4,f5,f6,f7,f8,f9,s00,s11,s22,s33,s44,s55,s66,s77,s88;
 
 logic [7:0] rey,imy,rez,imz,rea,ima,reb,imb,reg_mul,reg_alu,alu_out,rew,imw,mux3,reg_mul_out;
 logic signed[7:0] mux1,mux2;
 logic [2:0]w;
 logic [15:0]mul_out;
 logic readyin_0,readyin_1;
 logic clock;
 
    alu R0 (.*);
    mul R1 (.*);
	sequencer S(.*);
	data_in D0(.*);
	data_out D1(.*);
	mux_123 m1(.*);	
	decoder D3 (.*);
	counter c0 (.*);
  
endmodule