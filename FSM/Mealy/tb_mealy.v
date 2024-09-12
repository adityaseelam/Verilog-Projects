module tb_Mealy();
  reg clk;
  reg rst;
  reg data_in;
  wire data_out;
  wire [5:0] state;
  wire[5:0] next_state;
  
  Mealy uut(.clk(clk),
            .rst(rst),
            .data_in(data_in),
            .data_out(data_out),
            .state(state),
            .next_state(next_state));
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    
    #15;
    rst=0;
    data_in=1'b1;
    
    #10;
    data_in=1'b1;
    
    #10;
    data_in=1'b1;
    
    #10;
    data_in=1'b0;
    
    #10;
    data_in=1'b1;
    
    #10;
    data_in=1'b1;
    
    #10;
    data_in=1'b1;
  end
endmodule