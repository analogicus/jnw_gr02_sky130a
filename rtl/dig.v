`timescale 10ns / 10ns
module dig (
        input wire clk,
        input wire n_rst,
        input wire trigger,
        //output logic pwm_out,
        output logic  reset,
        output logic [7:0] counter_out,
        output logic [7:0] counter

        );

        //logic   rst = 0;
//        reg [7:0] counter;
        //logic [7:0] counter_out;
        always_ff @(posedge clk) begin
                if(n_rst) begin
                        counter <= 0;
                        reset <= 1;
                        counter_out <= 0;
                end else if (counter <= 255) begin
                        if (trigger ==1) begin 
                                counter_out <= counter;
                        end
                        counter <= counter+1;
                        reset <= 0;
                //end else if (counter <= 252) begin
                //        reset<=1;
                //        counter <= counter+1; 
                end else begin  
                        counter <= 0 ; 
                        reset<=1;
                end
        end

        //always_ff @(posedge clk) begin
        //        if (counter > counter_out) begin
        //                pwm_out<=1;
        //        end else begin 
        //                pwm_out<=0;
        //        end
        //end

endmodule
