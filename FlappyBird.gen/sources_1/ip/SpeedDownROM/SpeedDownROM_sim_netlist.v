// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jun 26 23:09:23 2021
// Host        : DESKTOP-MK4CLK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yhszj/Desktop/FlappyBird/FlappyBird.gen/sources_1/ip/SpeedDownROM/SpeedDownROM_sim_netlist.v
// Design      : SpeedDownROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SpeedDownROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SpeedDownROM
   (a,
    spo);
  input [7:0]a;
  output [15:0]spo;

  wire \<const1> ;
  wire [7:0]a;
  wire [12:4]\^spo ;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;
  wire [15:0]NLW_U0_spo_UNCONNECTED;

  assign spo[15] = \<const1> ;
  assign spo[14] = \<const1> ;
  assign spo[13] = \<const1> ;
  assign spo[12] = \^spo [12];
  assign spo[11] = \<const1> ;
  assign spo[10:4] = \^spo [10:4];
  assign spo[3] = \<const1> ;
  assign spo[2] = \<const1> ;
  assign spo[1] = \<const1> ;
  assign spo[0] = \<const1> ;
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "256" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "SpeedDownROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  SpeedDownROM_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[15:13],\^spo ,NLW_U0_spo_UNCONNECTED[3:0]}),
        .we(1'b0));
  VCC VCC
       (.P(\<const1> ));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12032)
`pragma protect data_block
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
Eov1VoA=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
