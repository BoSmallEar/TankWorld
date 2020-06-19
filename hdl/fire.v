///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: fire.v
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

module fire( 
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
    output reg fire_out
);

parameter period = 1316;
parameter pulseWidth = 658;

assign PREADY = 1;
assign PSLVERR = 0;

reg [11:0] count = 0;
reg fire = 0;

wire FIRE_write = PENABLE && PWRITE && PSEL && (PADDR[11:8] == 6);

always @(posedge PCLK) begin
    PRDATA <= 0;

    if (!PRESERN) begin
        count <= 0;
        fire <= 0;
        fire_out <= 0;
    end

    if (FIRE_write)
        fire <= PWDATA[0]; 

    if (count >= period)
        count <= 0;
    else
        count <= count + 1;

    if (count < pulseWidth)
        fire_out <= fire;
    else
        fire_out <= 0; 
end

endmodule


