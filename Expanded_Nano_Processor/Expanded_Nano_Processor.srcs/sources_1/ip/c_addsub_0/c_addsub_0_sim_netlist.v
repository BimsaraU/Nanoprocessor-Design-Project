// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 17 15:30:10 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/ASUS
//               TUF/Documents/Vivado/Nano_Alts/Exp2/Exp.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v}
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
   (A,
    B,
    ADD,
    C_OUT,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_out_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_out_intf, LAYERED_METADATA undef" *) output C_OUT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire C_OUT;
  wire [7:0]S;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "1" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire [7:0]A;
  wire ADD;
  wire [7:0]B;
  wire C_OUT;
  wire [7:0]S;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(C_OUT),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UeDLsS++yuMtaK20jGYvdQRH/kkeHBZtT2rnCTixohOznXZxFCkIAE+bXPWyEsfA8HKFB44sp+8R
Ib7FoNOCyopQ0N2LoOzn7mOqluZ0Z6ruR5g1+3nb+qRH/ikzO6VztuhK/dQ1M0SBMdZV7yWQjQSi
b/XuP9h0tX3Q4z7Flna0tOnklP8JIBTEE43kVxQu4YyDi+9iPuZFzN8ZmygHdK9gxkGRZL2uLBdE
O36+VhmdNYi+6yI/hKRmT+fZ9PULHFSn7z8f/iIxkHeTZA1hsAntLD4VME5SjsqJEd3tYnqS4xVn
XL98NHMuzm4eR9eaUNepAJTHLeTQi8C69lYhNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
snPhZoC3316p6wsa8g+XQILBsqohsBPyb3GkiFS29FXzYBoOHaQt4VTj6rzx/SfAtbI5xCi7NLIW
/B585jTrUhVmIRzUALe11m7wyPJgyAJ3UnOD8dihv+WM6gIlUzy/VMcZVzsiD1hws/ALNckB+KDJ
FBAOe/gvc3mrzF/lbiW1ucIUk5cMwqwdaIyGthKFVOdqThoNMx9NHBCCz66GYwG66D8DX9PHnje+
JdU/6SFFa4Wq1G/GRFbtyM2jbiZaZKBtssFN7reFQkcxUfHSXd9YrxQbwYnbHPi5iu59caWA1ojS
1iYAYw7pojRBnaKYPRqVw9UZQrKiEKvkDTGd2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12672)
`pragma protect data_block
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
YCVogfWCgb7Cc8ealNQRmt9k
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
