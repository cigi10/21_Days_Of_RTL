module day1_tb ();

  logic [3:0] a_i, b_i, y_o;
  logic sel_i;

  day1 dut (.a_i(a_i), .b_i(b_i), .sel_i(sel_i), .y_o(y_o));

  initial begin
    a_i = 4'b0000;
    b_i = 4'b0000;
    sel_i = 0;

    #10 a_i = 4'b0001;  
        b_i = 4'b0010;  
        sel_i = 0;
    #10 sel_i = 1;
    
    #10 a_i = 4'b0011;  
        b_i = 4'b0100;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b0101;  
        b_i = 4'b0110;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b0111;  
        b_i = 4'b1000;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b1001;  
        b_i = 4'b1010;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b1011;  
        b_i = 4'b1100;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b1101;  
        b_i = 4'b1110;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 a_i = 4'b1111;  
        b_i = 4'b0000;  
        sel_i = 0;
    #10 sel_i = 1;

    #10 $stop;
  end

endmodule
