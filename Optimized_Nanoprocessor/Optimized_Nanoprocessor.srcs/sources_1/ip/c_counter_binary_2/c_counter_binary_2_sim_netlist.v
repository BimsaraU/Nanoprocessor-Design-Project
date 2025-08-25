// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri May 16 14:16:40 2025
// Host        : Bimsara running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/ASUS
//               TUF/Documents/Vivado/Nano_Alts/Lower2/Lab10.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2_sim_netlist.v}
// Design      : c_counter_binary_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_2,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_2
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
  c_counter_binary_2_c_counter_binary_v12_0_12 U0
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
module c_counter_binary_2_c_counter_binary_v12_0_12
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
  c_counter_binary_2_c_counter_binary_v12_0_12_viv i_synth
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
TKGmgeMbaAVa1tePgdStI7azgpYni89/tO00Rs68yNAYDWgaRlbW0LTbE18BH66tTs0xEbOBilM9
7jtOPx/6gmBiW48j9uYgf9tPB+BMqu+LouZhmoNYavhP6K05+wmRe6+cZ15UHbmM2Dfe5dQpJ1xu
DdM8OJsmGk2Gj3lJZhwvvzfA39bOjolQRZCLuT4i2naTEwmYk7RJ3LhECI+IL7q9dWpFQfpgJes3
Rp2igB4BW5qbyZcTGU+/BYC+HXhgRj5IKLOUN+zRfHZldnd5mXlAZj4tWWb3nluY8VMCpuy4S6ZU
19j9cYb8vcUr5jjjQRta6B+OrWHbYUmJJZKsKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BFoY9Se3RQoZ08XuJcNx+byUpqW1wyn0nKh0/6Wx+FZzpWQrmdHevXxn6DSirIZw9s+tKOFbPoWe
hjg1ZeuWXPYGnybgV0mDjJ/dIZ3aE8u9o6nQscxYoMvSIkhX9qfwmIW5uzpWLJmJLEC3bmtSh8R7
BsrYODrfKYGIj40L2b/k/UdtrHCoiA8Xz8Z+Zn8xe6pe31422i/VmpZsbeZinKM024PpSjSkryZ5
yF8/+aoagyYCt6+3y1GWD9G13ryu5MlHWNsBuUSTsqdTQFW/F06/H/Js1z1/R2KAQd4xfXivK5dl
bhchJ8ngjPqYH9vrpGlaIPeSD9q8XqigxbYXuQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12336)
`pragma protect data_block
9aYfTttqyLDp4zZ9EbOvu2y0/yAx67PYBWY4tFBcftqDlVCZ1HdO3bU3o0uVrWvIg7NGMhIR+FEa
sFw8ugjyAOfY4ts+WlDMRJFYkhambS4kXhNoDX/ZYW+LkrVwxJxXwB6HBmC/x5yOHqtQCRuu0JRY
8VhrdC98MU+VK/BrUKJsrP0YFSczlkBjxLPLfgMmIiuAVZ45HtyrS88tWzD48wdBRM4g/Cm20Jyl
CugfqAImcvf97lWIMS44oR2wy2N12Iunmfj4qgowH5oXJ9Quh9M8ACRxdRbfTyHtQXhg6LTpX1v/
3/1F0mxqtLn8ZfTDIYKQofO5Sq6l22qNgNLpTIGTBqvL0G/NpI64jmwHnzKxcBcynKTtUnUlItQz
ytSYmI5fs2HYfycbcyQwy66psQbWrEI/D29SCOjFXyUS4A4IQ9DLHWzI3HTeOidLb4JsEsM3JeA4
FZ0NCKWZjAI1bj9vWb/0uDwoWc/3AKGqrWzQIu+zLNp7XUjNVUUDLAPMzl4naB80I4M6ugjvpN6z
RJLzZgXfUNR+wSs6XZ99465+rPYkEl6rYbRSGz+f/tw16LfjnAdbe6RpWiWaJ8V8wVvzAdAeceCv
NcQG7v55rhfHWedOVRVdzB8xCHDCuyYBwtosVKjUZhLtsctw4ZZUb9eyR4K94JCNaG0yupdNBk7m
t5T1P6tWIRqiHGN0G79ki95oc0NTuwk6WEb0bqH6Uqs+eydPIqIqXx7F4mTJOc7S25Zx++I/ecCD
NGg35oBAOMdtHS1kPmRQInbfDuq26eFMng0s2CwBD2fiMgEjl6rLItxqDOnBjcZpzWbaFc2vlhu0
YibgQ4S2txi4xtvqduReC5/td602AOwMudXGOkPy9QUph9CWWpJcPMbu52ZW8pldA4e/t9ePgoVn
/2wUzlGZR+TydHhs1C665TXZGWlg8WJfhjLKryrV35WJjSskhXURtoCdsb6SXaFpPDot+DTdxq+G
X+olP+bQUtvaIHN6BN9ZVUWpddB3AJ1Txu3dW6IhfGSPDYwGxq1Z5SWcqHOQMQXjinSOF62zZLo1
a87iAtgw6QRuCybnHlXuYJdprJ7Cjmns71vyUpdYedNVuk0ZachKrqg7kOx+Lv9cnW2CXIpNKNUu
BwnRHkd/KUFEcfF2I7lRSipBGS3QYvoHDSV9JUTQFbrOpOcLVMF4CfpGpx/qJ99TYYqeefs5SPwL
hpFYUHSoqWY8raDRfeKiYp2OIIB7rhjbPMs0PRPg+x8/9ZC/e8bSqcUobS+eK6diDOGctkANcbMl
CoDYN53e0q4QwMGEij8ygnN+NWFatxtg9SD0Ms7mjbC4mfSf6pdRL0FLAlSgKYqVwol3RipkGuIi
RSrurYjAuM4P5TD6CZNWvieXDfhoWxDbJkyNWcP3jrHaYjWdK4+eOrR+kgTpS7z5mAjFXTmqkg1p
wO03wnyNNlMFde7/gc9IbHmHxvGTN0UUYoJiWW3PXibzC1nh4HRtwuybS+exsLvidqj4dXMwpqyO
YF201tRNgL4Bv4vZJCmOI72G7Ixz0pNp0Y7QseuGxS/mcUIOfTXTT20ERp9x1jkuBoGHibK6lGtU
759UWkwgyPgMSoXfXCVCftRQBc6pms4iHV9Yrrl1zsWj9+Yq4aNKOvmFIMi5l8b5kzfSETqQbBgE
aOwN082id9DlMdPXQM+4n5gs96IKc2V+xdj2Fdi/M5ki65Nx5ZBuG9r8bpnaEwan9jyR2++t9Lxu
MZdKy5SAc/SWdm9kOXONneeU0jcmnHTcXizB8U8qSX/0JDw/EvHZTfnyVq57O0pA1HJSVfNqqwwn
8jN+SCIkaLmqAP5Njinbxgc1shsTk1lwWHSJ0G1b+Cuf3UV7S1eyQ1pq6jujL53rcy73WAnUFNWE
x3hXRSLaayCNZXdZK4cIg2VkejcxLliiaurZwp9KGj1LgBBwq4iWgb3EO/Bkww7uv5EW//aWi/XM
twhZqrtQybFtzliLCgDO7ggsT6v0R6/g0wtX6wE9OCU89evjPyxwyHRkXo4WNQGLuiieVKt+mAvg
GI2B4+75L1gt6sCLQW1qejsoflCnefUsg7IFY09jsSekR+7Rka6tmLjoxyMovDNn4YROIcbMLHFt
0xerAVJ2B1ib2TA4wHQypMrG5VS7+2btYYbEKQ7qqFiRubXPcEVQL0AS+TJ3EfP/8Z/Nx7p1SUWf
umVuJCYyNcUtHfV2YhMR++A6q1OIkg59dgh2AejSPmcltzYqwykw+0nvk/eUWEjwRuHA02ahvO+u
q8vewvD9V/PWD6FUmTuco1CHNeVdo65Q7HXrMYk8JpP5csaONFM+4sq615IfJacWZncBVYN/GlXV
Pm/VAbbHZcXPq6zz3aXo6dD7qLfEa0Amcg5CCJTjPoAvOPvuB04L1f8bdCaeV9XGgT7wyjvdExL9
RtL6mpE8zD5NhgOKPheIuFYi8oubh/wJ9Ld/8tmt8oUC1uRUMnE/m20QwQksrNhjh6aDsaZSr9LM
2Z5NxXYPWcSyppjBU3f8QjrxFwXwDRbQVfpg6MTvvtwgj0UmZhrYFgPmXvc87NVs5PKUdLgwZjbq
cMcAdvdNZ0coG8ULRKwTs1nnUBLESfzLWcLF27LiZn9VBd8vXr6iRXSiQ6jFAX06OsCWrIPkioUL
rNr1lf1AGu/sHzz4FeN11Wp6Z9q3Uykl++lgqY51Ey16aiHcTy9IevKlEl+Ipevvr4chq8KtPZa4
bMP5A4hWlXxpk6ZcpiQ4NPdK88X9/e9oilU79+qFqyCXm4bhd+UaIsCWPO0qleurYMYj3cao5Rat
kO6iTXtI30Vx4XTXGbUSIV1QmnJE3zhqW9mBHFxE2O8pq41y6Uu+6Pa8EC/ShkT25p5AYpkPAIIs
JI+wR7gcp9UTRM6AV+Gjj/oBEGY8lEuKsEk6v7gZFzX0LLXNiZ9IX3TkvcRtCv/iMyd8gUoooKkp
CWwDd5tTWZChdJHZ4NgKtIMcLvrnIHlCkBn3az3vbhrtElGZcX21OAyZ+4dR5HfYCnZADsYjG8NQ
JuFoySk/WMBeD9Xyg0iixQDFxmFsL+wkDb3Ri2TSGXudUm/Ott/grD2kF84aN5+1dCM5x4KKTcc5
OLmxCERq349Zdqe/2HqyHZW5MYcHkMdmV3wUB6ZMI6L3UPAL/lFim8wY43eZkYEEmOmGhA1RzuYs
/02DjtpCuG0qxcc/+mbzfD0KhVY5Zj7BPv9+gzJMvlWYs6vNYfoCwHBIHz2uEFMHwUgyHto7gq+N
++VOMIPtUa8qy0pq/a2p+yjTT1fV20aTjC535pbNL+8nwBP/Hhn6YJdb3h7yWYNgJiVzDpYKFiu+
VLVJEZjk1T3KJAk8fClYCGuSo3Y/UQOySU0Kr+dHTDfRpxcVOnopEou7rsz1QpZEz/fCF6Z7XyGN
x4wn1wJhwhbblR5ysOgZVWyEgo1MugAs+b0VyFf/MpZQma4DqyGYgkpAfzOu7zh2nupgJe3wpq0n
SslCBi+kF3d3QhHlYkBpt5axSaJ7syhjYUaxnrxEffqlSA8YbbmE1LJf+R+4OQLt+aQRNLYihvur
Y+UQJluyqdDhaSfrZ8U18KZfMg1gWVxWrea46vjtbsdqQZM0z9XKVMdnGIF8i4K1OQKFmVwaNoB+
m8+HWcZf5xoGXiWrujeBlxItQc2yV0eM3+0kmlAT8E9knIASWV/XQo9U9vYKcyaKyq6T5+iitYiD
FWg91TJHdBzSTKsZwvVjoDTuHOXfVmj3I/xKP+MW9jvRyAIAIwS/7RjAhcHMbHsBOQQ+qXRdJRBN
4dz+LbQDuUXMlRaF8qdQMhG5ECUIaGwgd2jkmzxby95hw0DoqDX3rZnxRLQeyIPoxrRoMbqZazq2
JZ+ZyjV/aNQaSw6QfQO5EwVhqmYXuSy0Sz1A7K6IpyNnM4kBbaVAFeREe1UZ8E/YHeCfbvCwSHq6
ohpAHbVDUwhu5psOx3KXtY28pvka4sJr4NfnsgpeYglRemfhTJaXaguIL13jEGq5Y7PgeuPvkTko
PMVGHLlSeE+wXo2v8YZTORIonu4OCXX4eP0Q1+gyi3hZcmYN0TxV+AsUk26C9Ow82U3Qe3QdCL3v
i6Ix8BOeS/6qiwq1E9KPoYSPixizLFvNCrOu0T9EQgnV+SK8306Vi3UnJzkiI+wPVJlreO0z8GaB
nmHItv+FpxPHlZaOpjEaOTjmR4158LjbhrkX1mX68Rpz+7ruGkb20ptfRXzZZWogtkHQsGDTrIfS
7A8PD3YbgwSSHmNQIV4SUDAlEaoaaxE3BUnNkld1/z+uwebg0lsDjOllZ6tB4FvVOGPm/EEswHMz
ghRWQGxFTitivx7PkoCtFe5/JaF7dmpigQLnshdwuhTIkpRaE+X+BGeUlbjiV9h0t2Bz1D8oKBrF
4vPbaI5qByxjQFeBSHjav18Ke9HRzIX2qqyILVrF8T1m2XZRyJpEONednbCn5Q7ncY5HcdCE6a6E
CmtnpAH+waEIJfME83bE8C3voAdc6ox/GWQPrajPuUaWUPcZB+rxl7Kakyhswz4AQANR+HP7Zct/
ze/SJFv2Hoq11hJ/ZanFAIjc45HpgBY2z5Kd/TN6uY5ntUfP4Lt2I5VxeqaPA0cjROKZmXsEYkaQ
zB1sib+WG55WM7zOp+o+BBMySDiRsNsWYertaqm9tzeWhSQ0ArEO/z49iel5M5VTZeA9xrwDi/WX
JFtEjL3J4aPfAbDMNhTEccBhjSDQgDJ4cCCJdtcUZsZr2QuBrzoTn/hPQ06BKdIzvxt5pns/m7BM
rm3a3i+NREhdCguhtw5mWFIuA6WCsxOdv/AtoJXhosUzRlakk9FBLwOJafh1tmHDRkQwlvWGd4h0
Cf31B5ThGuhauAWX/DJlHjGvo1uX178MDAzh/2Vz93qgz7ttjTJe63sPEUtPA45zb6sGptpy3w88
a2F2+iiPJKfE+lcwlokzH29R9ty2DaRUzVHzzlEF/YJWkLwl/QJ+fd9m5ZWqg44cX5p2Tr3LBVkC
u/A8YJqgF19tVENumMQtnaYnudnLcgifNlpl5GKBkElg8wy4wWXqxKsGorfVNqDY9XEUV6USvxJe
J954KcaGkIDyFXrVodtIdjLTn9MTm/4XvQnn2HshrBnufgTLXaQHtYfxJsUnKkG4jAoaJZ9jiH33
vXSs7O7B+xRm2NpP9OpCfqOH1/VUeFakjlNWFQDjzU0NIzdmk3IttHb8FFwp92MjI4HdOt/lmYoZ
ATmS84mJocyRzlwqYrb4X6mmV+AxrB+W3ZJvLy8JO3kij7owKaJmk5GqEXgy1zU6LWygNp5PKvDZ
rKmqEaVuAuD8ET3hUvjQx64LwDbgc3P/kwJE95uBf/OXLB0JsRID/XULa6SFmaTZSze0ppGJ+01a
mccT28ueR3lMhNN+aAce6nO03rTItwVg+gqkAuDVKCBLrG8UfGsflkXKj0J6g/QZUl2FdSXzRyEo
4YN5d4efnZagwgw/Uc3sSbb7Laruxrh53xkvJaTdBugxKohLlJQo8Xu8JnJswdHOZSHVqz3uGJUR
W6ZDNkq3YNOwWghUZ3PblvonHmwMruUHsgNkqhirJIOR3TpsjqP9EqusAUZbTjg2dqv4bn51PQOG
mw32y+l5dReL01JhBjEyw39g685Is7WGSI1tfO0IBfgWdkR5w4ucuOEaC/HUbWj3cYDBnXrbx4oH
67KRUCo01YH1oPel5x4zuZNPXM9D3V3uvuXUGqIvm+ukWabmvHO7fVURJfL0nQ75ICHNHQutObtp
6670jKgRKKhs6MpFSIKeBFoBsetztYimUuz6FtxQ/AfmK2AhCBf8q4kFQg8JI3vhBX06eEqzcqVo
Lb5FhpBupJdmdCSXUMjX454dw0o6sj8Ldj1voHqSf7HEKe7Sz1PoM55aecf3CXgMVhvpsVNib8VL
Ziz0eOg0ecdPp5cD92WBb2bA6Ht2FGtC9a+2ONO7QrPFedu8O780PqH4QTZiNvkG7zo3KiQFvdpn
RFUZMS4aalNFxtwJzBBiPGQD7GOjA9IqWl2tfn/8ADT0+Gt1DieHnpEQJwDMV33aNhCepgl6o7VO
ShTUtvMhERO4gmzfOtZvWhwQfAv6fY1iIZ6Q6EzFAMPkCBroa/L9FCfTnq/lsqKjjhYciQXZmp+Y
AzGao0k3pJk0q6b4iS95QGy1REU7Z1L5p/lV9HjMiUyGidXlMx299aQBmE4eCQA+DhfGJL60hB8F
K20DpBzFJy2l+WHAV13t7r7+SvDr3ijEwrahBk11PbYJtOLEjmTMiYkzxftxVuMvXlavkWVrMxaC
S+JCQZCynh2034MRs9G94xdVsxjj7BYDDabLAPCI8zujry/K9Jf9nVvJTJ7bPyW13oadV1JfTvgd
Inm/lp6yWUswhQ+sJe3P6iJ5K8GKQEj3zfhjdgI/Tr8+afuWEdSMATr/6kIl4kZeTrfTGaeLyLey
VGpRIW4SPrwIOXtPNPCVQC6QFoRc+UZ47mee1ECM5HVc114IwnFo9vbBVRbDBIYClj7cxJ4hYHYg
/Lx5dcdbvOZNJ72nUJtjTQTrBVq/vMfOq+GYZSS/eVT5YcRzJGG2rMZAmHykI+oCaX5l1wlM5Kqv
cnm+QW+QXZe7X2CjFnUFUiUwKRweGWXp5gP/QxkOPM0NMp5jJcLMm0X2Qvy6ueF1P+RMIB2yA9JA
GaTHZLJ6jH3Gx+hmAbl569ZiuavNB6sUZY2qQk/CCEwXUF6fZFxFdXd11XOnwJUygDET4uApDotb
hEZQ59glIgRMzjDrXTRw2NcL078UnqIjxa/o+60xJbVb++fMa5Pzcr9eWijoNqnv0NMhfRR1bYK1
2A0rKA+TmXqqNsufBqvziN5Vt0GsDWC7lPi5DcqpLPJQn6gfwDMqjC7dCp+zg2dZzGAwnriUhzbr
2zBOY/cwCrX4KUyT5XLVHCArT4UWSBpWY9kZdt6RgmRXBsEWw41A4k/u4ULr51FiO4JuXnFY/MS5
x+QKvcT4iaL4iKr73+tHNjmgBHqRpxqhGt3CYyymeWfXZJaH9011Pz4DBUBvd/Y/uYjQ6taaF9sk
6zqjoEFcBETGUqHRs9Nqc+AdidNKYYzsuYbhuQrxrstiSvSuT6EV/gT81hE4TbUcQJpVDsOmwTbZ
xT8GHG1leVrSNGJ5Piu1l9dtImcxLYvlKM4Z1W/9YlVBsUJFG/k6jSv3Pjqwi3onoliWA792EbkG
Y2DDh8Mp9Hwl85dc5JUaSVeuJc63qAJFyD2IPJWIHXfJI1t6JQ01WP+J3uhTaUj11KAg1naljbvM
Rxghro+6lOeZE+/dXddkgk631asPpcFL22YQWmqRr3inMs0af58JgD6QssamUrpY4qR7pBOIAp5f
a14SQkyGZkNTrG1jbday2FlgvaWwzBh3S1pdjzsAwEcOeipPNel2+JXjZi8jseo/x55RtU/Q6RWF
UIk3TukZTj+MtazI+XGmcoNihvls1uVPoAA3NrV52K9Yy6ni47+cGh8u556PF23ehdFDwmmt7aeO
YGHszdbBoyKhmdHVtdrOnnGy62gPMRk5xIBCs7j+8Mx9uA4zDYUPnZUZijD7Ud2uxdH/Ds20Kkdk
Xd9OOpP76FmlFNv3Tdoidgc/nwtKh9t7T5x8LXXBbOk52ddri87ASqBjuZg6T4YUJ2z3qdQEiXD3
0nE9ukurYj1B2kZWmkunRDpneyofGg1F52pqTwMLPbFOY2JA8MQmv9KgF44UxzIZqX7fkCXs3ogv
vCMa8eDVagbbB4caqSxgp3oQXkbko2XA1YHUDPwgV2H+k2tw9x+KMiF2YPcKrXNZ9Z7tlCvVZSv1
65nbBgsDmp0aI5IohWvB2HxSeF5JhTTmCsyn1fmRhhvx1vIULgxxvW+On+Q4QHTTI34PkJGkp5pX
9uJJseKjs7+ragrq1dp1HrpvKSDpvku7yxOwvJvvb/sLSDNHXu3X4J3/MeIyLg4eSFu/qUeofk+x
ZqJSJIFlkMjkuWCyPLY5CvSfn3wPp39AncElVS9bYmf+d+mvk2N3zfEgzj2H2D3wZiy2MsbS++5s
Dzq0EPuYmC1MrzAsA0d7d4QOeZp58N27v13/0/tXLeoptyI5Fl44us5Qzjq2XJnjh/ib7DZhipPu
G9Gapyq0uZiNCfgwX0NOPYIjHJ+PwLmSKfn0gsoA7eJWWTsHNVx9cjZ1++tSZJu16WFMgcmevVv7
AJqgRYvGx7vx04WEbHpvWRNOtQRqyoqO2CCxeijW6cVMfKWMZiVNXFyuV9ydtdeC8La5NPwZ9iBK
QJz+566OavhM6N2xF84fVpsoJeYz9B+wAxbvxbCl3wxPEbRE7sRuWDKvYwb0BlR4Bty2ancbWDcK
VPx7d9lfzLL4H0wLchxNsMFEdQ6mJwfwYLv/FJHGUaNIfuw/aooenfqg0h0O7UagIrQNa6Rj05zj
ncIbexBGHBJv6/wngyPE3exYv229bXujnkWhcBJACU4lcGrDsUOHl3KY3cTbdMIpu8p8Dx+dm+JQ
xvXlUrcbfQ293JGPyUk5AYn85L+01MWTVFDO+1QZwJ84H+Is107WBYbTn+Yn6ahytw2HdRrzVn2F
KVl7zbgPQFFZ4kMf0liPK2xkdRMyeU1f4Nz/x/ijqQGBPgTwCA8jLTslBmtVODlqidpHI4hfVMjv
s8sbHZybquBfM4NAxVOOOFnoOMJvOXxUoDxO+NbVbi9c8PXYxZ3GLHabETaldVWhRDlIPFqofG0A
4meftGN5Gf2e2gq7YVr3kmgGVj4lFUfGhxB5VSQLmSALHXBHqONtvqPgU6XYBLV8Q8bn9xpNbrx9
y9pnlL3laGPsQsYUgM9+MmNEeFCQVTP9e9EiEVX5jbJVlIratGhY28LOt0Z/t3y/c5oQSNmgxxi3
qWBdRDIPKNjVJLA/ZUPg/doOas8vV1xHE9g4IE3aZqPefyrgmGnRym/bL3nX2H/PYEtC3I0fIcUO
R1Wih9FTSKM7vk5U97yLRENDm+bPSerGe3czFxp8nzGGQwxuQ0vVC4UXnoTbFQfk9ifdCD9BphZ4
yYgiwp8yJh7IqiM6H0PhRFM2mhXJnD4XP8vmUcxYDIT3vYaUA7KEm3u6dOz9FIzhhOhkjHi67/FP
4YRSz/DQnSpW1Fq++JFfzklzqwUnxJNrRHH3AaQ91/+P+6MUeu6KLJk2g+XT2f0zhQgCkdkd9720
WBUvEh6CZWPWwGtiH/yveiBzEH0+FOaTE0OnWyLIfmvEOMWkz6/0EcUdU4cdxatFkpYI5wDfuBQC
7BTeBERb2fjJ8Wdm6V07ViSGX3NX9EZ0X+aV58Gz6X28UP+DmtQnUOrK46JVZ1HWgjx8+8WnCtO3
7PgbSpwXkbevx/Pmt/ZfJ5V3d+FF4P6GolUJd6HJgoyKrg1uPrisb1SmFW9C1Vwx7OFxuI1rrxfT
97Ih39hl6863qjI5ybO0vI+J10qkA/X0XeZy03vHUB1v3em8zfMnK5UfJdeCudxdVXoaHPgk4BrS
tWCAzYpE9flL3h32oWv66zgPho2neUgaARFL+QeneBK6r+GWsaTC/mv7ARzz9tpcbfMiz3zED6oB
juccSTb5BZJrcM1WdTo1cNPkhytx8PAg7poa1hFgftJE7Uwzh6MMpFLqpZNRDrIT4KCwSjofwGsO
I2eKERaW/cLDBK7WTn4unHdcmyHct+t/LMcn2DUh6seyAZeCk2a3CMmciyC5WExRbUtXsyINTdKm
w5B036JTi4BOuotiAaLXDrC3ToGOpENrfazjOfoA45/bF0SMNRvt62XVTik2rCsXCTvuplmfZD6k
xvnL5GFm5GnkNKSQ7RZTzEzsu5BP7B0P7x7R4g91sBZ6iJzrZSo/ZfqD+6Rv57GqwBSLpyyc+JtZ
WcI+j3Mz6zaHI4ZAfBsESk3RRY0233DQKr2s+13zSqkpm/MiI5ILh0WPLvbcvjjghiIZurmANWtp
h2XxPMCU0TRQ2kBBOgVEeK7jN/tchiLKKINmUh9aX8ReSbuT8ZLMnd/mxIHmRdyeOPAMMewB1gAS
/dRZtUVrUwnbObOkyJkGAeIRdqAxyI8Xq/C04heLTgJ2bNXBXhTQqurEBhvrzAIR+j0cByRwybiU
zHyyJkevJEsdhmXqa77zZ3vaOjM+aTkT5l/k/T0Pan2OBD7m22ebN9z97MDFLmiMDW6nKA13ZL8d
RKLl997hAQ3rzDpGG4UL/bVQxZ+V/f8hAW4D0qTtZ4YZegkC5f2Ezo2mhzVg46cohW7IP+iaAP1c
wsffe31519WI9dtAmYBXhwClxPfWaQmAZnMsv1Y+IPj+ZNXZ5ece24n6g4pKU0lLecPzyte7ZpVf
j2mdTB+eoO05JZVown8BuGiYfhW/Y1DyaK7GXJRTqMcUdA9+GD/nrAshgt7XmQ5K5VRtdp+xqc0o
wsPIf38beOukFUWnl9egrDTk+rwVmsNemh4Lcoz9ttxvevQBsUkHSr2mJOzPYNEts49quzxr1vTv
dyBDQhRUi+mwZJyuZUCwnKUxEUNycfxrNGXGZPJyp+xEokfYIQvNWsQfZbOcDgStY8LLnKK5n3a+
I933ZWx6JZnHbRHq/ini5AwxVL0Q8S/Sa5MqzOij6GP6g0IRDVMQVevadj5XlLXJRshJ+dNIzu/x
HUKKDlO3y50li6f3dWckdsaA3TAryvDUoMjUkZpdAE4Sk7LeR4kT0D5eIObvnyS6fE6ZMlJvj3b4
/hkxEpJf2RnneV65+6SWqrGnCBThH7P5MGo2e8D42HVgxUmdXfV9LH+0dqPpg9jvUlyIX4hgnhV4
DJ0D47i9zun9jFQa+L2APPfFi61nPSvd/59B2wPxlfdIsrG0nii8eNKsX0ATgTNNVEctjUwcAYG1
Zmf4fr+71FEBhyfyGxTFMNjlmZwmJOLwXdKyjqRk+7sVxohbyy7CAqxR4RoeViqM8cEMak/S+9Gg
ENgb6DIcB6mtaY+svB8XPftgjwwDO5tlW4Ok9/MmrPYbCv73PmmmujO1iAZjH3Cfxcp8NZ3pyKab
YpPFL+DvFqbzobiFQUDd2gpVKHnxMN5qh8NMhcOXu/0fiLNsqJxfBlFX1nD3qpSqMuos+kt6LunT
2/bUWyspU7pBoxae2OmShWzmvrPtBstUT5vo389PSRcipWQtBGJ8JZT7OsYx5yQyGoXGA3O7ooL5
WrS/WSXY0MkSPSdf9R6uZZr9RKfOLkTtQbOxZtp4HbbgturVO2VHDRLyy5tfp2Aiafv5BcrGVar+
8zhyMBvKaR6EK6Y41nhKPB3Q7GFENjaPcE/G6N4G52z0u3+I+TGJcXdt3cLK6dzDq7Tw7JtY1t06
MN+2FfDshS7ShjAUIM+pw8dVS2tNrNWHrIqgUfGQVxaFcihrQx+WHva8hF43RWXamSq5FZogFfXF
ZLHrHyBj7JlFIwubSJmuuH974aw4G2Lc7NFmfLG3Bim1+C8WqXrn35YmYMMUpKl2mTrvktLsaM9j
cQ4CZnyjMOej8erQX4KfxvdkBYlIMLdzh2Y8XCXgGEqfAaoJNUG3ZSmE9NYxAYWH99xKxbsrvLNn
R2VEyQkzh7TTQ6JDYjWXNKDUHf/jzGFKDkcQbdDoZC5CzY2rIDWguafMnBRQMD13UgtuF0V5DN/e
iS2z9hKFI7sxxzoVe0TkVxIuPbnSXqJc8fGnS1xpBYxh1N1WRsajanbVJhr9Fv6E/L9yIJOsTOj2
9r7oEo735slLVYJYqyl+PSjkqDNvNEQHbfIwQ9YLEr1ASGmF6Ow3/TQ+r6oh02HRzDn2NeBvi1nK
83kerLWn5DAoYu307ut8meZ90mOVGL5C62stUEhNX5RbVQkewlRL5o9kz8l9jXDI8UVHA+WVVU2K
RwiZ+5I4UVaWzAY0UwZm3S3756nK4YfL4f26zCf6EuY18oTZm2Dl5pIKnBfsYa80UJE/TlMfJk2X
mzhylvgkcQq1rNfkHOask7+eEggyAzcyaEQhtoRaC1oHmcDdoijyCOIEjHqUoqZMjix/fU/gtwhX
N8jZ/FCEadRqc4wKKbofPrE5MqJmDgoFngFwzXanibpGlFnb4ds6bQ5waqinz7VMB84oUlL7bHhn
pr4vwFj1H55GVZtSXLqdHDVEKsbN8HBeXhcAGmeGPitWu/OY9a1TLXbr79vXQmqJBRBN9rXsqPms
6vFENAUjhJjPEaC8DsjnzTk//HTXDNX2OjlLAvKa6yXZPQGGJ1RC0v/AKTihLf6/KNfkfLPACVuv
gVmnm3MBnlmFw3YLTg2MqzoGgJ4StFC1CN4Qg2+6GngqP13qSQ1GYoybB9KeyfOeb3N/gTfpNVKH
8n03q7KF6SRt5JImBv+aWGXES8sG8FeT64hRZcYVeXNSkXhg2DAnGQGSkR/GZn+pYPIK7/8tX6Hh
rESsJ9gZQ7XbvjpvJVHMMyvliOLV/IrQC5NoO5aTwVDuOPxD/kw8VB7rKKkyzRDuYsezWR1Uiht5
1UlUxegHcZItg5tA59Xi+qrHSGQYBhRMXgKkcJr9qrYuOWWMNIPTXdQG1L07Nw1t+tTelQEX0SnI
2pJwTsbabaVtYx6E2uQp3sPtwqQcrTGaCHRoPIwqUDxdq73bbbDF0fXSLTanqI2o3rf05mfVN5Pq
GskIKK5QckIv0V5W6mWAK7X8aPA8Ijenh/Ovyow8N5bNc0vTl7B7mY3XoVG0AvBuiXJmJ56eHJ8V
MzPkOqq47Gq5kyuPlkYu6yU3WtiOwHxOMvQLIe8dTVE9Q++e52vkNn+7NiEncYrYusngdW/OEFmj
9DQLJOeKOc3mVlMOkbbxxtqPJAi5vkthKmguPwP6/ouFG65KXV8zxk8MD5TIYcdu8WGvHdihZ6L7
iVe5CggHsFRNe9LMv8Rtx6R7pDtwZWNDd/TRKURilDBoIKbZGmy+U6sgCHPm3+bI84jGytUGdSdA
P/EiRY81Q2JPxpzzb8+OCvSkV+ILvP5xDj5l8v/hm6ti+KFCvALCxjvtsAp/bhujT9+Ycp9IV5L+
q1OHTJI4Y1XL2t2dflVvUOW7BjqhatI79BavkjprW3Fyi0Q/Uf6JlYqS4JlNAxctTTze9ElXXw3D
SUhUDosK20oz/9cXB6PhGdOvfyMaO46nYRD0Jn6yQHAhAenWuVAPGsEQAPHpJaGKHW1hZC3/k1iq
PgL/rSX/pLCugjrZfnGoyLz1tp0c0eo9mY8Ys0IVrTwoUHheKo7Xq8rKedOHJTp/q1vrqQBU/ftl
EIuYCBQUuZDRIQsZlD9pOWv8/MKctS0AK8+mobHc77i6Tp8oTL5CqsE7mMSuXdV8PLsUKRJ4WJdt
2APEF7j06+sgnKmXTHdj/DtCJSHT6SCjxtVcARkxPQhSG5zp8ud5NJk3ASbHeEuV5+g3qLLJ6CJI
2PRfljdV3EFi8vEbwC7v9cObjVZ1+oPMZRUVV35lzWEQhHiaYnJd22HWpRUwIW0B067Wm5WAne3s
qZbEomfdQI2X8YFsXKAQA+9P773L5OfFNQfGRkfRbWIr0sfr0zM5BCDCusIC/yR8D7N/c3WTwScd
DivPQO9GiiaI51qnKnWDVrM8Bz2o2WEZFDbDjjPl7bEJ7BdwvZYjwXeOMIWx55KXgDQbyGByF+vC
J1CgmOsRp077S3lG8/SNTytA0ocvkU4FdnZdBr+c4SQblYe0iw+fQdFdHycJqZ05P8Agv8iBwe7T
S8k99HV3XG6tKyho1ncXKcKJdyNnw0XNDAJtC0uKKYA4CC2D8IaQecpX5HK2iD8MAI8qj2kQ1gbY
dE4xwI0nsNwAVUlzRrE2A8dYcXBHZJpoNeS1fo/S3jS8UOrxPM0IsJWZnGn8A+lBAUPJn6B9rVUx
ME+6TncEKwlM2fnuEpGETYroD4kWgrGptfeFy08TLRz12Ay6gW8aRZV5ZlrncI3yEPQ6sctN12Lc
2ddVRn3q3h/CG/Lb/zF4YgynaKyz1TtzT29pwCJ6Hc81xmZY01006D+bhprrmdlOwjb0cAwoNoKz
FjGf3cX5MLAeHKb8GFffXM14lt7DY+zDfStD87NJgCna4bC2WKgDSne61Iv+OKV5+XvRYGGf4mu6
tDvD56IGA+WZQFlhXwid+sXXohhtkbnpkJqEqVp39L4uC8CAIBmN16lQddnaUgZhMK/Qgq12YcKP
glw5bn+TnWRNzDLbzrgafXdWpCm/gEyzHau+f4osPNaXmRZNQ5V4sHWcNUCVdFF+OlGRW+BPUhR5
dJOzgBYqV7jipQ/J3XJg9X05XnhSYSVIPHAn78QzCl+clC4JmJculZVz05ui5uzM6TmlrcHvZPOX
r1HkUodLDQE+mSPzhvkXTQ6CtizLln9I1WBZcTuIUBGW9/URqSqiPoGHZNZL09GzaCmbmGGwd+fP
DBFr3fXL5eelx6LbiESzc3hZn7DrpRh7gryVldLJZlp91tNZ+s4GkOR/jlXsAEYJ7ryleUrBblNv
fy0+uzpPf4zvYCKepe28OB+cgKyhKUVF9a5nFZ9Ov5OiQNj4ga2fUJoM2jx0vi0eAxJgJnSRDIHT
EgRwQWMOb4fUWpSVxXiEikxYDbNMY/2HCVErIhWV11/CKpqhnHd7QbMe1YUM9K/fMeA+Qz3UDdV9
FHHqz64oibHXv2x28BUo3N80aZsX2CrL4uU4nEqwGQvFaCBJMZSYMkWb4OPLgfsxXBCO98nWOqqk
s1nPjqnHW6MwbcfeIFYTCYJsGy+vvnvIlfq1pZelqq3d9jy4YzEgWJjeJ0VnI5jeuHqumM6erjrs
QDhxNu6XI4VONOyb4RzD8oljaqoNKSEeIC3KXbu2OPCSICfE1hjnYYxOfWvumtIZgvW5RqR5KnBy
1O/RsEN5dCq6TjuItq9TKWKM2dGArI9L3a2mZciNJ8UOgrAXcCQ2d4xrkc3nUabxFh4y/1E45e4a
N4UglWfJ5wYpYU6fxNz5snixWrpPcpHu24E0DcDEkSdm+w/qNWelaYhkchg2jZW5ZUYX5k4jiKgb
Nov271vqLxgbA5WyJBeUmAAJUeBsvXfF6n7gU5BV+ReXVeXYj9sqcxJnbfPRbTc92ZBDhOErINiV
Kj6vtquvInLD6zYZumQh4D7GOqDiGoMSDCK0DqkfPRDTRRrKp4Xv7mFaXiqu5LmergNvCi801OPF
BSYb677ntDKPeL6qYxlbQxnBETwzkFVR//LLM0EcAs9lSJ5bdjXN24w9QeXeZd5S/Nse80UJGIDX
EVOEeoqZqf5IkGR1eAEQKqnBwwc2geex6EaUCkOLrLmExjToC95C91UXpUQjk2ZxAsuTI/3gbz5J
lIQh+78vKxoaAIGH5mE6QJtj5fUD4tGwRapol9ajuNE1mrgq4yPKjaGC7OHLlKmVXXe3YXaDWF6T
fqsiAwdk5tC0RtcP7KKxWDEo9jstRH4IxhtB8smdUt4dOm0mmVmcgCrbpOxwD6s8+X6nvqR8Wnjh
G1ioUloTQFI9cvpzYvXZwK7dHovMGbqt54Kn2gW7n+uf9h5SNNRMYN/9jUVPCHTXVnsLA5uu5xoS
Sj65cdnVsxZP7odtrZ8p00hRa+Vf+Oq+nrWqP0hAUMbWlo8tH47Kua6pNfWPGdoyQ+U6Aqgy4J7W
3MJKWCim8JfeBPgOHPb4IUS4C1/AO1sDs8p3yzA6qDV1w7B2wrBZ3d7CngfvhRgGCoRjZVQpaPR7
rhrBjOfTHEY8G3GE80KUXdoYv9etovucwCdrHEkg44prUHnbuTjYxegmG5kbhE1XWqETU3qW9roU
FBJWBVVSNYpoz14UOj4GcTvDcaIINJKhO9/dL8bWV6Wm3h2P3JISY2+ItFTfEq+yw3Ue7mW/UHi4
NGw0yFUyQsbOechNtGMiAjHZyx7ecTIMEUdJ5JgeMSHRfaXcal70sdYSm1eWpSoLKoMWOP9DMYM1
pAWTqJ7y51PPYjmkipW7F3b4BzvV4pDoWiOArvrf1t+da5r1JVdQMj7xb3js5Etau1LIFJzl+kA9
lYIcIhd2QO1TN3qzH2g99CcL+h4wPdrZ7YTlo4e3fAuxbatF+hm+8AgkvyMpnvUjFUfg5mnqyipL
agG2D4czPmzxfbsToWJZy7SV5HJb3y/ll7SY67pRSUtMqeKc8uAe8aLehTxAPtNGH3xc3+wXiSGi
eIJ/7wI+TH/X9qOj7wwjQCdFLwhlX9RgjuthaXf4kDzD/tebAJPPwFtd3K2xmz/6KPw5zydKVzSt
mV+Lzyec//NxVOeEYTZVDrFXl/bbHevQhzEW4S95OQRIApi+my1Z8tDEuBiHwPKiv9ii/r0x6zOt
f2mUq/JY+Owm1am0x4zTcxesrNV8g09cw17WAKWkKJ+Wnvg1LVw5/RG8S8ZAi6EcJjvqf4YBaaik
XzX7tMxMm24LUnl8qz+4acjz3NA01cVxx/Mwwfx6ni08lWVirF6nJVutV0CKgWWrRxI2q/J4gtyg
Qr68iridgATO7LqdZh4Jb1O061Atgrzm
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
