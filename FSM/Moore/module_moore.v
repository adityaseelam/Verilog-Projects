module Moore(input clk,input rst,input data_in, output reg data_out, output reg[5:0] state, output reg[5:0] next_state);
//********Ive added state and next_state as ports cuz I wanted to check the timings************************************************///
  parameter S0= 6'b000000;
  parameter S1= 6'b000001;
  parameter S2= 6'b000010;
  parameter S3= 6'b000011;
  parameter S4= 6'b000100;
  parameter S5= 6'b000101;
  
  always@(posedge clk) begin
    if(rst) begin 
      state<=0;
    end else begin 
      state<=next_state;
    end 
  end 
  
  always@(*) begin
    next_state=state;
    data_out=1'b0;
    case (state) 
      
 S0: begin
   if(data_in) begin
   next_state=S1;
 end else  begin
   next_state=S0;
 end
 end
 
 S1: begin
   if(data_in) begin
     next_state=S2;
   end else begin 
     next_state= S0;
   end
 end
 
 S2: begin
   if(!data_in) begin
     next_state=S3;
   end else begin
     next_state=S2;
   end
 end
   
 S3: begin
   if(data_in) begin
     next_state=S4;
   end else begin
     next_state=S0;
   end
 end
      
 S4: begin
   if(data_in) begin
     next_state=S5;
   end else begin
     next_state=S0;
   end
 end
 
 S5: begin
   data_out=1'b1;
   if(data_in) begin
     next_state=S2;
   end else begin
     next_state=S3;
   end 
 end
 
 default: 
   next_state=S0;
 
    endcase
  end
      endmodule
      
     
     
       
   