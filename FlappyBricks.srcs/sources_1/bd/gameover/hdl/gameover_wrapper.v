//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Dec 10 17:11:52 2021
//Host        : DV-APSR4E-PC32 running 64-bit major release  (build 9200)
//Command     : generate_target gameover_wrapper.bd
//Design      : gameover_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module gameover_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_dout,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_rst,
    BRAM_PORTA_0_we,
    rsta_busy_0);
  input [14:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  input [15:0]BRAM_PORTA_0_din;
  output [15:0]BRAM_PORTA_0_dout;
  input BRAM_PORTA_0_en;
  input BRAM_PORTA_0_rst;
  input [0:0]BRAM_PORTA_0_we;
  output rsta_busy_0;

  wire [14:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [15:0]BRAM_PORTA_0_din;
  wire [15:0]BRAM_PORTA_0_dout;
  wire BRAM_PORTA_0_en;
  wire BRAM_PORTA_0_rst;
  wire [0:0]BRAM_PORTA_0_we;
  wire rsta_busy_0;

  gameover gameover_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_dout(BRAM_PORTA_0_dout),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_rst(BRAM_PORTA_0_rst),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
        .rsta_busy_0(rsta_busy_0));
endmodule
