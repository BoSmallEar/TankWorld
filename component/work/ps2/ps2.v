//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Apr 22 14:29:19 2019
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// ps2
module ps2(
    // Inputs
    ADCDirectInput_2,
    ADCDirectInput_3,
    ADCDirectInput_4,
    ADCDirectInput_5,
    MSS_RESET_N,
    SPI_1_DI,
    UART_0_RXD,
    UART_1_RXD,
    VAREF0,
    VAREF1,
    // Outputs
    GPIO_0_OUT,
    GPIO_1_OUT,
    GPIO_2_OUT,
    GPIO_3_OUT,
    GPIO_4_OUT,
    GPIO_6_OUT,
    GPIO_7_OUT,
    SPI_1_DO,
    UART_0_TXD,
    UART_1_TXD,
    fire_out,
    led_out,
    motor_left_out,
    motor_right_out,
    pwm_h_out,
    pwm_v_out,
    // Inouts
    SPI_1_CLK,
    SPI_1_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  ADCDirectInput_2;
input  ADCDirectInput_3;
input  ADCDirectInput_4;
input  ADCDirectInput_5;
input  MSS_RESET_N;
input  SPI_1_DI;
input  UART_0_RXD;
input  UART_1_RXD;
input  VAREF0;
input  VAREF1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GPIO_0_OUT;
output GPIO_1_OUT;
output GPIO_2_OUT;
output GPIO_3_OUT;
output GPIO_4_OUT;
output GPIO_6_OUT;
output GPIO_7_OUT;
output SPI_1_DO;
output UART_0_TXD;
output UART_1_TXD;
output fire_out;
output led_out;
output motor_left_out;
output motor_right_out;
output pwm_h_out;
output pwm_v_out;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SPI_1_CLK;
inout  SPI_1_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          ADCDirectInput_2;
wire          ADCDirectInput_3;
wire          ADCDirectInput_4;
wire          ADCDirectInput_5;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA;
wire          CoreAPB3_0_APBmslave3_PREADY;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire          CoreAPB3_0_APBmslave3_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA;
wire          CoreAPB3_0_APBmslave4_PREADY;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire          CoreAPB3_0_APBmslave4_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave6_PRDATA;
wire          CoreAPB3_0_APBmslave6_PREADY;
wire          CoreAPB3_0_APBmslave6_PSELx;
wire          CoreAPB3_0_APBmslave6_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave7_PRDATA;
wire          CoreAPB3_0_APBmslave7_PREADY;
wire          CoreAPB3_0_APBmslave7_PSELx;
wire          CoreAPB3_0_APBmslave7_PSLVERR;
wire          fire_out_net_0;
wire          GPIO_0_OUT_net_0;
wire          GPIO_1_OUT_net_0;
wire          GPIO_2_OUT_net_0;
wire          GPIO_3_OUT_net_0;
wire          GPIO_4_OUT_net_0;
wire          GPIO_6_OUT_net_0;
wire          GPIO_7_OUT_net_0;
wire          led_out_net_0;
wire          motor_left_out_net_0;
wire          motor_right_out_net_0;
wire          MSS_RESET_N;
wire          ps2_MSS_0_FAB_CLK;
wire          ps2_MSS_0_M2F_RESET_N;
wire          ps2_MSS_0_MSS_MASTER_APB_PENABLE;
wire   [31:0] ps2_MSS_0_MSS_MASTER_APB_PRDATA;
wire          ps2_MSS_0_MSS_MASTER_APB_PREADY;
wire          ps2_MSS_0_MSS_MASTER_APB_PSELx;
wire          ps2_MSS_0_MSS_MASTER_APB_PSLVERR;
wire   [31:0] ps2_MSS_0_MSS_MASTER_APB_PWDATA;
wire          ps2_MSS_0_MSS_MASTER_APB_PWRITE;
wire          pwm_h_out_net_0;
wire          pwm_v_out_net_0;
wire          SPI_1_CLK;
wire          SPI_1_DI;
wire          SPI_1_DO_net_0;
wire          SPI_1_SS;
wire          timerWrapper_0_FIRE_INT_W;
wire          timerWrapper_0_GPIO_INT_W;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          UART_1_RXD;
wire          UART_1_TXD_1;
wire          VAREF0;
wire          VAREF1;
wire          UART_0_TXD_net_1;
wire          SPI_1_DO_net_1;
wire          GPIO_0_OUT_net_1;
wire          UART_1_TXD_1_net_0;
wire          GPIO_4_OUT_net_1;
wire          GPIO_3_OUT_net_1;
wire          GPIO_2_OUT_net_1;
wire          GPIO_1_OUT_net_1;
wire          pwm_h_out_net_1;
wire          pwm_v_out_net_1;
wire          GPIO_7_OUT_net_1;
wire          GPIO_6_OUT_net_1;
wire          motor_left_out_net_1;
wire          motor_right_out_net_1;
wire          fire_out_net_1;
wire          led_out_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_1;
wire   [31:20]ps2_MSS_0_MSS_MASTER_APB_PADDR_0_31to20;
wire   [19:0] ps2_MSS_0_MSS_MASTER_APB_PADDR_0_19to0;
wire   [31:0] ps2_MSS_0_MSS_MASTER_APB_PADDR_0;
wire   [19:0] ps2_MSS_0_MSS_MASTER_APB_PADDR;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_0_TXD_net_1      = UART_0_TXD_net_0;
assign UART_0_TXD            = UART_0_TXD_net_1;
assign SPI_1_DO_net_1        = SPI_1_DO_net_0;
assign SPI_1_DO              = SPI_1_DO_net_1;
assign GPIO_0_OUT_net_1      = GPIO_0_OUT_net_0;
assign GPIO_0_OUT            = GPIO_0_OUT_net_1;
assign UART_1_TXD_1_net_0    = UART_1_TXD_1;
assign UART_1_TXD            = UART_1_TXD_1_net_0;
assign GPIO_4_OUT_net_1      = GPIO_4_OUT_net_0;
assign GPIO_4_OUT            = GPIO_4_OUT_net_1;
assign GPIO_3_OUT_net_1      = GPIO_3_OUT_net_0;
assign GPIO_3_OUT            = GPIO_3_OUT_net_1;
assign GPIO_2_OUT_net_1      = GPIO_2_OUT_net_0;
assign GPIO_2_OUT            = GPIO_2_OUT_net_1;
assign GPIO_1_OUT_net_1      = GPIO_1_OUT_net_0;
assign GPIO_1_OUT            = GPIO_1_OUT_net_1;
assign pwm_h_out_net_1       = pwm_h_out_net_0;
assign pwm_h_out             = pwm_h_out_net_1;
assign pwm_v_out_net_1       = pwm_v_out_net_0;
assign pwm_v_out             = pwm_v_out_net_1;
assign GPIO_7_OUT_net_1      = GPIO_7_OUT_net_0;
assign GPIO_7_OUT            = GPIO_7_OUT_net_1;
assign GPIO_6_OUT_net_1      = GPIO_6_OUT_net_0;
assign GPIO_6_OUT            = GPIO_6_OUT_net_1;
assign motor_left_out_net_1  = motor_left_out_net_0;
assign motor_left_out        = motor_left_out_net_1;
assign motor_right_out_net_1 = motor_right_out_net_0;
assign motor_right_out       = motor_right_out_net_1;
assign fire_out_net_1        = fire_out_net_0;
assign fire_out              = fire_out_net_1;
assign led_out_net_1         = led_out_net_0;
assign led_out               = led_out_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave0_PADDR_0_7to0 = CoreAPB3_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_7to0 };
assign CoreAPB3_0_APBmslave0_PADDR_1_7to0 = CoreAPB3_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_0_APBmslave0_PADDR_1 = { CoreAPB3_0_APBmslave0_PADDR_1_7to0 };

