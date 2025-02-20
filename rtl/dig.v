module dig (
        input wire clk,
        input wire reset,
        
        );

        logic   rst=0;
        logic   discharge=0;
        logic  [7:0] counter;
        always_ff @(posedge clk) begin
                if(reset)
                        rst<= 1;
                else
                        rst<= 0;
        end
        always_ff @(posedge clk) begin
                if(rst)
                        counter <= 0 ; 
                else if (counter >= 255) 
                        couter <= 0; 
                else
                        counter <= b+1;
                end
endmodule
