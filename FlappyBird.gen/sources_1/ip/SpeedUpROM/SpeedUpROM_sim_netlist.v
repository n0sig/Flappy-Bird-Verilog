// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jun 26 23:08:52 2021
// Host        : DESKTOP-MK4CLK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top SpeedUpROM -prefix
//               SpeedUpROM_ SpeedUpROM_sim_netlist.v
// Design      : SpeedUpROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SpeedUpROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module SpeedUpROM
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
  (* c_mem_init_file = "SpeedUpROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  SpeedUpROM_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11904)
`pragma protect data_block
0nY10mXjJ/IjaIFr08Wak8RU2NsWSwW+lmm64PMlX6OIooe6plz8HtTmvWlkCaAlcKCNekR0u8pV
TwdjS1OKsUL08AkWRmRfK9Y7pZ3muhEnAIdzmpHKdjP7daavEnAERcuPMqUmoLMgcGYK6N7E2dSO
43M65rGf3U4OW3zysRFPd3pa1n8yrLTyZN1+A9fsyUnIXABAMwC5R4NZfabfoUONZYZRVPRqkW5m
FhRe/FBKAKtdqXfpZTp23Rtj/6lv5NsBbUAWItJ6hcc1wj69uzIZ8LR3XlLvlVwvUgy0593XsxqO
zCgsT0M6NZsaJg0O08aACnQ6OFk4y3lgVkGxbwFazp3PQ4wkR9cmUERAgXm+oq4yf1caGkBcTr51
8CuqCKz6c28iRR9CpRdFwnyz+8zB+zK0/hGWQxSebBfFWKfIcWuljMpilhqgA6SBdokAF9dP/Uho
AImeIj5iykXH8geAeHHhgxCG2DcAh/Cmg3o2YRIuqqK9EDVbHEiuDLY3gc6cwrSDxB3bYSnjqWZX
CPBmRi2GpZ6kljMxKzbbkUVLggBzzudjYifZvbYF5wyYq7uZu1zdd7/f18X5iv72INIMCPBfjP59
4tAHehbDZlm8J6jcYTzYgBzL6JyNlmRfe4N80bV2V3VMn1PMFzSq2LZW6p4xjTM0EQ4iyEfcNvdm
5i9//f3pUSEMyl6s7e/plKkM2jiRBLwDcVwLQC11A1hcFbElH2GwMpDwEE/oua1zfnvxBnJNj9Lk
8VWhtfYnS2gLhEtLEW/Ww098E2yp5xTZ2vq+T+wbEal6faU0fiFYluYJ6nzU++LaX/7y3xn2EAM3
2Adfs4CtosCHVNV1WpaIMJp17il0zYBRAU6a3xkStmJctxWno/Vzucq/vxq2LCWFGOJlEiRfAAe8
cnUWcMjNOTeQr/7nFlSF7iGgrdCKhtXbq+bZBZPxrpY+71Xqv5Xzih2Nrhk9P5X9ViV98895V1KB
KHuFOBswkVYBFSTuLnmci0D3nOzCwF9ciJrONTFCYcwlpCRIm0V9gmEvvpaoIbEKZEFyRT+G9Py4
jDtMayFJNLNJ+VyBzLFIChsW94b1Rhd/Ihusv3XQ03SxD4vME91kOaZHf3XlnzTJhB7xn4QkSF6A
pxSKgzcQSVNUNE/rQQKhNRHfCZiFbcbV32ec6JqovuLSmHdaACLkR/sutAX0M9j+WtP/NbbY/eac
KP6ysvHc115ZtlWtpFhrppYDSAbbxzDpDsO0xkjr7OYjt2i6SAz4E5Pb2HCYA4b2nYCzk55ycuiZ
MT8QUKsArO9U+SES0mD2TwVr8rZSccZvCBxNN37+GEVp2EMm2xxD/AlVwnpHhon0jtsahYkA687v
iWWtVLeg5IvpzD2aAUbJihGhoI+92BDCiu4yb04MN8yFuMJFBvp9+PCCdxMXyUfeETZiB/Mek5h0
8vxya42dNZ9cqOXyNEV30CY5BQDnRSS2swtMLcQoF8eiyVAmdX9lLLKWpdVJu9KxwN7uWMSIwceg
NCBP9A64Vq2Necuj9shC/wTLHehTbpKsZHwGdpcX7BwZwWQLOk6Lbp89OgOyCI4s3y5SWY0X3yGw
WTKCt2PvhQtk+ZuQWR8U+8bVdrawrO9REYYPjOX1pTHDQTg0hm15DmZ9RWjt+ORJQWhAyYqbfwmZ
fpOWvuvOThQsbjic+CsEbhyDQh6A3+Yo+kjqu4vNQLzMqmuzGkWctAbdOFdV6XVdRtI7eGIxvAQL
Mk/f1uC8kVZxTmKUYzcsU2ASAozM4LXAxIyNkqT6LCvIqToRF2lzYGrcF3JqM804b1VB1XCfgxFZ
ihJvWCKdk7af6NRjY1L5nopvUMZS0gmqiV0+cebVMcCokDArw6Kcr1NBg4gRQGPagJRVZ6qip/gl
jNFzu9HNMwvIQ1QbwVcCMgfHBas0940rm2zaErv2tlQffigGr98bOE9QADqms0ATNtMnhsSMrFjA
4qsAAOt8Ovlst7YyaTbdt7SEzrWxRRF0QGpq8OiWCoc2ogXGeZig3Q9w4tPRMKetkkqQ2dz6FSjD
wmROxyUiwoixfMCkHOvjP7lyYB8XuDDN3ZBbMFMWywkybVe5fgBkhm+AANbTHTqUe3iA+Tz3x9g7
QvosksLRJIu1FOf+ZTCCPuQCqvTzMwK5h3e0ZTu4RkH9DNHxekvgAYpU/OP65JJKOnR7d6TmFu9X
HC0HNtwMhTYNAbdhw08sGsg07Y9sHeypN6f3xg2Dpz5AYHQOxsFO1Q6II8bJFZiaCW4zvrb6qOWv
dQuljxmcMKq+VsZ9v58rX8Aqk6VvEnejyvk1ip6DZcyLognKZZ9Ij1v1Y5d3Sh6Vbfi/f1qc+4i5
knXF1XeeLO1j4LirYfNqpU+jaY/1YbuuKKS3IlW8NP6k+kkX/e1HoL++BFgtcLCeGfTCNvh0FPbA
bjwJv5X/XeNSZ0neW6KqaugqNkXsqov/x01NzxuKE4z74TZ/dExvo+++lEsb9mNwnuV41PCTly79
8pRphunHsr0NHQpeo6aYk+hJvPhiVtry7Nd7HXnDTGHG+m0xdYUMEcW4hPJ4BnM78s3bk7jrhUsq
ABqk7KURN/ohVQlBXa0uwnqfLKXCnNRD+zQYlVIqgkF0eRSi8J0VCByA46SUJiJMB0lNffBrue8x
vIGrTzIWku+YQQUCymQUlNtTWqvmYZ6P6TEDvrpjJXgoV+D/IKZ6H4VVRxl0IEsCXJzTRU2vwCzr
PgcnYAXqPDfMXp76vt8f59eBxpDL9w+BOqjbEgbodw0QCe6y4pEU5P19yCM1bAmz/qqhfo47EaMc
HUGnf5K7X1/o/S6rtr1xwi/q8JK+ldv+zEALJf32NYDcPiXtG9rtzrpz3Thielu0CFl/5cV1diX7
GMCidPP+ZqMbmAyShvs2vVEONDO6kMsruuQ26FkRCxlTL36OwyhK5rlY8kRFEyr1Um9IXGTJ/6S6
nTJs7oy9AiGebxQdLi6CJjkzuKShI2oPTpyLunSGzbZ9xI1861Z0h3Zh0qito0pbbwg0onBzAV4t
kssxiiPytulAfzv9msV9TiWAaWckCCxvdjJ53bk7iE9WdRXu4t7LsKk9dy2NsvArLkKVBRKbLTmu
z9L1iC0e4OB4VqaYsiJAAgFNr3LVxqs0rzKdtKz8d1capfcqhxG/MbOHrWITnm/1yPJ8Qo0sH6bw
4H5N+gHFEt3bwcSaZ/+obU7xRjZe0anaR5auK6Qxf9y/GM+YivrDe+LG0p1Dd9ijwqco/1r4sdwU
AIKtTo7xwBnBzIfzMA60R0dR8dbc26Pgs0SPIs/bs8y4O3VeZyEzO9e7S/BtVS+Fyquh515zvUbX
EAw/+ItdXGC3up/VndRfW5vmfQiCzjFz+JrZnroSRhTWhh+tWJ0m2qSpcCVjH6UmKdnqEnyzRWBM
+6juYyvwaUdprGrxzAhJQwL1LUrdpo4Db+aCyOPPPiizPT0wCHb3bDGNE41t8m7+s0idntipXlbV
D+0/98fOWRI79SOpUSdmh4EedJSQu7iy0RqZdiob1DAaw8ZMqe+3ZD49QO6z/+TwCcAyNA8R2I8M
Ze7KOw2gPeSNTz+Bz57xcoD4pztlXn9FUi6iDaYtwTXI60/eYtFRvVOv7mxDL6u72Jp6vnfc8J0g
svtMB500AbbT9M51ZaZ8/7hVrKnisiCkIZjI+VNqVexV6bayoh1NFXTchuHAOhTxZ5WMFeAm28px
d/qqktTkv8H4OWrtuGKYFwXOso/IaBWW51/1w8OGQJ1wfzQ5i0nkWCc30Qmreql9PKQ4pCseZeES
8RbbqRnkVB/WQdHz8o9TZU5VE7elbTLkiwVF0MJT8hFAI0xNYZazIa8e1lwEZyN/CQ6GtIEr64Jh
1CrtsIJ/DYgXTR+C/BJpgS9Bz60G/oEsCk05DEIu0tzOuwu8hGhvu3KtKiLTca4G5D7T0+egM1WJ
RCB/XmAZocBZS6F+0xYuR0iN8gbzbLHt47tTA2URDbvbV7BWNmLo9xgjWLMyFv5jNzN+Qly4U6oG
2KH0X13OwXn3dfqcXnWQ7smA0zR2cpOxdg73Vpta7eCP8e8/g14Gme+4BWAPLCCxDqaB8XyQDHdn
dod/3dlaTlt8DI1tu7fvYp+A8pe+8q14eAJLHbHz0VwBxgzbMhQ64jGkVun38XXAm7ZeYhnDddZK
McAAHeyleQZlHL/DzmCQ87MoA0AE4JOwxBkSAsEdLxXwD5TDjoX6xvkHyWfJwvvmg2/6c0Upujxz
JxlYDJ6UjJZj4/OVi9/5e2Zbqkpw+qUYbGyYD2eELvnPbF+q1P18HmyMFIt0LPYJ4KAQzZPetY5d
YwD9+UHxcCDPHOLDEFYpVaE2rsKPTaOG/Yy2T7kyRw07L5517NP0Q8kPNJf6LhWk0VcOfIAT3kjp
9KerL81CXzjMwJYCB6jbXO3akDHm0laHZ3zsqKIHTgNmCvOmoa1s0PUW4rsDLxnlStH3DnhvozXy
L7qU3oLVgPBoHx1ffpUJ0b+jN8z7sAE6e3J1svPPAhAhOQ0BwZttr44xiayFof9aeGD62q3z1TuL
ZAPltmn0/kMNPKlT18T3XemazLOZtdosvspv6yewyeWUmybdNkCuBFZ6hE3BiJ2CYr6qxn534NUC
yrHGxrsWlDMnsuUjKJWTjQyEr+rnTclrs8QTsA1F8kusiy8O5SN7ctlCFGEjmWIAYFZJqV1gLOMU
KsWSsOvXyWwHsul7bylaG6wyS6W5Dy056NmhrMIN71PoyNt8NTYZmPhY+mnSeQgbeTfeU1ZyNPpM
QIlOeqnKkXO7e7m5QZraB/CYFzPTI6btg4ZliFArr7xYQfpOZf207+lOgcTC3OjKbMH+CM+bIP7s
bOneHulnTMVmeQDeL1xW0Z5PqEBUWMFrVI/cwSp0OdF7Z5HiHNp1XS1ZmYz2nlltYRpiCniO6i00
rwRwacBg8D/R9wRvcWa33wfMnaPaUSwqahqXhbsXhEi3WCTfZmRkJpIS9GQzG+CuJnlgn7aYrRey
P4VimFwyxzPgmSz3KLPYmr+jQRFbEQ2v8HL8ydZnQAEXDftc6F//fxjJilbhpfXelkB7vjJfOYx+
YgZJq2VNQrr40bi34q85yA6aZHLiVVIG+DwkUVbqmTp7HwSjivaKqF/CE770UNcis7cRpE5+uQc4
4Oie8U4WfEebhchx6INzZ3GdzFegCJd6jXqJbEEgLfxEn0uYtaIIQgvpRkALk6CQYJNUCgKtcZn6
9bzTH3YyluDGX4JOfBgEJFBcCGp+iamlo4zKORtdi5I+/NwtytRxhLt8pOKdhdLCW3o0chDUwfzA
6NTlmNQQtB7AHsPM5CmuQBFH/xQFEmp3DhEfth0ZiMBxC3vGPOlTcj7ja71CUJP8QjlQtx08ZO6a
v0Hl4lNVpQkMe22yjhmrJ8iyfOszN4W1DU6RYrTEb/p3/79j+9zKfMu8rrDKofQL3MhM1r39db0J
+KntbivY1HxryeLIVG4LoRW4vwWfcZzA77FQidKk9k6tNHRGm/xpClXQlVbmRtlU38lguuE2zvtV
WDrpmH5rC9av1TQd0jdoG7YHRCY6hSaeGBuyjeLWZYdSdqE+1A8IEtbonkBa1kjAEoJmu8tGrI1M
Rg1yLyMNjpKCCUhpaxd9tBQ2u8qzHfvW5L0VbbBvAK9aqQXq5Ud0VytSPiaPsed6l9E8F35nnQel
qQVM0G7nLq7xYYLuPAbRbv3s64en99mYyYf7Y2rdqHNZv3LLyWpfEj3DJE2vIQta0eGFCUWntI7i
zVlj5ixIhN804QpjqxfLHNeybH1WDEIgRsiIgwYtgPKwveUrYXG5vcmfwdjvtSDjzcO3JzBlhST3
9Sv0zMKCUXLry7olEvj3EC8C/NIUZvN6+c+U6/euuHhcmT+mac432BuxWy9nXzSuVAdtScKeDhsa
lU/sNGaoU9y+WfzW2UmyFJyNDjqdmQbEUqlgYs67xHj5CJFZv+hGnPBmOiEDsa90VaW8283C86IB
ZXOgEp75OP5pgFKC6p/Cwac8EDLyrNNEmQ9etTM6/6ZnZCXRwi31kntwtDf54ftVtQcol0BP5B5P
BYcx4/oqIap703dFDzRzDbLf0xsjQKCzRqVdXzrn7Jemm7IwoHpDns1oS7pnuNEfZwmdYj8baQki
D8Tw6FM/wM6dsLGSDK1mq/+D4LXJzMXjOUU9xirXDEEJzklmhp6Ojk8SKOb+NfZJtGiFrGspwKkH
GBwLnVHhCdSOEzjywhLC+PVO30zGEDlBB+zMYGjjDowj93wGe31YDfGxltsKKRdbcdchXQ+Nmeo8
dnYNLFHaX7NvPrVVpZYEnuwSMlTB2bXBnvuEe/e/mkL04U1kk84rwrPi1IAiev99DPlZaGsVdzMJ
IOy03mPwhYSU6x+B9pPnYv4e+PWUjeXQl1KwBg0T2Y3LJWih16HtDX3sMrDHvMIy+d9ZVh2UjLHc
w9ESbfm/c2S4GU5LIDPEgT+cWQfKIKceYoCneDK7jeyDZV3g3jOML2nh8D8yolpDGYX7J2NzqT41
D6O+vvaYiY+bE8woM+6w/EjuTqi/QBsc+QdgSZ6B9WgpUcLxoppEsFb+iyYpdHAGZpdP179pXhRY
FUbv7LJXEXhIB4zGPNL9LW5PgEW958i+SVJpP8X6fbqY2iZV/+HHv/BVO8POwHSEWVVd3/NfeFVN
qEHlhw7eVMQyeKfiIEE/Bt7geqPwntfu26A1qoaAcpPLgf2TjPRQ7jZSHv1OzL2h/VcBb62RiaSE
1HQdF0yHKVtTCp79HZ8WrgcsAIimA5VHY0Mow8PPlbUHxngBy8X7/iuqNIoz0Beoax8xFUXZ7qfD
VMBtzFCMHaKt3xCEFY64VBMzUhVX6JFV4LYe5wachDoTQFiKdC+W1r2mQx2QvIw8jqXJt62c3VDn
0Ij+kwf5CHSi5BKUp2AIOw/EuAMsGlCQOGggaurbe+y69F3ogLcs5451DUHiU+fy3zTlPZwH5riN
FmnoqWXTQ2TDtOCJ8gTXvd4orNMY3jHq+wbRdeCiiQgCuOYqWO++pvqW36YGs8uWVU4Ej3Gr12Jr
bnKoG7k15YXBrTM7Gv7Vdo32LI/1tcxNrA/f6jtW4Agoqsuy3VdlhyM71kifQ447YR1X5DSX2D+M
pLbRnuI7D/9v7wslsfXdrb1kTAkO09RrNUcgibLNSUmxrvl9OzH/GvWyY54u+Vakm/Du9ZzSwS9e
TNpL0JvRwUjcG6HFiPqAfZF+Cs+aF4XyE7JKchU7mry8XgQ7J6EXKc9qhj4fa5fFJah7lDOYD1jO
UTqiRsLF0k5quwIdb1z9i/rMtfBb/sCvKDJgQchk7vRYQinZl6IhbmQdLMzX4z3WubVDAfU8cD5V
l5FwxwLIVwdgEzxWn2YSsJsHivJpTu+nQp7T+PoEI3erN1t10VO/tRj+Icmzt1f/FG5qYMq9VS1L
nqXEXbir1k0un2t7W2qch9JuoEcNVLhQC6NeA2i8hX6wfmDe19vpyCnk9Mi1ro4wVU2S+8vBX0G2
pt5SufYV+D2alGqBivf40A5mpkOxSrwlAjiR7f10i0tKjWYEg4ykyblawlm/ZSMX2+5b/i+RXb12
qsvbOXQ40PtpZT+W7l06UE3shcQpPyPEXr0cZ/W+CZ8jpNqpAAu0spTQXnUuyopytm2QbNSl7cy4
Je0t5JA3V3vBnh1wlkxeyXkSBoJNzWrIKrTu+/RbohiVb+RDiTtT/pSgDKFDoSAKSd3O84S+cDKj
JlxpEigUm0J0vt+VUMid1/xNB3fhJY8NeeHfExy8ujgLECqdJZmW7xocvZ2Kbd2N1UyTantb62as
OG9BLSc4fCiftYRntVvasb4g8Zpu3Xh7w+xHa+bUneW/jCTx4vFpsCv1O9ju++rZkvGJgFJtdli+
srHDUu3rycNU5qdyNms9HDMxgP3Q5a1VpkrZ7S4e6M9v9CHIpgr71g+Ll6T4qO/yNqZoFTdKhw13
PZjbdADzhZRvJcW0F4wEg3vNNOw+bcI7M9RUGPgVGFr/RKL+howwzd384gJiwTbTzjmYI8Fyuwcf
+cHEDG29r2dpLk8a7lZbLEG9o4o14LIklinxr5wrGCxU3hQTwwJt5+lAmLy/jo9Ee8mIbd0YImcS
tQDH7ppxfhQiI+Leh3hcEEllX2BEKhYR0mzvsED5vP8Z/UgR46V32XLwaw9+GWe3qyWQknGzi9Zq
CnB9RE6WNWYxZhubibbDnzLf4Njp/g2Q6X5APLo9ScyYNowHU/RjQotEJGWajEIXsXEQjWFlOSuK
AAlbW0xN8yMixJ9IpO5fDQxUeDkec3OMRoPtEZzQ6QMaDn3WdiUcKQLhC5s6+3C8pGOdDiDsiRcD
KqplYyIm9ZGB+EKSOZ3P+M2r80cv0dgGfqpI03dbu/djj23dcA5e3UbMyq9WiSDLEu8vrx04CiDh
s93hslg9hfU190+HomqYXR0AEclHpHBNLd27Y3AbFKXX1ofj6pF5QwNU72ffRtH9KYtj5eESUfRf
yUrApA/7VXdlMwN0+7Yw37X2jptbgmYxyweNkaFFzZUnfSnibgBeoZLOCY8T0qeOwIcFZiIMlAEy
V45oSNxZ6h1LGIIP7dN2zeFCAMK2XDSyjiSsaIrC/vIBLNepDSX2KkECrNKfgQvcU2RqBAyzPYRd
IBBX5I75KFXP5yXJWKZyqXe8dtXQKM6zF6EpuT189XqTEKtPlT1UlrlxFpmYWA9rgKTkf3TjqW2W
GyE9RmGQbotg2b+yYlGC6m6MlnwvAMmrhpvpM6yal3OAIo/n/d/sXHhzhHRs4IVABY0GK/DFfBXD
bhMqiQ+U4jV7JMP2ZMv9DurwWGEe/DAcs7UMxrunkcG3Y8jnuglg2zchbddCTIHhsNOYkXRUztJD
wGnIKCgFFuZkAWgN9DxR2kdBuI+qcPSgsf4i0KiP0UKqtQHbN5Q4t+q7SQh4jwzAzLeqypeXuvXb
vH4uKfEVEVDtq4Xi58pVRVj0vhyYrMPPSqhLzHx4HjQPVUajHqnmo/zD4bcfkJ441+U92IwTDILc
EeAFjzdSRLgILicOv3FCW7Vfik1UOKV9nc+5l+yoJ9TBtYb/WgJA8b2fJEotX60DUOI9TUFXFxUo
OkFlrNoKeLLzNeFsdncrhlrCupbL77gUY64bF5nRz/i5R75wmBt0SIPegKA2H+LXrNbvIDufnFDL
s2hbrkpAFHMncaPOcFn5dEg9PEz0vGcLLVo2AZ762PJd9O7XO2boRnKnSW/qoUHDWdGf3uO0fPmP
/CUjG9GFndKPH/LpvUk4wCgnewKT8b6SpDHDQJ0gLoWE23NiVMjCc8ac1HDc2JFmRTJSMJZFUZKj
k4RRqadsSbR4KGf9mMKv+rbT63INBn/5/viMJ7D9Y9KzTlPFkiQANMegEK8tTBgYDhXAjW80OEha
bHsX2ACosbO+r26W1q/GaOb1v7MSwLES0Drm9yq2Zy2xvzy8y+8ER3OuVeq5DWBZ92blH9vhtMVn
Rr5LXA119a3p5GmOdrzk85eWu7KqgFFW3u12ozs9RNyFNo1VWmDjT2dEJzlPGb4AbsmIlK1oZRoR
UdBFOXlBxHryBEkdLNn6OMEibovjnWZZ+q2DldF+oaJSc9q9ugDzjG9BcRfQnP9c9cDT8l2Xg0oz
B8VrZEJTGwB0Fuvq8frML5bo0QiMLzZ1O4jt9WfpXd0RMDWouYF2vBtrwPxGHYulMqaIegLNGZp7
IKGNFcmaN/ErT5F85UC18b7GSGGowDhpxmeFQFSJsAAvSBMBVF2pRmQGYKhuKcy5mpLi9LKW9usi
+EX1uQd9tnpKo2+AKxBB+sUA39Zgt36o536x2AQw+kU5p8tER7t4Dd+zzla4IjCyfZFRYDpn7LqL
Kw7imne8VhyetqmBiSbuDjwGEH2Jy6tTkl5AHTbA7djHFVz/PWUrpCOUjQ+amv8O9gAzjEIsu1+b
jrSU8NTCHt25ooFKJZB2z+ySpP0yFCz3ErBW9tFBXfaiL0yyjWhuQXp9ahqtRIJ3KuGuCbTA9y2A
ddxcGr2revCpTBHOcagN1QyGehHgjo2ApeDOEbVQEiHkdHHOrs3j0033C/XUvUq23EELOVhuZSEw
P5JlUWgkDZ1u5JjLSfq4YcRdRSKoGxWgFosJsSSOsR6q9GgaZOnGzWz1UJdDAcd92nAAIFo851Td
mfxZaEy5DGuRtFlwtCsLen6EHXU9AlkAOxU/j1wg4BZheQMaeAkoUyPCKAYl3Kr4S4Il8spdjLkJ
yNlkzlNo1VX7MuqkjzD3QJNzOMlrKb3WbSr8BQxiOWCf83Q3x3yJhzT2FlnxUpTLpUZ4xIbCoKP8
yemeYEda81lfdvGG3P6sTKqGHiZEXlHgDGL0/uuE4wRUapIdXbJQWzn/GRrz27RmdWSG7lg+tiOj
VfN0i0VAuh8iqHrkPR4SUoT68/vq3IXIdd4TDiaQXE024WhST/UrbJ6MED521CFbnFj5UWYTiX1S
Lwasb17vv0K/zI4yrQ27xnZpJiS6NEcUAdYNoNvlM1Zdehd3ZicHp6tYctW7AOgiMAseXAZCJBwH
WFj2HrjtOQbo345SgazFG5/gFx7bRfer0mbDQkfD+YMQfFWqA8afH3pFx5W6eBiNE/7dyRiO/WNZ
J4xLEFTtycSI9wEUY9nT5XHQQHilxg/GtNXeQAkz4h0JwX2/aBKlEggEQ8Y0ZOvUefEeV9gqraYJ
Tecx39/oL+J199S88o/0vg8JboqARDgCC6R9KCmkHlTs0eDGQKhZ3cYuGloMM68IY25Dd0Mevybz
S0/1xOnrEng2D8nhqPJwasy3Pc7sqa5JDRHZSEOvm4lEm/ZUwx4/22xpffbs8M3+bPUnapV4bJ1d
G3HGCluCtU2iERlztTGMcemMP+soZ2wZVA6kKuKILVqZDQUS0+5yGmkpak+zZif+lGYqK39jjCP9
eRsWTvH4t61iuDSuE2jzBu88ho/XXnhAlhau/PwgwiIuSwIaq9rZI9LKS8l9ONJyDVdo0HEGhUpm
sFbyylZvJb5xSNdHkmfWBhyA26DBWPYWrCY+asyhc0y7AjORuZg2xdajat4b/T/sZDyUVrIcOzUa
KstQ0KXKAnmYBKAuRVjr3w/buEd9ixXCK4sqZE72NekkCuDa6tkmCXHpCL51R7CV9THXzCKt+jse
k4baDxODh9yApT4VlaS17/xnK5H2Is4+meQfNVy3Nrex7Vbs8fWGuS03ILm0Mf9jzNB+WeXXC/Gy
QYw/a0A9leKNGzUBzzlSnwostF5AFfEbT2RnCAlk44X1PjRDi63JwHV9/L2EcqISUKJU8krSK8r3
DXIpLQ6TtgpbA/L0uKY8Z7pppKrs/M5K2OjbP/r1xzCAOZ2bvF15bo0YPeDIZXDQrdpugQT7r2cl
BYG1yUNURHsffUon3Dz7YWoUvxRXq+A+ItOveS+CwvWAMpyAu1kmHArj7I6iR4Ab2PJfvhf62r0k
AlF6saNaaKQuRSOK3xvvo6q7b7r6Be5Ecdh/acpd5eoFNybzaX/KvQkyRijIW9sir1bBBm8kfYad
+Pqx3MjuW1H7zatJeto2zDl1eeqLsdsuP0GNsGrt0ryuXxIpZI/vSwqRmSA9g6zYEdXruhCYiZ6n
OcDeO8NhxW2Myi1XLbJ1s1b0bcYAOb0DKHY32zJTtSLgnGqNyBFnJIAPHbawoOBFVPVTFPiGpGyu
ysXasLwCvCg5QSEzqFrTdaPovdDSxEGolmVq9d/4Tnzads0xsdhQN6SSLc7Ro0tihaDB2z+VviH/
UJO5eYvHXZ3tmxVTxf4TBa0QXZcqBuwZdRTm6HWeUQT+XJ+LPOsZN6ni4t1L17WyozKqzC4pfKZQ
g/w1b6c192FAUvrOQrFren+RcTxaWyxyfg3lVShKsWiGvzeb0mm+0Jn1rjVU1XVnh14hihW7UVuY
vVMjhD/iBXBMyocnagdnToMlEuskizhOEOZkz0r5gCkSYz2onrz3UXZ5XXRctf7OyYcV8bFPjYmq
fymMAKKmjecSmgG4LG4b55CSTqrE9M3xKTYzsmtQOYdgYIPrA8zlIIv5Fi2tFtypaoxFKRxFItK4
9HIo99/HD9dZBUmeVK4/RKkBoRmWU1DJVZ3D6SM9RwFVjBFdjqBA0rsT8zyKAKBiFXQy7g+MpzTN
RCSjuSwv9PC07gz05D+Qzuax0Bx37SerR/MYKBJcC1SZZjJa3uQVtehPzj5WOa2PqL/ubukHe3lN
u0avCZIsQb+5IKWnCshvUDo2rwviRFUzd7pG5J5wInf/M/VbjknFM7VqZjFCLcjPlA58BXDAhafo
z6MpIdyfZzOpcajX+PxQhmD1s3humzN28u1tbPL7P1Nbz1/GgX+zEmvA3jLyJNlziIzgbDbrEc1o
pl2W3XjuOnmgIwk/nKV3MBVD69SJND+0vpBCtjyxguPHZcKgNAdmlRI02L9loZmu/y1Xr3jqJTN4
sIUSDTrRXns8ZW0FnHSTbumt4x9OeBKydyDdD8lJxIC0JnrFep5VvcPc17sAYfwBMTnw3esoIv9o
CW+Cv28EtWdsJI69R/Y5ZvaHF5qqt5qr3MRbehY02GtNaawidwLr6GuR7RHBqaFLOLFFVAY+2B8c
fVjEQSsSfZNy9wG9Mfcq566VuP1U34Z3WbMo6lEQ/p86ZyMRhdSIXCg66WgYWsMgskBRHH8YKHVu
ProTEdUh6xG5Z+phujGXP/ZEFgCq6XVPEDOMGlI7MstVAeQfeIdYgm5oTHAa3/WSKVEIBGOfX3+E
2Zfy9+Q+dlLxwucZYW1XTip1s/gIYvi9b1FX/0CZEg0sXsvLxXhhEBIq4IEnWnARYT9/8JFNV8ZU
I/cOJ42T5J2mxZ6B2pmQXkvR5C6pFpNlpxAfbBgplMj4QzDXnVuIrHEz6FoHFRcvPepaLgW5/AhA
YcoyOOmO02szOkISeENXdZy82ZCIpP0lkM4WRQ4gYd9afKUeJMkdniM0OxBqoQRP8xHLEAQx9ZxA
tyfrKAdYkGBPo0Bu73FvRTut0GWSytTPXgkfwKeYIUetRNvk4qMKbiAduKjru5BZ9mw57niq/CTw
VJakcl9UnBBNDlvxn9UC7PIFzBXUQyBagGvDUZkbP9VYqH3r1OQ14l/pEFvCMxaF+DUmwib3XSQE
R14n6kBhvCDaunLmXgMSHUspNUsS1QLGViDK+sNDKKAKi8YDFpi6qxj8mXl0gJgUJCpyACvSl5nU
Xm2GD07Kl3A4vViv+PQzA1fZDviOFm2//r+gCGC2C2oKpfeDAsmyzOoOX6Ahif1W21GAwe3MaCgT
9KBZE3tMaLh2pS3QwS4v8I+yy4U+QWFcSZZue7JO7daXq9Bq/aKqhA2LCki4A0KJXgsoXG97EdyR
vil5leaEMXjSa52sZ7tNDKTx9M3RVqyqtG3frguQYUmYcCTJPq7BCQGUJtawX8x9BfHe9N1bxM0R
vcFDispCVXh0zayx4BgOS1FQRU9qAUxXKbNMhlYDXbf41R2eVqy1cZp5AB+V8Y47PFPmi/mYABZ3
9jaWjhMgX3It83rnSxum43+Cg1CICtJUJUU2vl96wIqHFUN4ynIKpy6UQ4CvbovoL+dW2pA9mveM
4lR12KWo9oxlDTG8m2C4iZnt8bcLJxDZHIQE1x1U9Iqfmhpu0TrcCQuBmTybV50NshAFoYB2zVTm
Q0DCHOLtJhZD/45HWzUeCyin9Ag9in3WxM5QrqSxC5YMjORnoG6MNA9TyTcHZ2YI8wJVWUlDb2e8
xqGQgyhtfmdwmT6+TbsJ3iF9Ik+vIpFV/SSCYxmpYPYDWJSJZTMmeZ3Lgz7TsJomxMLCPgcLaipw
EOAhtfJmSOC4jT03sblMkx/I7qa44F9n9jCm1k9HxA2qqngTzBbKxtF2IxrGp4UHUDUWe/Oy+DkQ
JgSnfjwIU6mBTqzpLbRalJvfq6Lbmrvz4xvejFDMHEwhSN2np1eXm/NwZCpHPMOo27jR6BvisgkW
DRW//dv8z2NgOsJ1wenxZESMnJ/326CTDJeY9FYNCsGEWh308tEobNzsdAi/zZTJLWota1GIg6Gp
mhwDBUvJ7iYFUdHyCFrQbcehluZBWB3Q69BvCa1C1a4CBaYv207ivmDgzuL03mcVQvUxGO3Jdi5J
Aw8be36q8uz+h4lATSGsAH5406AL4DUxj8Vw9QORxF9jh3OhQ0NZSa750t1k4GK1q0IzBE3bIWYB
C1y/DAD/qgwJhgHvFcEuieEYNIznXB+4LmxtkaR7qAKz3yWCojl5slGczfRsxCAy6IxyRFQO3qVx
LReiahSuqzGHS5b1q7lCEBaDSJZjC/gOAtmDmWhdHjxUGe9pi0KGKpOLAnfqGX08yUGHdt+xHZXc
Lvks7xYvqS5bbkGowjgPxsXU1SB+F03gHCgsLulKjskWadfOAHBSNtCXmK/uTnqAsYWQg/ZwcVjN
XZEFoMaX3CoCSy7nLEsXYADDoPb2AuswX+VIG7iFLM7GhOWU4e3P8IwKWsnkRKrmrYZC2jouIndb
bwYhUYZT3c0LqW5APCjcjUJ020BW9ax+G1iIEtlWFsVJTjV9lu2VjtjSl607xj1iosFnDVURRIu5
JweI/k8qlYoozZ8Nkp8hvhYj2tW2B7zB3EGoVcWbcMD1QidkzcLS2G8Na7GqpM7O1wjDHCyuOGfA
J5hjoGfkHB/xzpQiYaFHKEaj/dmVAjVnF/uaPohnPKR0YHvTk6zGqHNJ0DUDNzA47SrL/0ArQ1Ly
GfH7NJHHTjyQJVw3S4GFmsVRYQTa+czAOWuM+sdzXUqAh8m8ClYEu+3pquMN2eupz0BfYFSgc0bn
xefr6JHjMkmqG0hxvYvK7JEiqvG5fo8AfNtdMmJoz9qQFe+P47bcq+VrCk45H5LjZ7Oo1gSuVz88
rp4TNpXj4B79fnhIxceL/3NqK+jPswZZSCU5o3mHSDVfnsGJm3O9Oc01/XcXQ+N//B5bRYKFfe+f
f8MKYyOLcRlL18Nhn0tMtwUkRuexlXqTv6vlVmyCfHCh2aivk1lewiIpl/K/MYdzyVcgOPefn/Ah
RFpi/x16uaWQJD8Zud7UAdQZqSAxEpJD2KPBr96UxFPTQdbvSOBIjx5n/Q4B0hisVWUY+ALZpm1p
vmtVu70ID7jC85WbgMngHX3LFUsHijIAiz8TDw6XSjRn263gm4kUq6AWeUUQ/ZuW4aa5MC3p4AT4
m3Rt3FtRRJzU/UQuWLi9kfJAqLu1i2Q/Cm+aIhcslO+q7BOzST0F2P3wzXIhPU4YDmJMfQo5zAcb
YBy1lU9X5Ev95Nt3HQZTy4Qr3YqbPdhKpYIvzwuBStiEz5H7yBYF8nY3DfEL5OKT3iKynwECeZyx
BU/FG+3NzlRjM5XhR0HvuzzOjx0o03Z1moFdWOR2IzvwQxW4pOJKuqBBvYYIg825Sd207RmiIG27
dGm6mz/rxb9Cjd5wJ5Ma6Kd/E3hiZZSpnXK8DdNZNmm4phj28MAGUKqATxLyk1Tmsu0o3ohz9aYV
AmLhm8fE1CtPqV+A0PeklbPZOWPwGrT3BvtUq60EKYitZWhGuuBUluU8EswgQYFlxfSvsSLoOFyp
rdNz5JZZb3OJ6hmMyDIewiqVNSUs2GA24W6iXlycDlYG7vpjWyUqP0PcEZ3ZMbIIad9epHJ6zwzk
/o4vNYja++EpyOXdEPS96codyGkTfQ6ax+6g2sM6qQFwa/VFQHtVNNHymslKFKsewkGYeaI7mpPK
v/b1DHCihRyE0/0hgEP5TfRU6rkRVbmUwb/E2JmDaxF+lFh5U4e5l3QtHjZvZX+SLFn6BARtm+Ij
vTUciFuLbP0zO0ggzDA8wlmaa0Qoxqh90eiwH6hn1ue7WmjPBbK8r2vGio3vIWBP
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
