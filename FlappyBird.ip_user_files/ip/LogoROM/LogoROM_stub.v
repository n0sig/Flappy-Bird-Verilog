// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Jun  8 19:12:32 2021
// Host        : Xiaoxin-Air14-IKBR running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top LogoROM -prefix
//               LogoROM_ LogoROM_stub.v
// Design      : LogoROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *)
module LogoROM(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[13:0],spo[15:0]" */;
  input [13:0]a;
  output [15:0]spo;
endmodule
