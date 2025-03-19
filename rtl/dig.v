//`timescale 10ns / 10ns
// it seems ngspice hates looping mixed simulation
// meaning: analog -> digital -> analog
module dig (
        input wire clk,
        //input wire n_rst,
        input wire trigger,
        //output logic pwm_out,
        //output logic  reset,
        output logic [7:0] counter_out
        //output logic [7:0] counter

        );

        //logic   rst = 0;
//        reg [7:0] counter;
        logic [7:0] counter;
        logic  trigger_prev;
        always_ff @(posedge clk) begin
        
        if (trigger && !trigger_prev) begin
                //update on positive edge
                counter_out <= counter;
                //counter <=0;
        end if (!trigger && trigger_prev) begin
                //reset on negative edge
                counter <= 0;

        end else begin
                counter <= counter+1;
        end
        trigger_prev <= trigger;

        end

        //always_ff @(posedge clk) begin
        //        if (counter > counter_out) begin
        //                pwm_out<=1;
        //        end else begin 
        //                pwm_out<=0;
        //        end
        //end

endmodule
