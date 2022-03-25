//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Sat Dec 11 22:17:15 2021
//Host        : ShanesBOX running 64-bit major release  (build 9200)
//Command     : generate_target intropg.bd
//Design      : intropg
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "intropg,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=intropg,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "intropg.hwdef" *) 
module intropg
   (BRAM_PORTA_0_addr,
    BRAM_PORTA_0_clk,
    BRAM_PORTA_0_din,
    BRAM_PORTA_0_dout,
    BRAM_PORTA_0_en,
    BRAM_PORTA_0_rst,
    BRAM_PORTA_0_we);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA_0, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [16:0]BRAM_PORTA_0_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 CLK" *) input BRAM_PORTA_0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DIN" *) input [15:0]BRAM_PORTA_0_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 DOUT" *) output [15:0]BRAM_PORTA_0_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 EN" *) input BRAM_PORTA_0_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 RST" *) input BRAM_PORTA_0_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA_0 WE" *) input [0:0]BRAM_PORTA_0_we;

  wire [16:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [15:0]BRAM_PORTA_0_1_DIN;
  wire [15:0]BRAM_PORTA_0_1_DOUT;
  wire BRAM_PORTA_0_1_EN;
  wire BRAM_PORTA_0_1_RST;
  wire [0:0]BRAM_PORTA_0_1_WE;

  assign BRAM_PORTA_0_1_ADDR = BRAM_PORTA_0_addr[16:0];
  assign BRAM_PORTA_0_1_CLK = BRAM_PORTA_0_clk;
  assign BRAM_PORTA_0_1_DIN = BRAM_PORTA_0_din[15:0];
  assign BRAM_PORTA_0_1_EN = BRAM_PORTA_0_en;
  assign BRAM_PORTA_0_1_RST = BRAM_PORTA_0_rst;
  assign BRAM_PORTA_0_1_WE = BRAM_PORTA_0_we[0];
  assign BRAM_PORTA_0_dout[15:0] = BRAM_PORTA_0_1_DOUT;
  intropg_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(BRAM_PORTA_0_1_ADDR),
        .clka(BRAM_PORTA_0_1_CLK),
        .dina(BRAM_PORTA_0_1_DIN),
        .douta(BRAM_PORTA_0_1_DOUT),
        .ena(BRAM_PORTA_0_1_EN),
        .rsta(BRAM_PORTA_0_1_RST),
        .wea(BRAM_PORTA_0_1_WE));
endmodule
