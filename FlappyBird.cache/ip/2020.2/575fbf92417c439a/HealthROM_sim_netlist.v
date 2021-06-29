// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Jun 28 13:35:13 2021
// Host        : DESKTOP-MK4CLK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HealthROM_sim_netlist.v
// Design      : HealthROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HealthROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [7:0]a;
  output [15:0]spo;

  wire [7:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_mem_init_file = "HealthROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
        .spo(spo),
        .we(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21856)
`pragma protect data_block
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
AkFmKJK/Kn0Mvm46QeCrgJ/B0R7QXg9yrg==
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