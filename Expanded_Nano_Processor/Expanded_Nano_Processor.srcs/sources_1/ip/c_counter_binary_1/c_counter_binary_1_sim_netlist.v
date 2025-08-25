// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat May 17 15:08:51 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ASUS
//               TUF/Documents/Vivado/Nano_Alts/Exp2/Exp.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_sim_netlist.v}
// Design      : c_counter_binary_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_1
   (CLK,
    SCLR,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [2:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [2:0]Q;

  wire CLK;
  wire [2:0]L;
  wire LOAD;
  wire [2:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "3" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_1_c_counter_binary_v12_0_12
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
  input [2:0]L;
  output THRESH0;
  output [2:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [2:0]L;
  wire LOAD;
  wire [2:0]Q;
  wire SCLR;
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
  (* C_HAS_LOAD = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  (* C_WIDTH = "3" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_1_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
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
Idwt9jnvnZTR0iYml0a3/L0RlUkgD+laNhmgk+KQS/OXvUJJEbmVtzXUKBK9lZauezfeL+CyrcLf
NLITdOZKuIn+X6CbQp1E1cvdlPMRN+kULaDo4y1zqALpI4B2d+TWguG9Iv1OX+ifUalqPRpj0ZIv
Pa8BM3+1nDS+CCaioRIpW87Go6bz9tqxXY1UVX5w8TT/ClSD08qpfHi2wVI1DxBqaTPcVvXOnbY1
lYmkNYF6EYYb6jXKdjVzDyxoNXfBW5nYYk8f+/Khq+0i9TpdoGdNUshZaVEW0k4nTcsBC2YW38jb
aDZlcCtvTiqKk6DbF/79qazRVzNvk6TL9QtzXg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qq3X2IT3LL8S8nj3l1/U76XqYS4Bh2dOVZAASf2P3pWjSYcxa8B467lxQciKh9lllgrKLAUvTmVS
qPu1ks5lOvZHWkoKPVsgnsthradFxMTBArr33BM8oMHusU/+ehzDjm1+HlMEn2FZFjfZZlsZJ/AP
5FHrdH+Tf6SYlhCfjw+A/9uMgdfMGJQQfcFC9nYZNUJuJbk9iyVcIFYIsmpwe4v3CzTB8jLNz0EF
IEFqEdqhRYy3SoesoVqLGcUWl/0mizia9gskBfxhmQsZYr8law+nFFht1D/3B3PWcu7Of8g29FAB
eKuyreYHqJzXlUNXnzbtulfB3KUL3EREQh5LRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12336)
`pragma protect data_block
+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
dOJUpGA+AbN0nkWcsOvxHwqw8FrMRJC2
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
