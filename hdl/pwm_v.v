///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: pwm_h.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion> <Die::A2F200M3F> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module pwm_v( 
    input PCLK, // clock
    input PRESERN, // system reset
    input PSEL, // peripheral select
    input PENABLE, // distinguishes access phase
    output wire PREADY, // peripheral ready signal
    output wire PSLVERR, // error signal
    input PWRITE, // distinguishes read and write cycles
    input [31:0] PADDR, // I/O address
    input wire [31:0] PWDATA, // data from processor to I/O device (32 bits)
    output reg [31:0] PRDATA, // data to processor from I/O device (32-bits)
    output reg pwm_v_out
);

`define period 1000000

assign PREADY = 1;
assign PSLVERR = 0;

reg [31:0] count = 0;
reg [31:0] pulseWidth = 75000;

wire PWM_write = PENABLE && PWRITE && PSEL && (PADDR[11:8] == 1);

always @(posedge PCLK) begin
    PRDATA <= 0;
 
    if (PWM_write)
        pulseWidth <= PWDATA; 

    if (count >= `period-1)
        count <= 0;
    else
        count <= count + 1;
    if (count < pulseWidth)
        pwm_v_out <= 1;
    else
        pwm_v_out <= 0; 
    if (!PRESERN) begin
        count <= 0;
        pwm_v_out <= 0;
        pulseWidth <= 75000;
    end
end

endmodule

