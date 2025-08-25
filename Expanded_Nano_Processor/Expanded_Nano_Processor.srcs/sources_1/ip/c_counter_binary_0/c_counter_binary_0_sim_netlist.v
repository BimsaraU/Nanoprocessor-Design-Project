// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 17 14:57:53 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ASUS
//               TUF/Documents/Vivado/Nano_Alts/Exp2/Exp.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v}
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
  (* C_COUNT_TO = "1" *) 
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
  (* C_THRESH0_VALUE = "1" *) 
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
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
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
  (* C_COUNT_TO = "1" *) 
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
  (* C_THRESH0_VALUE = "1" *) 
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
ko4TCWS1bNaKh9HD5GF5WYTDBbdapbbG1TQlw/0o36zszCASvO8i+1lACqYzH4xHRJVWlINOqwMz
DiHTykkjfZcx8CTBWOw3P4Qj3MbukYpq/aQd6GKYEBC9yswsjs2MUcfnGfI+OnxhlZFnf250iBGS
6xD5jDAvFox6xT92+OM7lCUXPRk9SjQeOYF29a2NE/YQLCXpESalI4O67K/cME9mYStO3h/cMTYE
zKsXsAjmiu/6Hq7dUm7gSDy1CPzXUZkPFqGY9MNrNE5Pv7nwzbBC/KcHnMtqjYffvCUL6WaPGDNN
2t7EkEyrbd+KQYVYROLEASJW4TU7HBVFWs+OfA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tiMjZlaPq1DRmyWD2xRCGdm9oPbEK0XWyECqk4ZnG1H5KX6zKUnWclHtdAyqZ1pG0SxwWv+WH9an
wD4xVeb2ycox6wlr/oX9BkL47qdT/nT8Qa+d5G++Zjp6/c2iBhAxRQRJPJr8wjHFY8afs8UKGH7+
sJcbclsU3NfMCEYCFOWM5tx5JuPZrjRvGoA9zuzzAdgyqHWjFOm4Ufw6eTkjbQRKOaDQrzyT6Vn+
JMGCpgW+eiLojJagqewgzaGA7QS9Q50MOnqdfA+qYenMQUOOw7UB1naGLe2hNRtybNu6nR6gjFFf
/UFar58iq/XRYwy0Li6WRG8d78p1jo3wlJwhUw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10736)
`pragma protect data_block
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
OMuoQUKeFsm40xq1TJTcwe/D4/8=
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
