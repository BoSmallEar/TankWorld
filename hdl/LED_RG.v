///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: LED_RG.v
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

module LED_RG( 
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
    output wire led_out
);

parameter data_period = 1499;
parameter bit_period = 61;
parameter reset_period = 50000;

assign PREADY = 1;
assign PSLVERR = 0;

reg [10:0] clk_div_1 = 0;
reg [10:0] clk_div_2 = 0;
reg mask = 0; 
reg rg_data = 0;
reg rg_choice = 0;
reg [1:0] go_choice = 0;
reg [1:0] go_start = 0;
reg rg_en = 0;
reg go_en = 0;
reg reset_en = 1;
reg [3:0] transverse = 0;
reg [15:0] reset_counter = 0;

wire LED_RG_write = PENABLE && PWRITE && PSEL && (PADDR[11:8] == 7);

assign led_out = rg_data;

always @(posedge PCLK) begin
    PRDATA <= 0; 
    
    if(LED_RG_write) begin
        rg_en <= PWDATA[0];
        rg_choice <= PWDATA[1];
        go_en <= PWDATA[2];
        go_start <= PWDATA[4:3];
        go_choice <= 0;
        reset_en <= 1;
    end

    if(rg_en) begin
    if(go_en) begin
        if (reset_en == 1) begin
            if (reset_counter == reset_period)  begin
                reset_en <= 0;
                reset_counter <= 0;
                transverse <= 0;
                clk_div_2 <= 0;
                clk_div_1 <= 0;
            end
            else reset_counter <= reset_counter + 1; 

            rg_data <= 0;
        end
        else begin
            if(clk_div_1 == data_period) begin
                clk_div_1 <= 0;
                clk_div_2 <= 0; 
                if (transverse == 14) begin 
                    reset_en <= 1;   
                end
                else transverse <= transverse + 1;
            end
            else begin
                clk_div_1 <= clk_div_1 + 1;

                if(clk_div_2 == bit_period)
                    clk_div_2 <= 0;
                else
                    clk_div_2 <= clk_div_2 + 1;
            end 
         
            if (rg_choice == 1) begin
                if(clk_div_1 < 500)
                    mask <= 1;
                else 
                    mask <= 0;
            end
            else begin   
                if(500 <= clk_div_1 && clk_div_1 < 1000)
                    mask <= 1;
                else 
                    mask <= 0;
            end 
         
            if (mask) begin
                if(clk_div_2 < 42) rg_data <= 1;
                else rg_data <= 0;
            end
            else begin
                if(clk_div_2 < 19) rg_data <= 1;
                else rg_data <= 0;
            end 
        end 

        go_choice <= 0;
    end
    else begin
        if (reset_en == 1) begin
            if (reset_counter == reset_period)  begin
                reset_en <= 0;
                reset_counter <= 0;
                transverse <= 0;
                go_choice <= go_start;
                clk_div_2 <= 0;
                clk_div_1 <= 0;
            end
            else reset_counter <= reset_counter + 1; 

            rg_data <= 0;
        end
        else begin
            if(clk_div_1 == data_period) begin
                clk_div_1 <= 0;
                clk_div_2 <= 0; 

                if(go_choice == 3) 
                    go_choice <= 0;
                else
                    go_choice <= go_choice + 1;

                if (transverse == 14) begin 
                    reset_en <= 1;   
                end
                else transverse <= transverse + 1;
            end
            else begin
                clk_div_1 <= clk_div_1 + 1;

                if(clk_div_2 == bit_period)
                    clk_div_2 <= 0;
                else
                    clk_div_2 <= clk_div_2 + 1;
            end 
         
            if (go_choice == 0) begin
                if(clk_div_1 < 250)
                    mask <= 1;
                else 
                    mask <= 0;
            end
            else begin if (go_choice == 1) begin   
                if(clk_div_1 >= 250 && clk_div_1 < 625)
                    mask <= 1;
                else 
                    mask <= 0;
            end 
            else begin if (go_choice == 2) begin
                if(clk_div_1 >= 625 && clk_div_1 < 1125)
                    mask <= 1;
                else 
                    mask <= 0;
            end
            else begin
                if(clk_div_1 >= 1125 && clk_div_1 < 1500)
                    mask <= 1;
                else 
                    mask <= 0;
            end end end
         
            if (mask) begin
                if(clk_div_2 < 42) rg_data <= 1;
                else rg_data <= 0;
            end
            else begin
                if(clk_div_2 < 19) rg_data <= 1;
                else rg_data <= 0;
            end 
        end 
    end end
    else rg_data <= 0;
end

endmodule