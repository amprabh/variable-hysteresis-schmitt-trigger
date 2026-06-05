`timescale 1ns/1ps

// Blackbox verilog wrapper for the schmitt_var macro.
// Defines pins for synthesis (Genus).
module schmitt_var 
    ( input  vin
    , input  CTL0
    , input  CTL1
    , input  CTL0_BAR
    , input  CTL1_BAR
    , output vout
    , inout  \vdd! 
    , inout  \gnd! 
    );

endmodule

