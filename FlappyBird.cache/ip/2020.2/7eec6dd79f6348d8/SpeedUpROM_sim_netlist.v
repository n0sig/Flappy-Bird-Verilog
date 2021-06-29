// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jun 26 23:08:52 2021
// Host        : DESKTOP-MK4CLK1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SpeedUpROM_sim_netlist.v
// Design      : SpeedUpROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SpeedUpROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12048)
`pragma protect data_block
D1JQgZ1ygBPBK5Ju3Ty16evu85aOBdqmTDut+ECeiq6epcL1jP9ME0z6zhKYDVpwhpaScwkRsasM
8lIX3aUGRBugNCk6a9nMjDWrj0fL1W7SGrl52lsm8aSo/KBmyrZNaf5gboXK/RQDaEHFPOEDcw3c
g7SDjBnl1eit92sRQv6c8KI0Pha9lgMmzqyyCubCR/ONoh2dO02vih6oq7M/gMEGk506MGJJv1uY
xbcGaIMCb55oqrkhdAX/YWIZyIJu1G+ToJ+Wo0EGiQVEDwrRKdgdmWwtHeurpAf9qAp0tzo6Qkk9
7SiJelWk+Fj5z1Mpi3JTlUR/nP2ZaGBg4zptYyDIjOfNsr9TS+lRMc58toC6t6hMmz+q2Bj+g2O/
g3wAn0fvgR17XCr/ZjYZSTE/C0QOYfbbUYymda8S+HAzF7jd+66nMiJlBfHRcsxbnZj55tab3i+j
L4aGjj2HF+xlBcas2G8zOwfW3G3DxPxKyPkYlgmTlRZHegx9LbalziqR9SSRX+Qf3kV7XPOZbMz3
yPDvBFWNX3m4Gn01H8p5jcrEqUdvjf1/Xv03reuMVwfMvYN0Ytq5mgo+HNyRssqVBtxByP2LZT5a
OF4zusBlq3Y0g1t8lz/K92brndxCaNCrOJ4M0cY4frU7LpC58CqrZWC6mfjnytBpFdyXqTCWCnrd
0NKckK4mqfe4h+92P3uoBrIsliZJeHys9DLblllvy8n6OUjkIVN0vf6N+FVapDyTnZgkR2m8L039
KyfHAPCUhdvjz62Sh/EMfVjpC3jC9ichJkucbDf96kFTQ5ZrIrK/08Ay/St1sB5j1oghn0jQG7H3
javq3YUX5pJ2S1WyDq8Klp5iDw4/PDA+QrPLLfPsamF7CgIRpoqaCffDvbKY+BQ5Tk53Bj99fNuj
kajnHRK9Z+8XmEeWlqFPLYCXtFlGpq1yUAEdQb0F47ljwYjBLr13+a3qUVbXyCVbYOiPlXRMG0HV
+r97+1Cp/ME9NH9jvdPf6W2OEJ2a6+Ml2KnfF8jvYhInarKkWKEkz+m4NcqxBV6L8wFcc3xkSwP0
G+qNgZ2tk9GDcVBVU3dwmtCju8Ui77G/lJ4+3gqsTICBCd8j38F86B9Vt3jf708S5vv3qG9rAOPX
ztrGa+c8EKQH2At2USkN3XEqxP77wvCBDoPM/MYNQhAV1QgZRvH3T7SPkjnMi6v1EltrBQNXx0xQ
tqEbufvlrqLzkQArl89rB5+3Hs8KIxkJvdvv4AJ8TlM99YG6u61RQeLz6lgZ+NiZPrhvQL/YYAJG
lXZtDrD3ekOzosC7h0Xd3pdqHQUZ+ghSPy3dndLkcy1q0Dpx/kvisSZH41IgnF3YJUtNJCDTMZHp
Gpc8FZmnSVMXgM5FWSbuts/H8wB2UIfqcSbr4QkavVSDE+niF4xLm6CxVjpTv8uUZ0vJljhtrc3L
FLxSyKwg2DF0pjlQA7G5bC6B5MdWxgdMKMZG/h47c8LjB3zELGToUIevlN5FsAdJQI3DHxCV9yfU
5SwyGkM/gaDc5DLksgDyMbgB1XS4zN+pQLaSPKLmNC0fkroZJmQPKJSu49hgnCqL8QLB52DUTye4
Wi24SWtJnJiYXpYkYuM3ydMKQ/N8+C9xwVWL+oefzacIFdE7WKhsBvvMrf8egRNH7fVzz0WxDbjD
ml1gfkJZU95RwJSKIfcHIfvEhSjFZo7NfqijSi1U52cUCBGl3UVE3pV2UFdm4Sw696O9B20/TU8B
rWGGAl9uiJDsOifmSZ+KJ+4Al5t/ZypojnCM8OQtDsK4y/+1IVdD/aRgBYZaLrQq8eyWd1ZszY2F
Usv5qXuL44JUSNebUVn+xpyhoUUweR9uCKzaEFfysuIhj+iaAR3ygCRCTvEeDWEjgpJOpMxu331o
KVUjZ5LIyrTyMll4GXk3Ww9MXS+QjxlwSOTHIHzddVEykyJ/aLiJyXhHgS/4FGEY0NNBCsY46L1O
6xjf1lq8JBXVs2g1xKmzvfyrK3PfjmFwTe9OtkN1QVDfgglgGh5jufFCp9/kbwEVGY80Jr7C1PzE
tx9MxAK6KG8XeEnHcsPvUF6eM+khMJWFP3rnoS71UGQsoeJg2TnSjkN9c/c9orrVr9qkGpbaO0ub
gbynBTBQLUFULdXySsE8a/m5zuZM8KaT7EYVXdyxjQSYaqKZD2NlveP4B0UofVY4ssfXpz9bTPUf
lJ3KWgxZIa8MwnK1XhRlQHTZ/tTkDEQr8qakg+z5w1Eaay3Ysu8bzehvsPKQ19XRjZGzTFwSb7ot
RfVeYgI974wqhRr5P0ZbeO28XaNjkqPT+099p8K3H8xzNuUt0vAa0oe6ewH6Wjal9T2uVhPGuuOR
qvZrvc3CL3PbHMuYri+FzGS9nGALbPX3CZwy6YkKTqbv7U+2CmzcpQGWl9GDn2l81cB7vIC0nqV2
Ejbmw8DmW171mfIakKGel6qKYknyueI3hfv021txt3RveDFTSb2dCybR3vFVsEioZLa+pNpFKW4l
bC8eSQN4+bEz7LC9OTT9OOxa1wy/UvaHUeNcKjkiFMLAv4nGFYd63pjeWD1cy1R4NaRlxq7xd3pM
rJEI23DJTe4RaGVmzB24nVNSyttycKBjuMoVjud7/e4M+h1cyNoXv3N0+hnfJHuXOAbBs8I5cKCk
BsZesYR/L0YmU9v9K8Y8T0mipbPnPaNSL6foF0PHx7VgThgy/WWFaV4cpOjEhYN3gkhONjVMf6qn
q0Om14RmiRLW2XVOMautnxrsTnSTA2TeZ31T2GSdvlPBQTW4YL/r0wWR6oF5eujUIeaZWlR6WxAl
KAObUfn5TLskpUa4j46QzuHSOfTecETN1U6kEe4ymV5xB1VdYG+TUCivRo7h3Cn2sce+vTDCKqBe
Fp9pnNeitqzCkfOCxdULyAnTQ9EJhrL5cbT2/u7pPPFm1l7YedrdWhXRdeaaaUXAkLm2zpX6aDwi
LPgjgleow7V7NM5Khvc1K4MRRS/7r2ctXy4dOZ1sJvwdj93TNjwhFVVvF3oQnxyRp9gioUtVJnrz
kj0+ltbqWTiCj0po77NLm23pD0skHMpGlXSUyJSX1kJVwiQ91dd+/HaYS/lMM4Q4v71wqroRaOor
tqs2UUWRcEm6F6wXb+HY1Gal/40BV475Hquc0aVH9pVT/C8qT99lj25gmm+mKfpI9w720AuTO3yv
EVYKquQFpd0u6XXMVCYT2oFyT6UDYOVcucpDqYjODOAJjYtCVQaNgTY1/6mqqskgE5CdAm7zrAMA
rXEp4d50LxgPxNnZYRWKlGTET3Q1iQdz+TY1Nd6LEAxl7HZtibqeNPCswhZB+uFep+1CVryc36Wz
KfghmDYbjQ7hLqZfCO521gJbi2fnmcsdz7Pdk7nWQKa6JbB3kAvL7+LjlqtgzKD3ddB0D6tGmPB2
Rj/iFiLI+BnFlt6LRRpthlaXBZLvXIRQ1w4b+rV8lu2F+fhRZAupr7hk8d5I1I44BbKwikV0hSbJ
J9U9oVb3a6ant7ZgbmEEZdC05ApX7YHUQ1OgFCvluM4altajnWtOXOGuRX3ljywVeRBwLPcfnBdg
UW0hXuldiGnuoJprTXOS43n0FUVwDEBv3yEAlO2Pdrq5YWFAUqXmLl9MVG9KBba2tHJ03DChHBE3
RiY+SpxhbX52mwfS7cbepSrsDBjdV8BmnugVzBJzc/CcWropHlA1P6BN5PcTKtyRJhF79fbr1XKs
fWjDCv2bqU8OsDgemHCKsepICBz+tKXMt2lAFtALwlM3s1qSxWXPTgybAY4F9r+zA4pGzJk1wuB3
qJwHeuY574VBbUa9lDiAgznKiCh0/H35PGYj4DsXOmJGzmeT4glDp7U+3uFsTVY7o1PQBHqOvEXT
fcy/xjthbWVvmotenQamQ2koO9TUXeEEssFZRPGtTc4uLFBBEeVhddBGCe27bs/bI+LDaHowSiiZ
7/Lg9NQCv/zUncNKmCvCKbPZNxq59jZQyvDnrHaYiGTib7u59GkBd4QrYDQ5FFv9nnE0bA0rZOv1
rqt3yLE26w8jEX+oKo3dBt1Hs6Bo9CeIDbehC1QYRyFup/cdVekIxN6++iHl10KtAktQ7famQC8s
XTuT4MZP9b+KI9cu17sVUZh97hFu3xGLp8JsP6tu45cXegLsdhM6fLuTGcIaoQOj68/R4UuyHHM7
iMc9BkA1nYm8Z8pR59go5eYneyVWeVn+4DrxSGw5vnoELLEY+1tTutNSeDDx9UPY2qe689Un6bMB
lbTVzNytMiUV/m2+8MRTja4ckD+AOs6wrkBeWM8sZwqsEXkSWp+D+bzqevY+1UVIoU9+LWmFty2J
rSweLs8bHBuevHAMw5WPRlI+xixw0f4zZGbESv5J3/xADf6gWSe0+407x0X0fenurwBrDr27DCfX
P0E+C5f8+vT3bhcf5q7Ht+phXn9fOTTO1a8tQtzfM18cThTIfcYrXgA6URzSXoiuJh85BYdEdbZO
AwPapKdj5jhmOxahcTMlWgXrqOCt54IespC4/yLjzh2lGdE4O3aWFmPKkhPrbIt9XbgfU9ZpSADv
DnO9n68YIkgWMSneADIYBML59wihX1YL3rujEUDH9D3skKXHhSGLS3jwwtvLG25gYKqXIq+8cuqh
fr028950hexrTbiP5DPXhsjTYcFJwz94mqtJTuE2csTSiye2gdcbiTbARgc5arzV5nnbSyHRZ7a8
pX9RcJMKaRicCy+ceNMtjvBBmW2HmrcQQxFHoWYdmEKDtUAjZp+xQsgEAZkXl117JpNwmzDAzBNd
Tv7uIUd+y8fArEtxfR2FkbyiOMSO/cvb9v+jmmYF69kaQQw+gDbcR8gVW2U9OSHWZ0ZFfGE58toN
eYYDUWi7FM2riUNKLhpF7cpHACpbAS2ekMkIjBbO/uJQGl5kLP1xajX7p9qDzCbDDqrPNOZo2hcE
3q+B6F5HQBjh95UfAFLolGOfDE6HNJqD6dqtH2DKK825/binUXnd7Bi8ZkqEYcVg6YMzOkrXF4iF
P+g0TgM0+WZrr4rumu8df3PdJKbZVOSsi+YBxO6wiJjb5PhFdw5+aHridul9AD60C7wo9HNIkQJU
dX8WmdooZJNERBtIS4MjCrrRKHZbTPKamBPD1gEMQs67vW53UB0W4SKdId+CnfZUGnJ4v5QBEJgC
g5Vsk8laK5OeW376/VdnQVeZeTIHNL6mRI5hBVVTrZIhtisd3I+IyS9t9GDoE5j69Os9J+BtJc4b
2KSkkZa0TVIZApN81SE70SoMH+P/mUWo+v+uyf6YVp1FxwVBGT8M/uVyp+kX41pdCFZsWjg0A17A
aTZt4ggT/gYIorOqKTdm0Po3QRs9A1KDijH0H10BlqB0sj3lqMrcTJ0zbdg0xYUsr58SLsECRyYv
8DwuJtzZdgyab00NRC1w9KUYHa7J14KK8DqJ93vqKvjH/3SjV7/JiroA17ddoBdpz+X2GTtbNa1b
2VxTlVzDrb3nMGyeixuiz19AtT3A1OB20hKrmNWwAVsCJSDELU0011LTbUYFculDlSiXRwytxgJs
rwgIi4MeGxHK6aUg8pbNWWyCR3mny6+SLLptrSfi1m17AssSePXWBeVhvvGBCO2sJITI/y0YAWBP
qeMz3Ffkp1qAVA0+wed8F8GZfqdod3o9S4QNFXeY9+ft1Ce8pTPfekCIiXR4WGdtG9UvLR9qDudA
Rkj62VfaavI+FGysGHywZZlj8Da/US7mDonwI7nu7+UM2Z0tD3He1NbTEv+EEabO7PQfKwBKLQ5s
cr8eaBJbUABEp25sOIght525zK8qR22shEAGHbIticNOgnEDHPg+d2/HG+KbEksLCqShDWDS50cE
W2CbEVwjcE8NV96zZ+fO9MZOn8wuFesaICFaOwY6iqCLxbBTH/1CjZ1x1lIlfNdw7ltQD6NW7gUj
Jg/xAX0N57V6BswLNtdqWPRMP0skscbrSAv9aKPW1q3xjPijmUJzFwdwINrrRo2xib97JoJ5DLjQ
1xfDO2qVa8FR55u5O4h8xLPMd17M/MQpOVTyXk9I8GrnWvzTRaWPLQSAER/aWXQq/Xk81lYmlE1O
GhwsXcaa0eUw2TeOBq0aZ5I5rf7sRDivw1cCP6/QXm39lIjKexXMhyCdG1ER+W/eedPejImU4R4q
x5zwS3eV5VYdONX5ADqmAHobfOXhktMRh7pXUSn1qOqMA46KrWyGwEdJ9DtX9POr9SxSdj7PFCGP
zsglWD1gnmZnTGjCxgQR/DWtx1EyK4iy10li8QWObizWyqyIdcRP75Rp1DZarUk5CxjcJjA/ed4u
suITQAZVVpuMrKwMVvmu9v4nwLhsKmrnmNM3UnRePUYf/injzPGTT6VcPXgZRGVAxPTdJeRp/faa
2fsdH6mJYAPIBjB+TZKKEsljheeYQ79IlpmeeWhO6yaCgJ4Ve90RVZjT079LTMWYsYqCzgBbJFtP
WVXl5CoqfrUJ4ZROZxrW736az9eaOP85NeExgAGOJq5yX9QGNxJFOwMK2ifSfZRfEKRG9TGNjP6a
O1KMmrbg3P9155tEaqXOgqIsi0K0gHIYyEAKNUTX7A7EiNHK6/+ycbxM+Eieh7ak2CEm8oMH4YEF
c6b18ATOEk0IJQT+XuTuSh0/m7otHg6a4QECp0iNNFvZj40pEtbDQBmyswld4MVkyZ2NueARQIgY
wA6ZJSKup/uXWDYTYWZmd9RP05HK+gy3aLJFr7rGLX0ZVU6CMGg9qiaVUWaIeralBqYXxts+wpPQ
uTF/YHwF63Boh8BySAnkP2mJ54IXkKOy+otDL9HSTzESL/tURddj72QXfQI2Eojwoo4VxnNtMLvC
Lva3YCVRNqIBd7tHEibFlq6jEG1c8iaXYhaIoZPH8MwXVsIFQRteYPxI7uGJSmSYvRAFt2MGYeyy
dI+EViPf5HsoqZ3uy+Db8NZbIkVzQP+XjN3nXzG/B2e4U1BpohuntpxdtIYjQrcGkZEmhvcU9Pe1
9SpK4F5BhKjLgR+zFN6Ng+xFjWjB9Iee5Pxbu8JL2Onh0IXtyVrYicitW/lfp9B+sGmIO7G/i41r
7fBh48xsV0S0z09ug6Lveobqb+k2brH4Ert58ckD1+qgqSCaOQlBJln+LjqqS9i2xBmmU3tGK+r/
8AEDC/jbKJo2XCl9H9O0ifuZM32SzUFtRRWtE9T/3pGQR+r9uRiuoASdw1jA/91ITBxM6oFqYjM+
+1ozlTZV9UnQVHExeNv0GmY/yZt6mzpZHT5qyrdVSy8eUHFrbqRf97QsdvOkY9TFz9/LvLLhFrqX
EA2e8bAAuLICQIwnf3Aqmkki0TMXeRjWCe7MhcEF0PmxWaPJQjP3vXphd72HNKP5/Xei7iqT5wH6
Ny9aPfEZqtYxh136iWTnOqDsKo2LpuCD7DCMizTPkBSbyTgeb+uPeDBXcJaExhAAB2JCuysWnXcw
i0VISSstZaFmTdx64ZaticT6XotylLvGE83weQ2rXcxCBdhpng94NBHecMkv/Kz9jZsjFti9aFUP
eaVaC9qjSRSJ7KL70UWhHGg8ScDZWK0r0EcGXe+YH+a8CXeL966gpQW5+eOTL3cbFB+Jz7lMT1t1
as9SaKqaa1Qz8mGXOQBbLcVxyabrEgDIQ7FhJUDCmrk7TWetxLXMykvfpY7yxyzBQd9BMbXX5wFo
xV5AU2KF9/Igjh+3+QpzlelU1RcFvF14uRvQqmfPWiKfg3/HfWjB0h1jExz7ApT9rp4eRI0ihhYE
4HpziyOAi2LpBksqrQr1/yga7nPdNOuSuOLSl2ZX3rNimE3u21u4HRBb45CVAxeTKPQRcAJm0jPE
3H1QDEVEeeBFBIXBLErNY7SWaX7lFpyVO3SwwktuAhIHPXF+TtuUJYoOB0JULVl+00QQtRAFfD0x
Q2KiDUmi+MBR6OSM3CdSuZ4Zl4iPKPXjbwL1Ajw+WmnImHVj7FFHKsDbtNIyj8UmvAffVZrSfqpi
JERRohV9xqCeVUN50yIlisnBl60x4cMtqaXHzIpRT139pRkFvfSbrnOlI8kUJUESXh9NWMVX22sZ
v5CSbXciinzRotCDS6nQlLiLoxD7Gb9pdebohogX4yrDpi3WX/ZjrNeVc0/jTkVx100fi/LsCLKF
VZzno01F9jY/ih0sHXS0+6xqN57dvTEaZqoSIAFGJ9L8Ew3S7FIazBhM5BQNAyRA8M0tS9WYOcc8
P52r2v9n98rLOnzdWSnJ0qIWxRCacIOGewZB1xEh58QITanxFMBRmB0jpV7vy91/b4eUE8tS+Qg3
dcVkwCUCNKhEgYPtWSuUGrVdmrvaj54o7u6wFVfYwpnFDUUIyy1YtZHC/sqVXqR0aQEam7Nn5aAs
Wl+SWO4nYL9Wmm0k8OFHoLqDuIukQCfzCfAGfXoUeX1YF21zoW7WZlqHbNPHI89VEcRMOP90Hpt2
4foRk7uxgjkL+HwWf8K425urLNXLyjv8yBLjmj8H1Hu9qBS3sUeZoGs4XsMpwcLZHTAI0OaWqoCp
SSsMR6z69/QddgSXKf5ODW/O6cV4o3T87AyPzfS3PBZQ/kzYFg0qVQ/tAiUOqpZJG+UQGBC9BolB
LA35kyBd09yfYrZsHvIvU7id18khSzZLZGWZJWcH5NTUwaWowpGASBbO/EloI2dw8qUTdUkrCg4/
JvhfmmO9PA/OJoC6WLnHA8PZJ34m+ZhvhzrfTInC+u9y9fWHtDSnuTiA8FRAjI3zDc257lMGfHa8
NWHxEu8SUuhnvhNkAfILo1FSMtvVdP1YMMKO/QY6fZsFfKHzvciwGh8kh84mFokApBUlFFiCxIzG
v8zVQHfaIZVoR7mwSbAUnqqABCU3jOqP+ebBL82hRJYxil3BMjHLGX2cRq3qYHmQvLnwnsuO2iMF
CKPGx88ws/7MwPo+J2zgkMEkzn717F4wk8pDTqQcC4JvCeHxsAQxa83fPPdRkPsSIGZcb6DNLJBq
AU/3UMgU+0+VN3aWpEODfTaxv2BSlcnkGlPIh2wUa5c+DDGgGHWG51TPutKhEPPr8jjAZ69qZf2i
1/78LPofNBoFKEguUE0aqdH6a+RnO4x3u0tFUSjl07fVjhC+Z4E2bVWCxE8kDjgNdJkyUTDWk5DZ
AKE0p85vWADmHny3jjm9U0VUr8FPil4GwIsZQR5ADsdyZk97GXjd8kmt05iMO8CPjeCPtdp67E6V
xNrUGXhZbBaQxLQTH9M73kLVUXiX1YFWJd4kE7BKYhAfchKuiWZNppt21+sNwsMlcVAhrdAZ4gx7
xtj8Z6Z1Hva4PlIDm/iwxiyh8Z5jpC/locej84bX60+6kDqgDATRXpLHMai7zn7DDYgsSJ6JbhmH
AbYusWLyISJOxSNqnsyvMYwN9K19YhAMoyuIrsZKlq2l/rCaQHrTpVt37epPQiK0KNWWb6FOUXen
2wCyD1whYCxBhMYEURYxObEseUQjWS45EBJIYn3CnDiRQEBTUIg+4R2uobp1QWtzw5TnPn6JSJ64
7C/xD1pUyXEaaI31bBXxxGqEVXXSzTd97u3z7Ks4sg5Zt79Z/K4SE+1AAuAtd0FePLP9TK+UXOCN
oGc2oJgCMf7+1UQazq5tU3e6+nrdYIX+MlRdr2Lm1anqgfDzQMaD6myAOeTG4/riLtnLSYu4EGrW
xaaMT0u1k78n1Ot61L1Gv3b1x7Izv0pc4IOovZr1Gu5usye9Otcb8eN594h6qwrMTmoYejAF/oOI
u3rkIs9kSfsFQzGAsHC71+Zi7kRu2BM2UIC85VNfjKf63X5N5PsabTozb3lXzYSer8FNI3NGpQEY
K6mZWxKKtOWcm1OL2Zoyy/qn9ZMx/0XSWgK6VzuQA3/3ikwDF53vWX5FiE3WPBXyxcj1UJdP56Z/
Cz6RMBzBQsjcnPD4q1jzDadv6Kw4ip878heUoYtFVABgLOVdzoUoTIGl3t1Pv2wcWqIXsHZ5U8PL
p5Jm0wuGizaYsx7GWU2PrLkfjqseBdind6GJ6Er0if6/DH+7rLNiXdQpKPJe4rk5nhM7VGfycW8Y
M5VIIEH0/I31YNNZ1NHZNxBB/ph8tfFt8LJPKkT144jbQ0fewVjLV+Su1etxP32DllH8MzysLlBv
iRCiJ7wrjQd8E70qvPVHFSNcTY3jSY5BNEL+25SYj8yx4dRupJAj95FnXd5xmY1SgWVvLZQywCRb
I7YzC1mKnX2E8W96ffs8oZ86a1/TqNjKGM4xnrShHsOE2ANovGEWoTXjJ1FsLBn4yfHmQTEnEtB5
g0Afq4GYij0jcvc+YMAbAAEzc/+7t8eoVJFeck3E94IB6k8UbsddXj+icWRWd1HhLc4upfjQbXUM
s9bYhaLv/Z+35P7enDVEgcQOfcLYtptYpCXNqunCLHIJkhFEdcF01gpACaSUY69FJAEQTcMftoms
5hsCOI/vb8laZoaJsv2URE8e5qH6M1gypADNurRpnKoudAypYv4NmYCYWrZj86X3BrK8+1/YdYvt
BCStevC+QP5ZPgk6J88T8VCzkJqFJgDudzYIw5D4K7q6U98yrC6kfI7KnPN8mjJCTayCSpRFD8Cx
DUyf44agPacrshzeIy58VtQyGSVERnjijjzcdxZ/JEadiF83GQHW49pJgfcL4guIOEHEQ39U6KED
rolBA8to5NgfBZzDppkHvJ4BpDImn8X9XxX03Q55cR4zlbYTIRD0Y1mfIQT9VVdJdR4KYuDJRyGI
2LfvFLOcGnj8NeTgB0lmWhUdD6Rroy9r0wO6Iu7EfUcrMEyYQ9uBfcRG85kqIN/q+aJp5QQ9B9AW
mB4V6Q/AejFxGhbJ/T+xJLwvE7NInaT/QWM3fKj3PL1PvTmqpBxW0PBgKlg9xtLmwdLB0C0lCU9X
toPOCXJxT04TD0r24MSduUzTQ29Pvsa9Ol9kkGjkWhKL1ie+/wB32O3sHQ9cLWwwloJ8PjgoLDa+
GiKX4JsFkPzwr+BVqmODHiu+ZvC4YUhrVmV2Sr/I1xf811RYwh/7ZtdIa20hijEORvICUF3rYSug
goMIB66m858svMYn7lsw55zW8qLbHSubqBeTGzoWZw0v9jTgKAuQwQj8Q+5XyzPpAET1LldNaWCl
yjgQS2Ff46wrL7ohHcmralKYZhRBVn6hu8i/RT8h4Xe5A1LhsdYVAI8OMHbH7UqJufLPVZhUIK3W
zkZKOG+A6hGfRIvvtP/ZmNxhe9DeT6pyT9REO1vKq4fYc2PyzxQ0vrTuuibwtWx+pPt/VEbJT9RT
VsvCoicoemJWBl1GAhnxcbmmCGkVOtpjpWJdXU5aYdi7d46cr4cFWb3jS3o4xA1P5iAuezzelVZO
wwsfEXKzG4CKdAS9VmZhTPayZf6QB/AfNji3Vdi+fDFuWkBV5cNO1/hSW8+BitT58hvtjXkINcpY
/50rPhs7DqBB1r8mgmxhDdycWiYBqkQ5Uwp8lcmPS5WFjBeSSJ37LoNVGYqmToglJS+c1o/XhmPz
xNgTfZN1gVgW65O2AAXSEen/GEgqyHgQeyCmjWQsJMhBPZXy7YZUH0p+IHLcavWBpXt7kmRR6uyQ
uWrQ1g1HADZ4oWDCmmgu3FHPvA+GkYJojmKuHnvGuIme4FS6OPOsT6V9EUq+VQdwPBonA+1bFxSo
G5NtI3Cp+NaQxeLY7M0I4FIzZTMPDgde0Tky1HJT9zZtHz92WtdqNctYjHlCoXP3JEt8SfmzFLjq
0bz6NCI8mNlEU5FlAc+dPBAPVL9i/LUcmoxOFbpy1Xy50rIkr9iNlFTFWW4Ym2mXxhc7DuMg3Hni
5eFzMYZ7oId2m0Oo6nzAnKQc6xw4SXwy/DCamWjKNeQ4X+6MmcEN7x5tDoch3VtWqEkBxHSJRx4e
AZhGS9jqYQiKwYmd4gbI7ymXOCCn3Iz0ksbWrGBT6nyzfptw8mBwBLg7YPndUwIWT8GlpallCsim
IlhHAAJVqkVphZZ6nX6TCkkvR/UPyWhjvWTHpOttOR074CKqw6YcQaGwpLfiOziVFQQ4QVhbpugm
gud7YLcQ4eJ5zhEiiV2oFYhsHs9tCRXG+Gl/RYRSX35wrOLMuxAPu80zyw4kYpXawgkFWwm3DwB8
HXDdXRyc5+Yic3G137GTN+VrdD62EaaJlYshLrebqA9raWuUv0hFMwN8AjDSHZPpbxQISMzleG5T
Z6Lmyy5nTukJAnJ/AFx3SMhPEyb3tvveMcDuxuQ3ttj5yVD/+IGB8yPjYsgOy9HxFjsvSR76pGrH
LAAE66ySeityV4JSXD1LXOw/Dd6QDrtWHE/Uwp0c6Y6roFx0u4oVGtw5KIfLZenwDsLxUSwrbWGI
qIUhUgrPwQnxNKt4PuBWkt4VR+J108Y0Ro8f2A/uwbAkQv892yLaNWLZ+8jPQ+aaK9AtaRK3TO2A
1rwYtgdcqytZbx0vl9ivdK+zxg2U8v4ZZlTlZlT4aQLdJUZAIrG8Qz86xy01Bp0zZM/OOt+RxQZ/
CWqifp4swNapb6DdJAUx9k4KsQnn9BPPFI5hKx3x4vj9Nt32HdTfPn1TUOTKyGEN/EVPw8g3aMqd
LRwxa08/MrFXXB2qiplLm15e7G6qZNyvLzwkvI9E49M87PVw25rNsZWxDKTWRpTaFesRKb4Bz9mY
CLNTn5M830FbllGbDPZPT9BEzUiELCubi3lzTUxEirvQk7EyY0CXHOEmAir7WUaOAr6PoPpLV9gn
+8F62eYTLSrWTj6ZK63LDMxNHM+q3qdZJX7O6JoOC9rO6hoxsrsKdoeHb62LzcZHwI077h/NOR62
EIgGHItGCdhoOCvM8TmvJjcaD5ElkDJx5Sa1Q/9RwmZ/31DwTugHVrn2wvyBC7K8S9ztMoKI3Svl
hxNtvIC3RzNRPyl2Vcb5yGiP/UVMts/gbS/O65AMQ5ETX1RYyugfAHUJu6a8menDB189sZ0Kp6rx
shH88peZMpcDwGSS3HH+xa4bTSXgTnQ7Kaci3i07eHxNRMeqy65WWZJdRdIj8NlZ+aAfw3XkMLan
t35uF76MLJuXD2svOyBM63veAkGibvdOp48tH2LC6y6vRMBIDW+1W20KmTeSQwfW9yeWKnm/U1hL
GpE/hMYVK3EkXvUI5e/c2+ErLQddgdDW2tDkuhk7lLOdv81yNaUHd1ILxtTOuGgZmH2hAOWGAZvV
8xMcmYpdQm8IfezbjrGGFHOr6fI2rovTg6qoMeS83gGrFcNNpbPhr9UZky+KZX+Sd+8grITkWIEN
TTutHk76CH4jkcUfWIK7vxeItYldk8xJtIBJufryoKXPSljBYeRMpe1JHLpQmKuzcxn6q7vvEKty
OjqMYW4TT6tmgu8u2LX2CUGzHk5bWDRZarqq2uq2F2mfxOev+3ie+ZOCtm2MAgRMxzc3MxK8p7LH
2l+I4A4qCBBCASEmJL/QPqymfeFXj9YADSTvcrqGzK35dOdJPrHI5LzTsMLw8OCyLeCzEVcrmy1Q
a9nfeieXSMWhkhwb+9/FIZ4XaHrjHu0efNOxwjCtJLeyoJZH2Ut1bWpfVD9ba7454RzoLrjnh2fP
jOiJ4yVLyowJ5zZowoDAFwcJPONEtQ8lgi+Y5JdxwN8dEqY3i/eMUgn61ny2WhMJxP53oCl1nqzR
EpnFsJvMbXjJ/hj/D/V9g1QGirkGUUJZlY1YPq1mYDS7TwQ9i5ZJH22gP4k3s45ChFoswY9WoO9I
L0ypMJQGZVbCa3pegVDlUf5hPrvWqoFZdTOZfbNSNpt/EslJWGIRPgEDjpSW3ZiGmXeaM1gsUI3L
52uSfeDPeujuOwv4tjGW+yecYHUn7q4sH3Bv0aD5CeTP+ddJ9TUClBV+paPI9lHJJvRhZlBkQfAX
YnxYX4H5YkUyXE/viDC1QuQmoA0Q5b8Frm3ZcZVMPHK2ww6rRpoH2tYgBJpqHvYoKInpsDXrRT2B
zO/V2/9JpWMgfinVqokgl3iJIEkY19aXyZID0Zs+ZsdyZi7NazllVaMkpwgNVbxATk+9qHM8z6vl
DGvH5St3oG+4FK0rWGm8hnsmWtp4kKOVhhSB3mbYqavBEU9kSvSpFWKg99PdWVGiSHe08qJArpRW
JP7VwYdS/cdoreChYW2d3rSwBMUppFGh3PA9JJ65ptIHDLLjggXouYmFfHlp0EgkRwxv8zCzsQTK
T6p1fO6zE2Uh9fgdDuAjNN3SsgbFi9SlDmXYvRa584L6kF8dU/o2KskGjH8TeIMFCXHTY9ha0ZL0
WlULPQ1y2UegCsNq0TgTqZP1h9k1teP/koWsotpbHNW8Va6K9+YtuXZ68fsL8A3JsTpjsp+LpSBW
vpK/IGDaiVQ5mSKwEpbxCa+djsPGRC6d+7DZ0jMEjR8XYEVYkPNKS8/6t3Xa8upHRIoxmlnD4ASW
NqFtpCArQVPASFqoe7mx5fAndVsGWDqUINmNJV4s3XpNWG1psutFM2qNATzlGOPR/fXJbc8aKnvo
/9VRdgMMLqJrvMxG+XpBOS77oL1zmvSFnED7MmZf56B+3s0cSgKUSTAWZdXr7cv3IUL3XocahIl9
A3zQTc9xbSM1GNkkDAx8aptpcFzwQyGcO13I7mRE6f4OeZa2YN7ca4cR6GzibNzkbVdcdiS4lY5c
GVRG5XqBw2of2iTQgsL4bWk4lk3YNFerf4JtJ41WPOdE2V8apLDubhxPv0hY4Sbi8A3sAqjvz+xc
VYnrmV6p1wFenLGbDTgTVFwqybtb8Ft2IxxDnynn3PaajHEQyH4nFDWtHkuG7wuz1g1tJSJXzJTZ
OLjwPOC1Sn2XXVXiEW5vbJuWD3IoBcouAfXeMyqcnjn+UegvQC9x8avs3X/gf//lhJ1lvFKrbwJC
pauPgNS0eehyLnqZv0YepXHQHHsexN6kOmz2VByAd1C7izfq0+6QgSvkf6Swb76P0AMN3ZcdleI3
xlnLWO5JjGgbZsChBw+ZLrgj5V7cOUVRwW70ETKQbIjBAets1ghhvNrBO6MAgmdupdTpFAjhcmD3
jkWr/bB4V8qqVvve1OPyp8wGqwOPxb4FxhHDWfDPEK+qZIExF1wxsPLfKG31Id5Xfp3EefgP2s7T
uoe19qpHVqe+nRv4LWa1LOSUZJ7/fgwhdftsZNUzuRNTUpCILzT3DsFRPf3A/Op0umMnS6s2wYD8
GnqpMw9VUUZrGtfW25QMNyV2kO9PF2DrsRGbb7zhc3ATFVXpSsfm8xYMQ/lM23F1WYXop/bub95f
PZnmThtM2Doir7LIp5Uz2InOuWFh+09tmrWbDklP+xUtE3Z5VRbmU8DYhgGlGFQjNb+guZ1xzqUa
nZJUzi6IQmJ870wKv3TzIInAOQSMWHXJbuTpfExLxY2q2GE7qquFYbynRgdjIKK1OmAjP3CG93dJ
Q72wfPKXacImlcn3HLGjMypRw7zcMV2A+5IbllvPEcvueD+/KUPtgBXNKsDuR67czOwlr61ySWEE
kUidlxDeM0PkBRxIu6PUyEX7aiormMe0Tdj+HSU+QFq+5p8hx4I5+Kdft5RkDXm0K66QU8gdCnUD
uWSYRkHIC1U16/NFxmHeZG0RRgVz4VpIH9B8ymv3EyT8U6VsOIcDfuul6EP0B8JcNvQczTczM+uU
HDNHcYAP0wGQc7EZj2Lc178X2Aa/WsbxuEMAgpxTSIPAsV8K+NGo4wLxCdIfaf+YNbTOAvCICtpi
bF+FDCGblUvGc57A9c7MXYitqTbOFdAT/3WjhQAFDBfJ13picQK+k/Uu40OmbBQ7Z8dI5Idepv7D
S8XOuVidWZ7F/yjz1z40h9F6yk1w6XAPs8QATKeUSicFImJz20glrc/ggqj7l/UzN/IsUC9Np5Al
oYtNR1Q8u3Sp3A80dJ2YjSs97Qt3oiqAE6yMrjySI/upzPZ+u5rKHFCeGoatCHKhcaGxRHqGQt4d
CVVBvZQQyRkwE0M3DKJ9XuJ7pW/EpqmTN4jonuIUedYaM1Xo1XGjEPxPjhhjt1hGZbuhrefiC40X
46rWdSeGp9EYCuWNESa5d3H4GLyury689yC8XC7yb94mIALA9L877hTFIKGIN9aCzw1w6iVeHg1B
Y9vNeoQULdIsdc/lKGUC/Ip+K3ug
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