assign ps2_MSS_0_MSS_MASTER_APB_PADDR_0_31to20 = 12'h0;
assign ps2_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 = ps2_MSS_0_MSS_MASTER_APB_PADDR[19:0];
assign ps2_MSS_0_MSS_MASTER_APB_PADDR_0 = { ps2_MSS_0_MSS_MASTER_APB_PADDR_0_31to20, ps2_MSS_0_MSS_MASTER_APB_PADDR_0_19to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 1 ),
        .APBSLOT6ENABLE  ( 1 ),
        .APBSLOT7ENABLE  ( 1 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 18 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( ps2_MSS_0_MSS_MASTER_APB_PWRITE ),
        .PENABLE    ( ps2_MSS_0_MSS_MASTER_APB_PENABLE ),
        .PSEL       ( ps2_MSS_0_MSS_MASTER_APB_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1  ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PREADYS3   ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERRS3  ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PREADYS4   ( CoreAPB3_0_APBmslave4_PREADY ),
        .PSLVERRS4  ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .PREADYS5   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .PREADYS6   ( CoreAPB3_0_APBmslave6_PREADY ),
        .PSLVERRS6  ( CoreAPB3_0_APBmslave6_PSLVERR ),
        .PREADYS7   ( CoreAPB3_0_APBmslave7_PREADY ),
        .PSLVERRS7  ( CoreAPB3_0_APBmslave7_PSLVERR ),
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( ps2_MSS_0_MSS_MASTER_APB_PADDR_0 ),
        .PWDATA     ( ps2_MSS_0_MSS_MASTER_APB_PWDATA ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA ),
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA ),
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PRDATAS5   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PRDATAS6   ( CoreAPB3_0_APBmslave6_PRDATA ),
        .PRDATAS7   ( CoreAPB3_0_APBmslave7_PRDATA ),
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( ps2_MSS_0_MSS_MASTER_APB_PREADY ),
        .PSLVERR    ( ps2_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PSELS6     ( CoreAPB3_0_APBmslave6_PSELx ),
        .PSELS7     ( CoreAPB3_0_APBmslave7_PSELx ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( ps2_MSS_0_MSS_MASTER_APB_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------delayWrapper
delayWrapper delayWrapper_0(
        // Inputs
        .PCLK    ( ps2_MSS_0_FAB_CLK ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PRESETN ( ps2_MSS_0_M2F_RESET_N ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR_1 ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------fire
fire #( 
        .period     ( 1316 ),
        .pulseWidth ( 658 ) )
fire_0(
        // Inputs
        .PCLK     ( ps2_MSS_0_FAB_CLK ),
        .PRESERN  ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL     ( CoreAPB3_0_APBmslave6_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR    ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA   ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY   ( CoreAPB3_0_APBmslave6_PREADY ),
        .PSLVERR  ( CoreAPB3_0_APBmslave6_PSLVERR ),
        .fire_out ( fire_out_net_0 ),
        .PRDATA   ( CoreAPB3_0_APBmslave6_PRDATA ) 
        );

//--------LED_RG
LED_RG #( 
        .bit_period   ( 61 ),
        .data_period  ( 1499 ),
        .reset_period ( 2500 ) )
LED_RG_0(
        // Inputs
        .PCLK    ( ps2_MSS_0_FAB_CLK ),
        .PRESERN ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave7_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY  ( CoreAPB3_0_APBmslave7_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave7_PSLVERR ),
        .led_out ( led_out_net_0 ),
        .PRDATA  ( CoreAPB3_0_APBmslave7_PRDATA ) 
        );

//--------motor_left
motor_left motor_left_0(
        // Inputs
        .PCLK           ( ps2_MSS_0_FAB_CLK ),
        .PRESERN        ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL           ( CoreAPB3_0_APBmslave4_PSELx ),
        .PENABLE        ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE         ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR          ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA         ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY         ( CoreAPB3_0_APBmslave4_PREADY ),
        .PSLVERR        ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .motor_left_out ( motor_left_out_net_0 ),
        .PRDATA         ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------motor_right
motor_right motor_right_0(
        // Inputs
        .PCLK            ( ps2_MSS_0_FAB_CLK ),
        .PRESERN         ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL            ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE         ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE          ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR           ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA          ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY          ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERR         ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .motor_right_out ( motor_right_out_net_0 ),
        .PRDATA          ( CoreAPB3_0_APBmslave5_PRDATA ) 
        );

//--------ps2_MSS
ps2_MSS ps2_MSS_0(
        // Inputs
        .UART_0_RXD       ( UART_0_RXD ),
        .SPI_1_DI         ( SPI_1_DI ),
        .MSS_RESET_N      ( MSS_RESET_N ),
        .UART_1_RXD       ( UART_1_RXD ),
        .MSSPREADY        ( ps2_MSS_0_MSS_MASTER_APB_PREADY ),
        .MSSPSLVERR       ( ps2_MSS_0_MSS_MASTER_APB_PSLVERR ),
        .F2M_GPI_5        ( timerWrapper_0_GPIO_INT_W ),
        .F2M_GPI_8        ( timerWrapper_0_FIRE_INT_W ),
        .ADCDirectInput_5 ( ADCDirectInput_5 ),
        .VAREF1           ( VAREF1 ),
        .ADCDirectInput_2 ( ADCDirectInput_2 ),
        .ADCDirectInput_3 ( ADCDirectInput_3 ),
        .ADCDirectInput_4 ( ADCDirectInput_4 ),
        .VAREF0           ( VAREF0 ),
        .MSSPRDATA        ( ps2_MSS_0_MSS_MASTER_APB_PRDATA ),
        // Outputs
        .UART_0_TXD       ( UART_0_TXD_net_0 ),
        .SPI_1_DO         ( SPI_1_DO_net_0 ),
        .GPIO_0_OUT       ( GPIO_0_OUT_net_0 ),
        .UART_1_TXD       ( UART_1_TXD_1 ),
        .GPIO_4_OUT       ( GPIO_4_OUT_net_0 ),
        .GPIO_3_OUT       ( GPIO_3_OUT_net_0 ),
        .GPIO_2_OUT       ( GPIO_2_OUT_net_0 ),
        .GPIO_1_OUT       ( GPIO_1_OUT_net_0 ),
        .FAB_CLK          ( ps2_MSS_0_FAB_CLK ),
        .M2F_RESET_N      ( ps2_MSS_0_M2F_RESET_N ),
        .MSSPSEL          ( ps2_MSS_0_MSS_MASTER_APB_PSELx ),
        .MSSPENABLE       ( ps2_MSS_0_MSS_MASTER_APB_PENABLE ),
        .MSSPWRITE        ( ps2_MSS_0_MSS_MASTER_APB_PWRITE ),
        .GPIO_7_OUT       ( GPIO_7_OUT_net_0 ),
        .GPIO_6_OUT       ( GPIO_6_OUT_net_0 ),
        .MSSPADDR         ( ps2_MSS_0_MSS_MASTER_APB_PADDR ),
        .MSSPWDATA        ( ps2_MSS_0_MSS_MASTER_APB_PWDATA ),
        // Inouts
        .SPI_1_CLK        ( SPI_1_CLK ),
        .SPI_1_SS         ( SPI_1_SS ) 
        );

//--------pwm_h
pwm_h pwm_h_0(
        // Inputs
        .PCLK      ( ps2_MSS_0_FAB_CLK ),
        .PRESERN   ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL      ( CoreAPB3_0_APBmslave0_PSELx ),
        .PENABLE   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA    ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY    ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR   ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .pwm_h_out ( pwm_h_out_net_0 ),
        .PRDATA    ( CoreAPB3_0_APBmslave0_PRDATA ) 
        );

//--------pwm_v
pwm_v pwm_v_0(
        // Inputs
        .PCLK      ( ps2_MSS_0_FAB_CLK ),
        .PRESERN   ( ps2_MSS_0_M2F_RESET_N ),
        .PSEL      ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATA    ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY    ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR   ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .pwm_v_out ( pwm_v_out_net_0 ),
        .PRDATA    ( CoreAPB3_0_APBmslave1_PRDATA ) 
        );

//--------timerWrapper
timerWrapper timerWrapper_0(
        // Inputs
        .PCLK       ( ps2_MSS_0_FAB_CLK ),
        .PENABLE    ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSEL       ( CoreAPB3_0_APBmslave2_PSELx ),
        .PRESETN    ( ps2_MSS_0_M2F_RESET_N ),
        .PWRITE     ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR      ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PWDATA     ( CoreAPB3_0_APBmslave0_PWDATA ),
        // Outputs
        .PREADY     ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR    ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .GPIO_INT_W ( timerWrapper_0_GPIO_INT_W ),
        .FIRE_INT_W ( timerWrapper_0_FIRE_INT_W ),
        .PRDATA     ( CoreAPB3_0_APBmslave2_PRDATA ) 
        );


endmodule
