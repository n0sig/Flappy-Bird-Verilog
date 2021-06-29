// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 23 23:34:17 2021
// Host        : Xiaoxin-Air14-IKBR running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top ScoreNumberROM -prefix
//               ScoreNumberROM_ ScoreNumberROM_sim_netlist.v
// Design      : ScoreNumberROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ScoreNumberROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ScoreNumberROM
   (a,
    spo);
  input [10:0]a;
  output [15:0]spo;

  wire [10:0]a;
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
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1920" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ScoreNumberROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  ScoreNumberROM_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12096)
`pragma protect data_block
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
P+e5qdrLikv+EICx
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
