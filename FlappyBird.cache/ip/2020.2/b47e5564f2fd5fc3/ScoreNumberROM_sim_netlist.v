// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jun 23 23:34:17 2021
// Host        : Xiaoxin-Air14-IKBR running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ScoreNumberROM_sim_netlist.v
// Design      : ScoreNumberROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ScoreNumberROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12240)
`pragma protect data_block
+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
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
