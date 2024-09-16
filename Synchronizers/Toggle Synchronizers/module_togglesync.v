module Toggle_Sync(input clk_a, input clk_b,input rst,input pulse_in,output reg out_a, output reg out_b,output reg out_c, output reg out_d, output reg pulse_out);

always@(posedge clk_a) begin
    if(rst) begin
        out_a<=0;
    end else begin
        if(pulse_in) begin
            out_a<=~out_a;
        end else if(!pulse_in) begin
        out_a<=out_a;
end
    end
end

    always@(posedge clk_b) begin
        if(rst) begin
            out_b<=0;
            out_c<=0;
            out_d<=0;
        end else begin
            out_b<=out_a;
            out_c<=out_b;
            out_d<=out_c;

        end
    end
  always@(*) begin
    if(rst) begin
        pulse_out=0;
    end else begin
    pulse_out= out_c ^ out_d;
    end
  end

endmodule


