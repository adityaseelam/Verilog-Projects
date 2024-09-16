module testbench();
reg clk_a;
reg clk_b;
reg rst;
reg pulse_in;
wire out_a;
wire out_b;
wire out_c;
wire out_d;
wire pulse_out;

Toggle_Sync uut(. clk_a(clk_a),
                . clk_b(clk_b),
                .rst(rst),
                .pulse_in(pulse_in),
                .out_a(out_a),
                .out_b(out_b),
                .out_c(out_c),
                .out_d(out_d),
                .pulse_out(pulse_out)              
                              
                              
                              
                              );

    always #10 clk_a=~clk_a ;
    always #5 clk_b=~clk_b;      

    initial begin
        clk_a=0;
        clk_b=0;
        rst=1;

        #30;
        rst=0;
        pulse_in=1;
        #5;
        pulse_in=0;
        
        #100;
        $finish;
    end                  
endmodule