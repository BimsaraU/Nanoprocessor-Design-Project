// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 19 21:40:52 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top c_addsub_0 -prefix
//               c_addsub_0_ c_addsub_0_sim_netlist.v
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
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [4:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [4:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 add_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME add_intf, LAYERED_METADATA undef" *) input ADD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [4:0]S;

  wire [4:0]A;
  wire ADD;
  wire [4:0]B;
  wire [4:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "5" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000" *) 
  (* C_B_WIDTH = "5" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "5" *) 
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
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "2" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "5" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000" *) 
(* C_B_WIDTH = "5" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "5" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  input [4:0]A;
  input [4:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [4:0]S;

  wire \<const0> ;
  wire [4:0]A;
  wire ADD;
  wire [4:0]B;
  wire [4:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "2" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "5" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000" *) 
  (* C_B_WIDTH = "5" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "5" *) 
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
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
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
SOS6HOZGYs0PvGuU1xfkI/IAoitj/Ssj6z/IZVyrsM7s+yIraYEKSOzGYvyCNtxdsTYl2Dqtafp0
GTf/GNmuk0jv565lf/5cC0dnOLSLG9QDg7g1ptw7cZvy2FHbC/zjMo5l5KXJg3s1Vt9ElyTsyLCL
Qy8bd8LEpqNcJ23VX9xCv40igI8hlIqSqj3X7+Vi/sqK991PBLHBvdnJbER0Zt797OKcLeFiCW/T
IpSgtpU6fcMVxSE/w9wwRbQXr2YL7XprFXPj0TtoRYVJVKPqhV4OGX1A0Ec7eHAHzZjXfMH34AnJ
aY0lUEg81HZc1M4/42FoCvmemFXffDbxILr5SA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Sfu3WVUxjSR6F32SHtF7pTLxOnbjQypx2uvUc6nv8FdHwxXBz2AE7rllPxGfw/M+6cqMzS1lz5NW
N/tWpvrguUHpO188gt26lquTjkuGT73kLpOhSrq5FvjGnaDsLu+hYZnlahUgCQtzZoRkeRCKgrin
+Oy6JKeEdRxiC+jg+rLVD3zKlQPr6Ce2+/eLa0fJS2CSxefU1PF9Kzgh8HG0JViB6ydXybT7/dxs
st3mmqLyJG9aRwsGLe+i4M0aMdzcv+lAUoPs2w7AALu7Aimp8XATGljkIRoVep29IakhYveitETp
ZS3dw9J1YxTOQ4ecUqcVG56b19Pu+jwcbmontQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12592)
`pragma protect data_block
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
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
