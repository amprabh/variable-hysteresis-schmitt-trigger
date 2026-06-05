`timescale 1ns/1ps

// Top-level harness module for schmitt_var.
// The top_module must be set to "top_schmitt_var" to compile.
module top_schmitt_var 
    ( input  clk    	// Included just in case Hammer expects synchronous, even though Schmitt trigger async.
    , input  analog_in  	// Input signal, expecting noise.
    , input  [1:0] mode_select  // Digital control bits for hysteresis modes (00, 01, 10, 11).
    , output digital_out   	// Output signal, expecting filtered digital.

    , inout VDD  // Included to match extracted GDS logic of power pin, top-level chip power required for LVS.
    , inout VSS  // Included to match extracted GDS logic of ground pin, top-level chip ground required for LVS.

    , output [1:0] test_inv
    , output reg test_clock_tree
    );

    // Inverted control signal and test signal to map internal control lines to top-level output pins. 
    // Genus synthesizer will map to standard SKY130 inverter.
    wire [1:0] ctl_inv;
    assign ctl_inv = ~mode_select;
    assign test_inv = ctl_inv;

    // Tuning flip-flop. CTS in Innovus place-and-route tool needs "high effort" path to satisfy ccopt_design.
    always @(posedge clk) begin
        test_clock_tree <= mode_select[0]; 
    end

    // Instantiate macro
    schmitt_var top_schmitt 
        ( .vin(analog_in)
        , .CTL0(mode_select[0])
        , .CTL1(mode_select[1])
        , .CTL0_BAR(ctl_inv[0])
        , .CTL1_BAR(ctl_inv[1])
        , .vout(digital_out)
        , .\vdd! (VDD)
        , .\gnd! (VSS)
        );

endmodule

