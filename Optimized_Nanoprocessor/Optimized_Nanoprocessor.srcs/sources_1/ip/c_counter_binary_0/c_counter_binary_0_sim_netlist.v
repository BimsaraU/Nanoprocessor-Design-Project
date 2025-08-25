// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 19 22:05:49 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/ASUS
//               TUF/Documents/Vivado/Nano_Alts/Lower3/Lab10.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v}
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [26:0]Q;

  wire CLK;
  wire [26:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1011111010111100000111111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1011111010111100000111110" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1011111010111100000111111" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1011111010111100000111110" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [26:0]L;
  output THRESH0;
  output [26:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [26:0]L;
  wire [26:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1011111010111100000111111" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1011111010111100000111110" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "27" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nnt4hpm8aMeHj7Ghlfbft25wCDSU4OgHSYgohY5Y54OVk/ZF/3/A/1b58fvKplqLYq8SNPaFTeCI
yugxb4XKPA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
icRB/fOZDWyBabMGd2m0JhukfnHCgsonFqJLnbFiHqD4HAq532BpIMPsTzpuAnC2rpknvyTqUyNp
zmJV0F6HEz0B1BGhBWnWQWdUPOecb25tLs+HSnew62d+ujGd8F13AaXdqIxZe7XJ+oOhHoHhftLN
PVzwMLuHPFC02rrHF5U=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UY3ILsM3DuZnc+XV/RUWvQudTdoUz1tkAgav0BAHvgsM5yBjdXDC31ZmzwEomTATGQA3ZyDP1IDL
GXtKbgQ+Cd8kP0mzW8uQLpCA3FUxCYqGIOkrz1AGh8jX5JuHEvHCWemoS+uYgbVwGRgNn36iGiSU
gxGxGxdh2dlgJ5TnZBiEIX0KhlcoFalz5hmVTHOhhNB151SriAh/a7nvbZZdKagnqHLBGnsXr3X2
hj5Ufi+imJE/MbA3k0WSVJ4K4e5uzS7+rQaV7dfOOnqtxha/GLsZlIe+0/cSPegx5a1wR5/zNvZt
BjRWlUOjXOajbYx1DXcjwQJUCOW/mYg7roilCA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Slli2CcwGUT/eLLglKtjS4wUNMwN9NHiNCUArxZPrQCDFj2jhlUE28LL+IBGjrR+qAtIFykC9Kd9
3eCP9pujYo2DPdVUfuJULZV2Ow2d/+Zf5Mnl7hwkv3QsIu23MMfg+lCwO9PbciWGT7M4tuIOaDt9
gcvijNKNayVH/TgLuZmnfRcPwBpc/J8XAcme4fDtiSN81WJiamjnOditpRqGbcdTwO131y3Nf8IU
sOBj/rKwh/WiQn2F7WQwKwRx1RG7KWbvxZ7AKvotMiiicQ4EeMLyar6qr288WdRWnzO40o3xfNf9
XcEV9DFEH5pf6mlO7Be+8poeQfF48BYr0oIWsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vuD5k8BVxa4nKjQQQ+WKvoQLLI56XSBoO+N6Qlv4P2y6A1vklc08REN048SZS7CnH5rLUGlX+L+9
fd5VyDJoxFwuO+7w6acZY9orT2bwypP1gs++inV5X8k5aesVPhn5W5ZLNBx3f2u68cgOZ91cv7Tb
l27FG3cu02IjM24oe/guAhidJTAyYUgfasdILVTBFK7U7Qgqxrrtk9P5fQ7hgv3p/dnNUgVcsmUN
WLgfDR6BhoxTTfVJ3LsVLbRONPCncrmpSZN9u0gN4Ppjc6IoJlWVtcVVe8e5+AsCgtYtEC7c5uV3
ZzcSv8V9D5QSRKzac/hcIss/5ig5V2e7Odq1Ow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MnSIaBDkmU6w1uv4HUaSfyV1n39EmtmvDL4skDTuSqIic/7uyYxdyxkI1yYPW83e1uADyCVxLgIF
QWykei8H4LBD2qPj35xMB0VUiGklNVrf0xPw7A9zc+TaWRZbe2fUzVBYNGCZRONUmFhpErrW3ZTm
DGatJQqh0zL7zm6RtM0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MKqZgbDvPEkX3ewZ4OGZSdUgYTLha4IvHZdTjQbGb00U8YWqnUlofBnOzBnxDcKNxtcZr7tRVEhw
kraDbaXkY7kZztTYdYH4OIPzHav6NHz5mCM1y/JJ9LeFzH58+3usISA/dOz35h199Zr92CNRUFam
2jVWlIcu5zPNeve8tgzRX6nW7B14Chd6hqXLtQgEIHqi8YzTiDcZ0IasUfzqR0s3tKkzjMCC9/w7
bThLIredtKAIcJsjllEJm7S6cloYWgTjZHdOti+DRmdqPHf0yB6CaYa5wIK85A0vbRUG90uBivfI
+je7B+2BZvmSOa3QJP1N3EeJyT89YDYnpJhiDg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RXIL+96BdiKOw9SqOOfaApvefkBMkUUiH6VGeYXCESBrTG5CcTpd2ndEu335dgcvuiLKc36XcBDq
TGGKe7PnwnO2TFPKWNS88jxnm/+LtwdpavoC9Yj6jV16rGc653dYozhqUlQ5KofD2moIkTN85qGV
RsWsL3q9C1syCRrbcOneaTsxAoPW15OzDg59pWr294AZjndIUz4zRz5m4l6dZV7zr9F/GgV1mUB+
G60Vhu9XV0omt8KfzncmnqKZyFo3BGwcL719sfuKjJVKfo6IKHBn2vtsu1a+qhNqY/DfQdcBr2NL
mvS4vYx7z+mH1S2uO5woUn9nV+ItKfAMEiMyAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xwoAcMgnanqp1ZmhD/JNb5uihujNjBtKs6otFpxVQfQ3kP7QPhlMF4Pu14wF7GXsSwjLdnn9cvN4
wr+qPxvPx2kyuA1nCDv3vYj3gSLxB8dq35Xc64WbUv6EkpZROHpDQoKNqsebqTW77XlA68nI7pph
0kmOhbS583jM29dQmbyAfOH5NmRNLb0n/kJVHvMfw7ZtiJiKiUeTOUG8UMPx6CY5cTNNo5OcOKET
f0fhq068uN0Ark9onouniIoxu5GhRoz8fN/gSjSpRleKo/bOWI6MZR+M/kmbPRn+yi5iDO1U6sAF
I42/1jSFqf31vFpEEXjswwNdznM2wZB0QE9dEQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10784)
`pragma protect data_block
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
9NA57EnxLJNFCvE=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
