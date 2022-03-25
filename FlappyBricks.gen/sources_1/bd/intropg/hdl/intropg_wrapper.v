//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Sat Dec 11 22:17:15 2021
//Host        : ShanesBOX running 64-bit major release  (build 9200)
//Command     : generate_target intropg_wrapper.bd
//Design      : intropg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module intropg_wrapper
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_dout,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_rst,
    BRAM_PORTA_0_we);
  input [16:0]BRAM_PORTA_0_addr;
  input BRAM_PORTA_0_clk;
  input [15:0]BRAM_PORTA_0_din;
  output [15:0]BRAM_PORTA_0_dout;
  input BRAM_PORTA_0_en;
  input BRAM_PORTA_0_rst;
  input [0:0]BRAM_PORTA_0_we;

  wire [16:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [15:0]BRAM_PORTA_0_din;
  wire [15:0]BRAM_PORTA_0_dout;
  wire BRAM_PORTA_0_en;
  wire BRAM_PORTA_0_rst;
  wire [0:0]BRAM_PORTA_0_we;

  intropg intropg_i
       (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
        .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
        .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
        .BRAM_PORTA_0_dout(BRAM_PORTA_0_dout),
        .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
        .BRAM_PORTA_0_rst(BRAM_PORTA_0_rst),
        .BRAM_PORTA_0_we(BRAM_PORTA_0_we));
endmodule
