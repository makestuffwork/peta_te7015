// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2.1 (lin64) Build 1957588 Wed Aug  9 16:32:10 MDT 2017
// Date        : Sun Oct 15 13:00:18 2017
// Host        : Mini running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/tangbotu/Proj/gpio_led/vivado/vivado.srcs/sources_1/bd/zsys/ip/zsys_labtools_fmeter_0_0/zsys_labtools_fmeter_0_0_sim_netlist.v
// Design      : zsys_labtools_fmeter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zsys_labtools_fmeter_0_0,labtools_fmeter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "labtools_fmeter,Vivado 2017.2.1" *) 
(* NotValidForBitStream *)
module zsys_labtools_fmeter_0_0
   (refclk,
    fin,
    F0,
    F1,
    update);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 refclk CLK" *) input refclk;
  input [1:0]fin;
  output [31:0]F0;
  output [31:0]F1;
  output update;

  wire [31:0]F0;
  wire [31:0]F1;
  wire [1:0]fin;
  wire refclk;
  wire update;

  zsys_labtools_fmeter_0_0_labtools_fmeter U0
       (.F0(F0),
        .F1(F1),
        .fin(fin),
        .refclk(refclk),
        .update(update));
endmodule

(* ORIG_REF_NAME = "labtools_fmeter" *) 
module zsys_labtools_fmeter_0_0_labtools_fmeter
   (F1,
    F0,
    update,
    refclk,
    fin);
  output [31:0]F1;
  output [31:0]F0;
  output update;
  input refclk;
  input [1:0]fin;

  wire CE;
  wire [31:0]CNTR_OUT;
  wire [31:0]CNTR_OUT_0;
  wire COUNTER_REFCLK_inst_n_2;
  wire F;
  wire [31:0]F0;
  wire [31:0]F1;
  wire [1:0]fin;
  wire refclk;
  wire toggle;
  wire update;

  zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO COUNTER_REFCLK_inst
       (.F(F),
        .refclk(refclk),
        .toggle(toggle),
        .toggle_reg(COUNTER_REFCLK_inst_n_2),
        .update(update));
  zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO__parameterized0 \FMETER_gen[0].COUNTER_F_inst 
       (.CE(CE),
        .P(CNTR_OUT),
        .fin(fin[0]),
        .toggle(toggle));
  zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO__parameterized0_0 \FMETER_gen[1].COUNTER_F_inst 
       (.CE(CE),
        .P(CNTR_OUT_0),
        .fin(fin[1]),
        .toggle(toggle));
  FDRE \F_reg[0] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[0]),
        .Q(F0[0]),
        .R(1'b0));
  FDRE \F_reg[10] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[10]),
        .Q(F0[10]),
        .R(1'b0));
  FDRE \F_reg[11] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[11]),
        .Q(F0[11]),
        .R(1'b0));
  FDRE \F_reg[12] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[12]),
        .Q(F0[12]),
        .R(1'b0));
  FDRE \F_reg[13] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[13]),
        .Q(F0[13]),
        .R(1'b0));
  FDRE \F_reg[14] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[14]),
        .Q(F0[14]),
        .R(1'b0));
  FDRE \F_reg[15] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[15]),
        .Q(F0[15]),
        .R(1'b0));
  FDRE \F_reg[16] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[16]),
        .Q(F0[16]),
        .R(1'b0));
  FDRE \F_reg[17] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[17]),
        .Q(F0[17]),
        .R(1'b0));
  FDRE \F_reg[18] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[18]),
        .Q(F0[18]),
        .R(1'b0));
  FDRE \F_reg[19] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[19]),
        .Q(F0[19]),
        .R(1'b0));
  FDRE \F_reg[1] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[1]),
        .Q(F0[1]),
        .R(1'b0));
  FDRE \F_reg[20] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[20]),
        .Q(F0[20]),
        .R(1'b0));
  FDRE \F_reg[21] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[21]),
        .Q(F0[21]),
        .R(1'b0));
  FDRE \F_reg[22] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[22]),
        .Q(F0[22]),
        .R(1'b0));
  FDRE \F_reg[23] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[23]),
        .Q(F0[23]),
        .R(1'b0));
  FDRE \F_reg[24] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[24]),
        .Q(F0[24]),
        .R(1'b0));
  FDRE \F_reg[25] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[25]),
        .Q(F0[25]),
        .R(1'b0));
  FDRE \F_reg[26] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[26]),
        .Q(F0[26]),
        .R(1'b0));
  FDRE \F_reg[27] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[27]),
        .Q(F0[27]),
        .R(1'b0));
  FDRE \F_reg[28] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[28]),
        .Q(F0[28]),
        .R(1'b0));
  FDRE \F_reg[29] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[29]),
        .Q(F0[29]),
        .R(1'b0));
  FDRE \F_reg[2] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[2]),
        .Q(F0[2]),
        .R(1'b0));
  FDRE \F_reg[30] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[30]),
        .Q(F0[30]),
        .R(1'b0));
  FDRE \F_reg[31] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[31]),
        .Q(F0[31]),
        .R(1'b0));
  FDRE \F_reg[32] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[0]),
        .Q(F1[0]),
        .R(1'b0));
  FDRE \F_reg[33] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[1]),
        .Q(F1[1]),
        .R(1'b0));
  FDRE \F_reg[34] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[2]),
        .Q(F1[2]),
        .R(1'b0));
  FDRE \F_reg[35] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[3]),
        .Q(F1[3]),
        .R(1'b0));
  FDRE \F_reg[36] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[4]),
        .Q(F1[4]),
        .R(1'b0));
  FDRE \F_reg[37] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[5]),
        .Q(F1[5]),
        .R(1'b0));
  FDRE \F_reg[38] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[6]),
        .Q(F1[6]),
        .R(1'b0));
  FDRE \F_reg[39] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[7]),
        .Q(F1[7]),
        .R(1'b0));
  FDRE \F_reg[3] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[3]),
        .Q(F0[3]),
        .R(1'b0));
  FDRE \F_reg[40] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[8]),
        .Q(F1[8]),
        .R(1'b0));
  FDRE \F_reg[41] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[9]),
        .Q(F1[9]),
        .R(1'b0));
  FDRE \F_reg[42] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[10]),
        .Q(F1[10]),
        .R(1'b0));
  FDRE \F_reg[43] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[11]),
        .Q(F1[11]),
        .R(1'b0));
  FDRE \F_reg[44] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[12]),
        .Q(F1[12]),
        .R(1'b0));
  FDRE \F_reg[45] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[13]),
        .Q(F1[13]),
        .R(1'b0));
  FDRE \F_reg[46] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[14]),
        .Q(F1[14]),
        .R(1'b0));
  FDRE \F_reg[47] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[15]),
        .Q(F1[15]),
        .R(1'b0));
  FDRE \F_reg[48] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[16]),
        .Q(F1[16]),
        .R(1'b0));
  FDRE \F_reg[49] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[17]),
        .Q(F1[17]),
        .R(1'b0));
  FDRE \F_reg[4] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[4]),
        .Q(F0[4]),
        .R(1'b0));
  FDRE \F_reg[50] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[18]),
        .Q(F1[18]),
        .R(1'b0));
  FDRE \F_reg[51] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[19]),
        .Q(F1[19]),
        .R(1'b0));
  FDRE \F_reg[52] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[20]),
        .Q(F1[20]),
        .R(1'b0));
  FDRE \F_reg[53] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[21]),
        .Q(F1[21]),
        .R(1'b0));
  FDRE \F_reg[54] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[22]),
        .Q(F1[22]),
        .R(1'b0));
  FDRE \F_reg[55] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[23]),
        .Q(F1[23]),
        .R(1'b0));
  FDRE \F_reg[56] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[24]),
        .Q(F1[24]),
        .R(1'b0));
  FDRE \F_reg[57] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[25]),
        .Q(F1[25]),
        .R(1'b0));
  FDRE \F_reg[58] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[26]),
        .Q(F1[26]),
        .R(1'b0));
  FDRE \F_reg[59] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[27]),
        .Q(F1[27]),
        .R(1'b0));
  FDRE \F_reg[5] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[5]),
        .Q(F0[5]),
        .R(1'b0));
  FDRE \F_reg[60] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[28]),
        .Q(F1[28]),
        .R(1'b0));
  FDRE \F_reg[61] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[29]),
        .Q(F1[29]),
        .R(1'b0));
  FDRE \F_reg[62] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[30]),
        .Q(F1[30]),
        .R(1'b0));
  FDRE \F_reg[63] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT_0[31]),
        .Q(F1[31]),
        .R(1'b0));
  FDRE \F_reg[6] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[6]),
        .Q(F0[6]),
        .R(1'b0));
  FDRE \F_reg[7] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[7]),
        .Q(F0[7]),
        .R(1'b0));
  FDRE \F_reg[8] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[8]),
        .Q(F0[8]),
        .R(1'b0));
  FDRE \F_reg[9] 
       (.C(refclk),
        .CE(F),
        .D(CNTR_OUT[9]),
        .Q(F0[9]),
        .R(1'b0));
  FDRE toggle_reg
       (.C(refclk),
        .CE(1'b1),
        .D(COUNTER_REFCLK_inst_n_2),
        .Q(toggle),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "unimacro_COUNTER_TC_MACRO" *) 
module zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO
   (F,
    update,
    toggle_reg,
    refclk,
    toggle);
  output F;
  output update;
  output toggle_reg;
  input refclk;
  input toggle;

  wire [47:0]CNTR_OUT;
  wire F;
  wire \F[31]_i_2_n_0 ;
  wire \bl.DSP48E_2_i_1_n_0 ;
  wire refclk;
  wire toggle;
  wire toggle_reg;
  wire update;
  wire update_INST_0_i_10_n_0;
  wire update_INST_0_i_11_n_0;
  wire update_INST_0_i_12_n_0;
  wire update_INST_0_i_13_n_0;
  wire update_INST_0_i_1_n_0;
  wire update_INST_0_i_2_n_0;
  wire update_INST_0_i_3_n_0;
  wire update_INST_0_i_4_n_0;
  wire update_INST_0_i_5_n_0;
  wire update_INST_0_i_6_n_0;
  wire update_INST_0_i_7_n_0;
  wire update_INST_0_i_8_n_0;
  wire update_INST_0_i_9_n_0;
  wire \NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \F[31]_i_1 
       (.I0(update_INST_0_i_4_n_0),
        .I1(\F[31]_i_2_n_0 ),
        .I2(update_INST_0_i_2_n_0),
        .I3(update_INST_0_i_1_n_0),
        .I4(toggle),
        .O(F));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \F[31]_i_2 
       (.I0(CNTR_OUT[30]),
        .I1(CNTR_OUT[29]),
        .I2(CNTR_OUT[0]),
        .I3(CNTR_OUT[9]),
        .O(\F[31]_i_2_n_0 ));
  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(1),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \bl.DSP48E_2 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b1),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b1),
        .CECARRYIN(1'b1),
        .CECTRL(1'b1),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b1),
        .CLK(refclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,\bl.DSP48E_2_i_1_n_0 ,1'b0,1'b0,1'b0,\bl.DSP48E_2_i_1_n_0 ,\bl.DSP48E_2_i_1_n_0 }),
        .OVERFLOW(\NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ),
        .P(CNTR_OUT),
        .PATTERNBDETECT(\NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(\NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bl.DSP48E_2_i_1 
       (.I0(update_INST_0_i_1_n_0),
        .I1(update_INST_0_i_2_n_0),
        .I2(CNTR_OUT[9]),
        .I3(CNTR_OUT[0]),
        .I4(update_INST_0_i_3_n_0),
        .I5(update_INST_0_i_4_n_0),
        .O(\bl.DSP48E_2_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    toggle_i_1
       (.I0(update_INST_0_i_4_n_0),
        .I1(\F[31]_i_2_n_0 ),
        .I2(update_INST_0_i_2_n_0),
        .I3(update_INST_0_i_1_n_0),
        .I4(toggle),
        .O(toggle_reg));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    update_INST_0
       (.I0(update_INST_0_i_1_n_0),
        .I1(update_INST_0_i_2_n_0),
        .I2(CNTR_OUT[9]),
        .I3(CNTR_OUT[0]),
        .I4(update_INST_0_i_3_n_0),
        .I5(update_INST_0_i_4_n_0),
        .O(update));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    update_INST_0_i_1
       (.I0(update_INST_0_i_5_n_0),
        .I1(update_INST_0_i_6_n_0),
        .I2(update_INST_0_i_7_n_0),
        .I3(update_INST_0_i_8_n_0),
        .I4(update_INST_0_i_9_n_0),
        .I5(update_INST_0_i_10_n_0),
        .O(update_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    update_INST_0_i_10
       (.I0(CNTR_OUT[2]),
        .I1(CNTR_OUT[43]),
        .I2(CNTR_OUT[21]),
        .I3(CNTR_OUT[22]),
        .O(update_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    update_INST_0_i_11
       (.I0(CNTR_OUT[26]),
        .I1(CNTR_OUT[23]),
        .I2(CNTR_OUT[41]),
        .I3(CNTR_OUT[31]),
        .O(update_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    update_INST_0_i_12
       (.I0(CNTR_OUT[1]),
        .I1(CNTR_OUT[12]),
        .I2(CNTR_OUT[40]),
        .I3(CNTR_OUT[39]),
        .O(update_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    update_INST_0_i_13
       (.I0(CNTR_OUT[45]),
        .I1(CNTR_OUT[8]),
        .I2(CNTR_OUT[18]),
        .I3(CNTR_OUT[44]),
        .O(update_INST_0_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    update_INST_0_i_2
       (.I0(CNTR_OUT[28]),
        .I1(CNTR_OUT[24]),
        .I2(CNTR_OUT[25]),
        .I3(CNTR_OUT[32]),
        .I4(update_INST_0_i_11_n_0),
        .O(update_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    update_INST_0_i_3
       (.I0(CNTR_OUT[29]),
        .I1(CNTR_OUT[30]),
        .O(update_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    update_INST_0_i_4
       (.I0(CNTR_OUT[19]),
        .I1(CNTR_OUT[20]),
        .I2(CNTR_OUT[46]),
        .I3(CNTR_OUT[47]),
        .I4(update_INST_0_i_12_n_0),
        .I5(update_INST_0_i_13_n_0),
        .O(update_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    update_INST_0_i_5
       (.I0(CNTR_OUT[16]),
        .I1(CNTR_OUT[14]),
        .I2(CNTR_OUT[5]),
        .I3(CNTR_OUT[27]),
        .O(update_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    update_INST_0_i_6
       (.I0(CNTR_OUT[17]),
        .I1(CNTR_OUT[35]),
        .I2(CNTR_OUT[7]),
        .I3(CNTR_OUT[37]),
        .O(update_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    update_INST_0_i_7
       (.I0(CNTR_OUT[10]),
        .I1(CNTR_OUT[11]),
        .I2(CNTR_OUT[3]),
        .I3(CNTR_OUT[42]),
        .O(update_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    update_INST_0_i_8
       (.I0(CNTR_OUT[15]),
        .I1(CNTR_OUT[33]),
        .I2(CNTR_OUT[6]),
        .I3(CNTR_OUT[38]),
        .O(update_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    update_INST_0_i_9
       (.I0(CNTR_OUT[36]),
        .I1(CNTR_OUT[34]),
        .I2(CNTR_OUT[13]),
        .I3(CNTR_OUT[4]),
        .O(update_INST_0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "unimacro_COUNTER_TC_MACRO" *) 
module zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO__parameterized0
   (P,
    CE,
    fin,
    toggle);
  output [31:0]P;
  input CE;
  input [0:0]fin;
  input toggle;

  wire CE;
  wire [47:32]CNTR_OUT;
  wire [31:0]P;
  wire [0:0]fin;
  wire toggle;
  wire \NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(1),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \bl.DSP48E_2 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CE),
        .CEAD(1'b0),
        .CEALUMODE(CE),
        .CEB1(1'b0),
        .CEB2(CE),
        .CEC(CE),
        .CECARRYIN(CE),
        .CECTRL(CE),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CE),
        .CLK(fin),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ),
        .P({CNTR_OUT,P}),
        .PATTERNBDETECT(\NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED [47:0]),
        .RSTA(toggle),
        .RSTALLCARRYIN(toggle),
        .RSTALUMODE(toggle),
        .RSTB(toggle),
        .RSTC(toggle),
        .RSTCTRL(toggle),
        .RSTD(toggle),
        .RSTINMODE(toggle),
        .RSTM(toggle),
        .RSTP(toggle),
        .UNDERFLOW(\NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "unimacro_COUNTER_TC_MACRO" *) 
module zsys_labtools_fmeter_0_0_unimacro_COUNTER_TC_MACRO__parameterized0_0
   (P,
    CE,
    fin,
    toggle);
  output [31:0]P;
  output CE;
  input [0:0]fin;
  input toggle;

  wire CE;
  wire [47:32]CNTR_OUT;
  wire [31:0]P;
  wire [0:0]fin;
  wire toggle;
  wire \NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED ;
  wire [47:0]\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(0),
    .ALUMODEREG(1),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(1),
    .CARRYINSELREG(1),
    .CREG(1),
    .DREG(0),
    .INMODEREG(1),
    .IS_ALUMODE_INVERTED(4'b0000),
    .IS_CARRYIN_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_INMODE_INVERTED(5'b00000),
    .IS_OPMODE_INVERTED(7'b0000000),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(1),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("NONE"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    \bl.DSP48E_2 
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_bl.DSP48E_2_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_bl.DSP48E_2_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_bl.DSP48E_2_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_bl.DSP48E_2_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(CE),
        .CEAD(1'b0),
        .CEALUMODE(CE),
        .CEB1(1'b0),
        .CEB2(CE),
        .CEC(CE),
        .CECARRYIN(CE),
        .CECTRL(CE),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CE),
        .CLK(fin),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_bl.DSP48E_2_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b0,1'b1,1'b1}),
        .OVERFLOW(\NLW_bl.DSP48E_2_OVERFLOW_UNCONNECTED ),
        .P({CNTR_OUT,P}),
        .PATTERNBDETECT(\NLW_bl.DSP48E_2_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_bl.DSP48E_2_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_bl.DSP48E_2_PCOUT_UNCONNECTED [47:0]),
        .RSTA(toggle),
        .RSTALLCARRYIN(toggle),
        .RSTALUMODE(toggle),
        .RSTB(toggle),
        .RSTC(toggle),
        .RSTCTRL(toggle),
        .RSTD(toggle),
        .RSTINMODE(toggle),
        .RSTM(toggle),
        .RSTP(toggle),
        .UNDERFLOW(\NLW_bl.DSP48E_2_UNDERFLOW_UNCONNECTED ));
  LUT1 #(
    .INIT(2'h1)) 
    \bl.DSP48E_2_i_1__0 
       (.I0(toggle),
        .O(CE));
endmodule
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
