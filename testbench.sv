module test_fft;

logic readyin, n_rst, fastclock; 
logic [7:0] x; 
logic[7:0] y;

fft f0 (.*);

initial 
begin
  fastclock = 1'b0; 
  forever #5ns fastclock = ~fastclock; 
end

initial
  begin
  n_rst = '1;
  #5ns n_rst = '0;
  #5ns n_rst = '1;
  end
  
initial
  begin
#10ns readyin='0; 
#200ns readyin='1;
x=5; 

#60ns readyin='0;
#60ns readyin='1;
 x=20;
 
#60ns readyin='0;
#60ns readyin='1;
 x=1;
 
#60ns readyin='0;
#60ns readyin='1;
 x=30;
 
#60ns readyin='0;
#60ns readyin='1;
 x=2;
#60ns readyin='0;


  
#320ns readyin='1;

#60ns readyin='0;

#60ns readyin='1;
 
#60ns readyin='0;

#60ns readyin='1;

#60ns readyin='0;

#60ns readyin='1;

#60ns readyin='0;
  
#60ns readyin='1;

#60ns readyin='0;       
    
  end
  
endmodule
