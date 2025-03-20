//`timescale 10ns / 10ns
// it seems ngspice hates looping mixed simulation
// meaning: analog -> digital -> analog
module dig (
        input wire clk,
        //input wire n_rst,
        input wire trigger,
        //output logic pwm_out,
        output logic  reset=0,
        output logic [7:0] counter_out
        //output logic [7:0] counter

        );

        //logic   rst = 0;
//        reg [7:0] counter;
        logic [7:0] counter;    
        logic  trigger_prev;
        logic [7:0] clock_divider =0;
    always_ff @(posedge clk) begin
        
        if (trigger && !trigger_prev) begin
                //update on positive edge
                counter_out <= counter;
        end if (!trigger && trigger_prev) begin
                //reset on negative edge
                counter <= 0;

        end else begin
                counter <= counter+1;
        end
        trigger_prev <= trigger;

        if (clock_divider < 250) begin
                clock_divider <= clock_divider + 1 ;
                reset <= 'b0;
        end else begin
                 //reset for 1 cycle
                clock_divider <= 0;
                 reset <= 'b1;
        
        end

    end
       // create reset signal 
  //      always_ff @(posedge clk) begin
    //    end

endmodule
