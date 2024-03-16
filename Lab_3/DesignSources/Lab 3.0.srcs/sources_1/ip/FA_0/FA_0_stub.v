// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Tue Feb 13 14:54:53 2024
// Host        : CSE-ADVLABPC-61 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub {c:/Users/workShop/Desktop/Lab 3.0/Lab
//               3.0.srcs/sources_1/ip/FA_0/FA_0_stub.v}
// Design      : FA_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FA,Vivado 2019.2" *)
module FA_0(A, B, C_in, S, C_out)
/* synthesis syn_black_box black_box_pad_pin="A,B,C_in,S,C_out" */;
  input A;
  input B;
  input C_in;
  output S;
  output C_out;
endmodule
