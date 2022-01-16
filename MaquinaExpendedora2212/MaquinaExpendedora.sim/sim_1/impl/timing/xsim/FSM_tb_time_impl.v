// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Sun Jan 16 13:56:56 2022
// Host        : PACO-GUILLE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Propietario/Documents/GitHub/Maquina_Expendedora_VHDL/MaquinaExpendedora2212/MaquinaExpendedora.sim/sim_1/impl/timing/xsim/FSM_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BCD_decoder
   (O,
    CO,
    g0_b0__2_i_3,
    g0_b0__0_i_8_0,
    \current_state_reg[2] ,
    carac21_carry_0,
    carac21_carry__0_0,
    carac21_carry_1,
    to_BCD_Decod,
    S,
    DI,
    g0_b0__1_i_7_0,
    carac10__0_carry__0_0,
    carac10__0_carry__0_1,
    g0_b0_i_1,
    g0_b0_i_1_0,
    g0_b7__1,
    to_BCD_7segm4,
    g0_b7__1_0,
    to_BCD_7segm6);
  output [1:0]O;
  output [0:0]CO;
  output g0_b0__2_i_3;
  output g0_b0__0_i_8_0;
  output \current_state_reg[2] ;
  output carac21_carry_0;
  output carac21_carry__0_0;
  output carac21_carry_1;
  input [4:0]to_BCD_Decod;
  input [3:0]S;
  input [1:0]DI;
  input [3:0]g0_b0__1_i_7_0;
  input [1:0]carac10__0_carry__0_0;
  input [3:0]carac10__0_carry__0_1;
  input g0_b0_i_1;
  input [0:0]g0_b0_i_1_0;
  input g0_b7__1;
  input [0:0]to_BCD_7segm4;
  input g0_b7__1_0;
  input [0:0]to_BCD_7segm6;

  wire [0:0]CO;
  wire [1:0]DI;
  wire [1:0]O;
  wire [3:0]S;
  wire [1:0]carac10__0_carry__0_0;
  wire [3:0]carac10__0_carry__0_1;
  wire carac10__0_carry_n_0;
  wire carac21_carry_0;
  wire carac21_carry_1;
  wire carac21_carry__0_0;
  wire carac21_carry__0_n_4;
  wire carac21_carry__0_n_5;
  wire carac21_carry__0_n_6;
  wire carac21_carry__0_n_7;
  wire carac21_carry_n_0;
  wire carac21_carry_n_4;
  wire carac21_carry_n_5;
  wire \current_state_reg[2] ;
  wire g0_b0__0_i_11_n_0;
  wire g0_b0__0_i_12_n_0;
  wire g0_b0__0_i_13_n_0;
  wire g0_b0__0_i_8_0;
  wire g0_b0__1_i_10_n_0;
  wire [3:0]g0_b0__1_i_7_0;
  wire g0_b0__1_i_7_n_0;
  wire g0_b0__1_i_8_n_0;
  wire g0_b0__2_i_3;
  wire g0_b0_i_1;
  wire [0:0]g0_b0_i_1_0;
  wire g0_b7__1;
  wire g0_b7__1_0;
  wire [0:0]to_BCD_7segm4;
  wire [0:0]to_BCD_7segm6;
  wire [4:0]to_BCD_Decod;
  wire [2:0]NLW_carac10__0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_carac10__0_carry_O_UNCONNECTED;
  wire [3:1]NLW_carac10__0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_carac10__0_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_carac21_carry_CO_UNCONNECTED;
  wire [3:0]NLW_carac21_carry__0_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 carac10__0_carry
       (.CI(1'b0),
        .CO({carac10__0_carry_n_0,NLW_carac10__0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({carac10__0_carry__0_0[1],1'b0,1'b0,carac10__0_carry__0_0[0]}),
        .O(NLW_carac10__0_carry_O_UNCONNECTED[3:0]),
        .S(carac10__0_carry__0_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 carac10__0_carry__0
       (.CI(carac10__0_carry_n_0),
        .CO({NLW_carac10__0_carry__0_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,g0_b0_i_1}),
        .O(NLW_carac10__0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,g0_b0_i_1_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 carac21_carry
       (.CI(1'b0),
        .CO({carac21_carry_n_0,NLW_carac21_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(to_BCD_Decod[3:0]),
        .O({carac21_carry_n_4,carac21_carry_n_5,O}),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 carac21_carry__0
       (.CI(carac21_carry_n_0),
        .CO(NLW_carac21_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,DI,to_BCD_Decod[4]}),
        .O({carac21_carry__0_n_4,carac21_carry__0_n_5,carac21_carry__0_n_6,carac21_carry__0_n_7}),
        .S(g0_b0__1_i_7_0));
  LUT6 #(
    .INIT(64'h38203820382030E0)) 
    g0_b0__0_i_10
       (.I0(carac21_carry__0_n_4),
        .I1(carac21_carry__0_n_6),
        .I2(carac21_carry__0_n_5),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(carac21_carry_1));
  LUT6 #(
    .INIT(64'h38DFD235C720CFE0)) 
    g0_b0__0_i_11
       (.I0(carac21_carry__0_n_4),
        .I1(carac21_carry__0_n_6),
        .I2(carac21_carry__0_n_5),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(g0_b0__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFF15150000EAAA)) 
    g0_b0__0_i_12
       (.I0(carac21_carry__0_n_4),
        .I1(carac21_carry__0_n_6),
        .I2(carac21_carry__0_n_5),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(g0_b0__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCD333333)) 
    g0_b0__0_i_13
       (.I0(carac21_carry_n_4),
        .I1(carac21_carry_n_5),
        .I2(carac21_carry__0_n_7),
        .I3(carac21_carry__0_n_5),
        .I4(carac21_carry__0_n_6),
        .I5(carac21_carry__0_n_4),
        .O(g0_b0__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h6A284228EBBDEBA9)) 
    g0_b0__0_i_7
       (.I0(g0_b0__0_i_11_n_0),
        .I1(g0_b0__0_i_12_n_0),
        .I2(carac21_carry_0),
        .I3(g0_b0__0_i_13_n_0),
        .I4(O[1]),
        .I5(carac21_carry__0_0),
        .O(g0_b0__0_i_8_0));
  LUT6 #(
    .INIT(64'h5FE085F85F7AF01F)) 
    g0_b0__0_i_8
       (.I0(carac21_carry_n_4),
        .I1(carac21_carry_n_5),
        .I2(carac21_carry__0_n_7),
        .I3(carac21_carry__0_n_5),
        .I4(carac21_carry__0_n_6),
        .I5(carac21_carry__0_n_4),
        .O(carac21_carry__0_0));
  LUT6 #(
    .INIT(64'h1C561452144254C2)) 
    g0_b0__0_i_9
       (.I0(carac21_carry__0_n_5),
        .I1(carac21_carry__0_n_4),
        .I2(carac21_carry__0_n_6),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(carac21_carry_0));
  LUT6 #(
    .INIT(64'h1515151515151555)) 
    g0_b0__1_i_10
       (.I0(carac21_carry__0_n_4),
        .I1(carac21_carry__0_n_6),
        .I2(carac21_carry__0_n_5),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(g0_b0__1_i_10_n_0));
  LUT6 #(
    .INIT(64'hB4FFB400B4FFB4FF)) 
    g0_b0__1_i_3
       (.I0(O[1]),
        .I1(g0_b0__0_i_8_0),
        .I2(g0_b0__1_i_7_n_0),
        .I3(g0_b7__1),
        .I4(g0_b7__1_0),
        .I5(to_BCD_7segm6),
        .O(\current_state_reg[2] ));
  LUT6 #(
    .INIT(64'h999CFFFF999C0000)) 
    g0_b0__1_i_4
       (.I0(g0_b0__0_i_8_0),
        .I1(g0_b0__1_i_8_n_0),
        .I2(g0_b0__1_i_7_n_0),
        .I3(O[1]),
        .I4(g0_b7__1),
        .I5(to_BCD_7segm4),
        .O(g0_b0__2_i_3));
  LUT6 #(
    .INIT(64'hD02D0BD0340BC2B4)) 
    g0_b0__1_i_7
       (.I0(carac21_carry__0_n_4),
        .I1(carac21_carry__0_n_6),
        .I2(carac21_carry__0_n_5),
        .I3(carac21_carry__0_n_7),
        .I4(carac21_carry_n_5),
        .I5(carac21_carry_n_4),
        .O(g0_b0__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h9996966696666669)) 
    g0_b0__1_i_8
       (.I0(carac21_carry_n_4),
        .I1(carac21_carry_0),
        .I2(O[1]),
        .I3(carac21_carry__0_0),
        .I4(carac21_carry_n_5),
        .I5(g0_b0__1_i_10_n_0),
        .O(g0_b0__1_i_8_n_0));
endmodule

module EDGEDTCTR
   (sreg,
    \sreg_reg[1]_0 ,
    \sreg_reg[0]_0 ,
    \sreg_reg[1]_1 ,
    \sreg_reg[0]_1 ,
    CLK_IBUF_BUFG,
    sreg_0,
    Q);
  output [2:0]sreg;
  output \sreg_reg[1]_0 ;
  output \sreg_reg[0]_0 ;
  output \sreg_reg[1]_1 ;
  input \sreg_reg[0]_1 ;
  input CLK_IBUF_BUFG;
  input [2:0]sreg_0;
  input [1:0]Q;

  wire CLK_IBUF_BUFG;
  wire [1:0]Q;
  wire [2:0]sreg;
  wire [2:0]sreg_0;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg[0]_1 ;
  wire \sreg_reg[1]_0 ;
  wire \sreg_reg[1]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h04000404)) 
    \coste_rest_reg[5]_LDC_i_2 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\sreg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \coste_rest_reg[6]_LDC_i_3 
       (.I0(sreg[0]),
        .I1(sreg[2]),
        .I2(sreg[1]),
        .O(\sreg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \current_state[0]_i_2 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(sreg_0[1]),
        .I4(sreg_0[2]),
        .I5(sreg_0[0]),
        .O(\sreg_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_1 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "EDGEDTCTR" *) 
module EDGEDTCTR_0
   (sreg,
    coste_rest,
    \sreg_reg[0]_0 ,
    \sreg_reg[0]_1 ,
    \sreg_reg[1]_0 ,
    \sreg_reg[1]_1 ,
    \sreg_reg[0]_2 ,
    \sreg_reg[0]_3 ,
    \sreg_reg[0]_4 ,
    CLK_IBUF_BUFG,
    sreg_0,
    \coste_rest_reg[7] ,
    \coste_rest_reg[6]_C ,
    Q);
  output [2:0]sreg;
  output [0:0]coste_rest;
  output \sreg_reg[0]_0 ;
  output [0:0]\sreg_reg[0]_1 ;
  output \sreg_reg[1]_0 ;
  output \sreg_reg[1]_1 ;
  output \sreg_reg[0]_2 ;
  output \sreg_reg[0]_3 ;
  input \sreg_reg[0]_4 ;
  input CLK_IBUF_BUFG;
  input [2:0]sreg_0;
  input \coste_rest_reg[7] ;
  input \coste_rest_reg[6]_C ;
  input [1:0]Q;

  wire CLK_IBUF_BUFG;
  wire [1:0]Q;
  wire [0:0]coste_rest;
  wire \coste_rest_reg[6]_C ;
  wire \coste_rest_reg[7] ;
  wire [2:0]sreg;
  wire [2:0]sreg_0;
  wire \sreg_reg[0]_0 ;
  wire [0:0]\sreg_reg[0]_1 ;
  wire \sreg_reg[0]_2 ;
  wire \sreg_reg[0]_3 ;
  wire \sreg_reg[0]_4 ;
  wire \sreg_reg[1]_0 ;
  wire \sreg_reg[1]_1 ;

  LUT5 #(
    .INIT(32'h5555AA9A)) 
    \coste_rest[7]_i_6 
       (.I0(\coste_rest_reg[7] ),
        .I1(sreg[0]),
        .I2(sreg[2]),
        .I3(sreg[1]),
        .I4(\coste_rest_reg[6]_C ),
        .O(\sreg_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFEF0000FFEFFFEF)) 
    \coste_rest_reg[4]_LDC_i_1 
       (.I0(\coste_rest_reg[6]_C ),
        .I1(sreg[0]),
        .I2(sreg[2]),
        .I3(sreg[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\sreg_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000004040004)) 
    \coste_rest_reg[4]_LDC_i_2 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\coste_rest_reg[6]_C ),
        .O(\sreg_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFF040000FF04FF04)) 
    \coste_rest_reg[6]_LDC_i_1 
       (.I0(sreg[0]),
        .I1(sreg[2]),
        .I2(sreg[1]),
        .I3(\coste_rest_reg[6]_C ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\sreg_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h00000000FBFB00FB)) 
    \coste_rest_reg[6]_LDC_i_2 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\coste_rest_reg[6]_C ),
        .O(\sreg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0404040404000404)) 
    \current_state[1]_i_2 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(sreg_0[1]),
        .I4(sreg_0[2]),
        .I5(sreg_0[0]),
        .O(coste_rest));
  LUT3 #(
    .INIT(8'h04)) 
    \current_state[2]_i_7 
       (.I0(sreg[0]),
        .I1(sreg[2]),
        .I2(sreg[1]),
        .O(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_4 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "EDGEDTCTR" *) 
module EDGEDTCTR_2
   (sreg,
    \sreg_reg[0]_0 ,
    \sreg_reg[1]_0 ,
    \sreg_reg[0]_1 ,
    CLK_IBUF_BUFG,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 ,
    sreg_0);
  output [2:0]sreg;
  output \sreg_reg[0]_0 ;
  output \sreg_reg[1]_0 ;
  input \sreg_reg[0]_1 ;
  input CLK_IBUF_BUFG;
  input \current_state_reg[2] ;
  input \current_state_reg[2]_0 ;
  input [2:0]sreg_0;

  wire CLK_IBUF_BUFG;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [2:0]sreg;
  wire [2:0]sreg_0;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg[0]_1 ;
  wire \sreg_reg[1]_0 ;

  LUT6 #(
    .INIT(64'h0404040404000404)) 
    \current_state[1]_i_3 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(sreg_0[1]),
        .I4(sreg_0[2]),
        .I5(sreg_0[0]),
        .O(\sreg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00005545)) 
    \current_state[2]_i_6 
       (.I0(\current_state_reg[2] ),
        .I1(sreg[0]),
        .I2(sreg[2]),
        .I3(sreg[1]),
        .I4(\current_state_reg[2]_0 ),
        .O(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_1 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "EDGEDTCTR" *) 
module EDGEDTCTR_4
   (\sreg_reg[1]_0 ,
    D,
    \sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    \current_state_reg[2] ,
    \current_state_reg[2]_0 );
  output \sreg_reg[1]_0 ;
  output [0:0]D;
  input \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input \current_state_reg[2] ;
  input \current_state_reg[2]_0 ;

  wire CLK_IBUF_BUFG;
  wire [0:0]D;
  wire \current_state_reg[2] ;
  wire \current_state_reg[2]_0 ;
  wire [2:0]sreg;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg[1]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFB00FFFF)) 
    \current_state[2]_i_2 
       (.I0(sreg[0]),
        .I1(sreg[2]),
        .I2(sreg[1]),
        .I3(\current_state_reg[2] ),
        .I4(\current_state_reg[2]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \current_state[2]_i_5 
       (.I0(\current_state_reg[2] ),
        .I1(sreg[1]),
        .I2(sreg[2]),
        .I3(sreg[0]),
        .O(\sreg_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_0 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "EDGEDTCTR" *) 
module EDGEDTCTR_6
   (\sreg_reg[1]_0 ,
    \sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Q);
  output \sreg_reg[1]_0 ;
  input \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [2:0]Q;

  wire CLK_IBUF_BUFG;
  wire [2:0]Q;
  wire [2:0]sreg;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hFFFFFF0404040404)) 
    \current_state[2]_i_4 
       (.I0(sreg[1]),
        .I1(sreg[2]),
        .I2(sreg[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\sreg_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\sreg_reg[0]_0 ),
        .Q(sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[0]),
        .Q(sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(sreg[1]),
        .Q(sreg[2]),
        .R(1'b0));
endmodule

module SYNCHRNZR
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Boton_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Boton_IBUF;

  wire [0:0]Boton_IBUF;
  wire CLK_IBUF_BUFG;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_bus_name = "\synchronizers " *) 
  (* srl_name = "\synchronizers[0].Inst_SYNCHRNZR/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Boton_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRNZR" *) 
module SYNCHRNZR_1
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Boton_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Boton_IBUF;

  wire [0:0]Boton_IBUF;
  wire CLK_IBUF_BUFG;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_bus_name = "\synchronizers " *) 
  (* srl_name = "\synchronizers[1].Inst_SYNCHRNZR/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Boton_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRNZR" *) 
module SYNCHRNZR_3
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Boton_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Boton_IBUF;

  wire [0:0]Boton_IBUF;
  wire CLK_IBUF_BUFG;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_bus_name = "\synchronizers " *) 
  (* srl_name = "\synchronizers[2].Inst_SYNCHRNZR/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Boton_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRNZR" *) 
module SYNCHRNZR_5
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Boton_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Boton_IBUF;

  wire [0:0]Boton_IBUF;
  wire CLK_IBUF_BUFG;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_bus_name = "\synchronizers " *) 
  (* srl_name = "\synchronizers[3].Inst_SYNCHRNZR/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Boton_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRNZR" *) 
module SYNCHRNZR_7
   (\sreg_reg[0]_0 ,
    CLK_IBUF_BUFG,
    Boton_IBUF);
  output \sreg_reg[0]_0 ;
  input CLK_IBUF_BUFG;
  input [0:0]Boton_IBUF;

  wire [0:0]Boton_IBUF;
  wire CLK_IBUF_BUFG;
  wire \sreg_reg[0]_0 ;
  wire \sreg_reg_n_0_[0] ;

  (* srl_bus_name = "\synchronizers " *) 
  (* srl_name = "\synchronizers[4].Inst_SYNCHRNZR/SYNC_OUT_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    SYNC_OUT_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(CLK_IBUF_BUFG),
        .D(\sreg_reg_n_0_[0] ),
        .Q(\sreg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sreg_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Boton_IBUF),
        .Q(\sreg_reg_n_0_[0] ),
        .R(1'b0));
endmodule

module display_exit
   (Q,
    display_number_OBUF,
    display_select_OBUF,
    \display_number[0] ,
    \display_number[0]_0 ,
    \display_number[0]_1 ,
    \display_number[1] ,
    \display_number[1]_0 ,
    \display_number[1]_1 ,
    \display_number[4] ,
    \display_number[4]_0 ,
    \display_number[4]_1 ,
    \display_number[7] ,
    \display_number[7]_0 ,
    \display_number_OBUF[7]_inst_i_1_0 ,
    \display_number_OBUF[7]_inst_i_1_1 ,
    CLK);
  output [2:0]Q;
  output [3:0]display_number_OBUF;
  output [7:0]display_select_OBUF;
  input \display_number[0] ;
  input \display_number[0]_0 ;
  input \display_number[0]_1 ;
  input \display_number[1] ;
  input \display_number[1]_0 ;
  input \display_number[1]_1 ;
  input \display_number[4] ;
  input \display_number[4]_0 ;
  input \display_number[4]_1 ;
  input \display_number[7] ;
  input \display_number[7]_0 ;
  input \display_number_OBUF[7]_inst_i_1_0 ;
  input \display_number_OBUF[7]_inst_i_1_1 ;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire \display_number[0] ;
  wire \display_number[0]_0 ;
  wire \display_number[0]_1 ;
  wire \display_number[1] ;
  wire \display_number[1]_0 ;
  wire \display_number[1]_1 ;
  wire \display_number[4] ;
  wire \display_number[4]_0 ;
  wire \display_number[4]_1 ;
  wire \display_number[7] ;
  wire \display_number[7]_0 ;
  wire [3:0]display_number_OBUF;
  wire \display_number_OBUF[7]_inst_i_1_0 ;
  wire \display_number_OBUF[7]_inst_i_1_1 ;
  wire \display_number_OBUF[7]_inst_i_2_n_0 ;
  wire \display_number_OBUF[7]_inst_i_3_n_0 ;
  wire [7:0]display_select_OBUF;
  wire \displays.display[0]_i_1_n_0 ;
  wire \displays.display[1]_i_1_n_0 ;
  wire \displays.display[2]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \display_number_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(\display_number[0] ),
        .I2(Q[1]),
        .I3(\display_number[0]_0 ),
        .I4(Q[2]),
        .I5(\display_number[0]_1 ),
        .O(display_number_OBUF[0]));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \display_number_OBUF[1]_inst_i_1 
       (.I0(Q[0]),
        .I1(\display_number[1] ),
        .I2(Q[1]),
        .I3(\display_number[1]_0 ),
        .I4(Q[2]),
        .I5(\display_number[1]_1 ),
        .O(display_number_OBUF[1]));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \display_number_OBUF[4]_inst_i_1 
       (.I0(Q[0]),
        .I1(\display_number[4] ),
        .I2(Q[1]),
        .I3(\display_number[4]_0 ),
        .I4(Q[2]),
        .I5(\display_number[4]_1 ),
        .O(display_number_OBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_number_OBUF[7]_inst_i_1 
       (.I0(\display_number_OBUF[7]_inst_i_2_n_0 ),
        .I1(\display_number_OBUF[7]_inst_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\display_number[7] ),
        .I4(Q[1]),
        .I5(\display_number[7]_0 ),
        .O(display_number_OBUF[3]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \display_number_OBUF[7]_inst_i_2 
       (.I0(\display_number_OBUF[7]_inst_i_1_1 ),
        .I1(Q[0]),
        .O(\display_number_OBUF[7]_inst_i_2_n_0 ));
  MUXF7 \display_number_OBUF[7]_inst_i_3 
       (.I0(\display_number_OBUF[7]_inst_i_1_0 ),
        .I1(1'b1),
        .O(\display_number_OBUF[7]_inst_i_3_n_0 ),
        .S(Q[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \display_select_OBUF[0]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_select_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(display_select_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_OBUF[2]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_select_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(display_select_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \display_select_OBUF[4]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(display_select_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_OBUF[5]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(display_select_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \display_select_OBUF[6]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(display_select_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \display_select_OBUF[7]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(display_select_OBUF[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \displays.display[0]_i_1 
       (.I0(Q[0]),
        .O(\displays.display[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \displays.display[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\displays.display[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \displays.display[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\displays.display[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \displays.display_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\displays.display[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displays.display_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\displays.display[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \displays.display_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\displays.display[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
endmodule

module fsm
   (\current_state_reg[2]_0 ,
    Q,
    to_BCD_Decod,
    \coste_rest_reg[7]_0 ,
    \coste_rest_reg[7]_1 ,
    \coste_rest_reg[5]_C_0 ,
    \coste_rest_reg[7]_2 ,
    LIGHT_OBUF,
    to_BCD_7segm6,
    \coste_rest_reg[6]_P_0 ,
    \current_state_reg[2]_1 ,
    error_OBUF,
    S,
    \coste_rest_reg[7]_3 ,
    DI,
    \current_state_reg[2]_2 ,
    \coste_rest_reg[6]_P_1 ,
    \displays.display_reg[1] ,
    \displays.display_reg[0] ,
    \displays.display_reg[1]_0 ,
    \displays.display_reg[0]_0 ,
    display_number_OBUF,
    \displays.display_reg[1]_1 ,
    \displays.display_reg[0]_1 ,
    \displays.display_reg[0]_2 ,
    \displays.display_reg[0]_3 ,
    \current_state_reg[1]_0 ,
    \current_state_reg[2]_3 ,
    \current_state_reg[2]_4 ,
    \current_state_reg[2]_5 ,
    g0_b0__2_i_3_0,
    \coste_rest_reg[6]_P_2 ,
    \coste_rest_reg[6]_C_0 ,
    CLK_IBUF_BUFG,
    \coste_rest_reg[5]_C_1 ,
    \coste_rest_reg[4]_P_0 ,
    \coste_rest_reg[4]_C_0 ,
    O,
    g0_b0__1_0,
    g0_b0__0_0,
    g0_b0__0_1,
    g0_b0__0_2,
    CO,
    coste_rest,
    \current_state_reg[1]_1 ,
    \current_state_reg[0]_0 ,
    \current_state_reg[0]_1 ,
    \current_state_reg[0]_2 ,
    \coste_rest_reg[1]_P_0 ,
    \coste_rest_reg[7]_4 ,
    \display_number[3] ,
    D,
    RESET_IBUF,
    sreg,
    sreg_0,
    \coste_rest_reg[7]_5 ,
    \display_number_OBUF[7]_inst_i_4_0 ,
    \display_number_OBUF[7]_inst_i_4_1 );
  output \current_state_reg[2]_0 ;
  output [2:0]Q;
  output [4:0]to_BCD_Decod;
  output \coste_rest_reg[7]_0 ;
  output \coste_rest_reg[7]_1 ;
  output [1:0]\coste_rest_reg[5]_C_0 ;
  output [0:0]\coste_rest_reg[7]_2 ;
  output [9:0]LIGHT_OBUF;
  output [0:0]to_BCD_7segm6;
  output \coste_rest_reg[6]_P_0 ;
  output \current_state_reg[2]_1 ;
  output error_OBUF;
  output [3:0]S;
  output [3:0]\coste_rest_reg[7]_3 ;
  output [1:0]DI;
  output [3:0]\current_state_reg[2]_2 ;
  output [0:0]\coste_rest_reg[6]_P_1 ;
  output \displays.display_reg[1] ;
  output \displays.display_reg[0] ;
  output \displays.display_reg[1]_0 ;
  output \displays.display_reg[0]_0 ;
  output [3:0]display_number_OBUF;
  output \displays.display_reg[1]_1 ;
  output \displays.display_reg[0]_1 ;
  output \displays.display_reg[0]_2 ;
  output \displays.display_reg[0]_3 ;
  output \current_state_reg[1]_0 ;
  output \current_state_reg[2]_3 ;
  output \current_state_reg[2]_4 ;
  output \current_state_reg[2]_5 ;
  output g0_b0__2_i_3_0;
  input \coste_rest_reg[6]_P_2 ;
  input \coste_rest_reg[6]_C_0 ;
  input CLK_IBUF_BUFG;
  input \coste_rest_reg[5]_C_1 ;
  input \coste_rest_reg[4]_P_0 ;
  input \coste_rest_reg[4]_C_0 ;
  input [1:0]O;
  input g0_b0__1_0;
  input g0_b0__0_0;
  input g0_b0__0_1;
  input g0_b0__0_2;
  input [0:0]CO;
  input [0:0]coste_rest;
  input \current_state_reg[1]_1 ;
  input \current_state_reg[0]_0 ;
  input \current_state_reg[0]_1 ;
  input \current_state_reg[0]_2 ;
  input \coste_rest_reg[1]_P_0 ;
  input [0:0]\coste_rest_reg[7]_4 ;
  input [2:0]\display_number[3] ;
  input [0:0]D;
  input RESET_IBUF;
  input [2:0]sreg;
  input [2:0]sreg_0;
  input \coste_rest_reg[7]_5 ;
  input \display_number_OBUF[7]_inst_i_4_0 ;
  input \display_number_OBUF[7]_inst_i_4_1 ;

  wire CLK_IBUF_BUFG;
  wire [0:0]CO;
  wire [0:0]D;
  wire [1:0]DI;
  wire [9:0]LIGHT_OBUF;
  wire \LIGHT_OBUF[12]_inst_i_2_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_3_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_4_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_5_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_6_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_7_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_8_n_0 ;
  wire \LIGHT_OBUF[12]_inst_i_9_n_0 ;
  wire \LIGHT_OBUF[13]_inst_i_3_n_0 ;
  wire \LIGHT_OBUF[13]_inst_i_4_n_0 ;
  wire \LIGHT_OBUF[13]_inst_i_5_n_0 ;
  wire \LIGHT_OBUF[13]_inst_i_6_n_0 ;
  wire \LIGHT_OBUF[14]_inst_i_2_n_0 ;
  wire \LIGHT_OBUF[14]_inst_i_3_n_0 ;
  wire \LIGHT_OBUF[14]_inst_i_4_n_0 ;
  wire \LIGHT_OBUF[14]_inst_i_5_n_0 ;
  wire \LIGHT_OBUF[15]_inst_i_2_n_0 ;
  wire [1:0]O;
  wire [2:0]Q;
  wire RESET_IBUF;
  wire [3:0]S;
  wire [0:0]coste_rest;
  wire coste_rest0;
  wire \coste_rest[11]_i_2_n_0 ;
  wire \coste_rest[11]_i_3_n_0 ;
  wire \coste_rest[11]_i_4_n_0 ;
  wire \coste_rest[11]_i_5_n_0 ;
  wire \coste_rest[15]_i_2_n_0 ;
  wire \coste_rest[15]_i_3_n_0 ;
  wire \coste_rest[15]_i_4_n_0 ;
  wire \coste_rest[15]_i_5_n_0 ;
  wire \coste_rest[19]_i_2_n_0 ;
  wire \coste_rest[19]_i_3_n_0 ;
  wire \coste_rest[19]_i_4_n_0 ;
  wire \coste_rest[19]_i_5_n_0 ;
  wire \coste_rest[23]_i_2_n_0 ;
  wire \coste_rest[23]_i_3_n_0 ;
  wire \coste_rest[23]_i_4_n_0 ;
  wire \coste_rest[23]_i_5_n_0 ;
  wire \coste_rest[27]_i_2_n_0 ;
  wire \coste_rest[27]_i_3_n_0 ;
  wire \coste_rest[27]_i_4_n_0 ;
  wire \coste_rest[27]_i_5_n_0 ;
  wire \coste_rest[31]_i_3_n_0 ;
  wire \coste_rest[31]_i_4_n_0 ;
  wire \coste_rest[31]_i_5_n_0 ;
  wire \coste_rest[31]_i_6_n_0 ;
  wire \coste_rest[31]_i_7_n_0 ;
  wire \coste_rest[3]_i_2_n_0 ;
  wire \coste_rest[3]_i_3_n_0 ;
  wire \coste_rest[3]_i_4_n_0 ;
  wire \coste_rest[3]_i_5_n_0 ;
  wire \coste_rest[3]_i_6_n_0 ;
  wire \coste_rest[7]_i_3_n_0 ;
  wire \coste_rest[7]_i_4_n_0 ;
  wire \coste_rest[7]_i_5_n_0 ;
  wire \coste_rest[7]_i_7_n_0 ;
  wire \coste_rest[7]_i_8_n_0 ;
  wire \coste_rest_reg[11]_i_1_n_0 ;
  wire \coste_rest_reg[11]_i_1_n_4 ;
  wire \coste_rest_reg[11]_i_1_n_5 ;
  wire \coste_rest_reg[11]_i_1_n_6 ;
  wire \coste_rest_reg[11]_i_1_n_7 ;
  wire \coste_rest_reg[15]_i_1_n_0 ;
  wire \coste_rest_reg[15]_i_1_n_4 ;
  wire \coste_rest_reg[15]_i_1_n_5 ;
  wire \coste_rest_reg[15]_i_1_n_6 ;
  wire \coste_rest_reg[15]_i_1_n_7 ;
  wire \coste_rest_reg[19]_i_1_n_0 ;
  wire \coste_rest_reg[19]_i_1_n_4 ;
  wire \coste_rest_reg[19]_i_1_n_5 ;
  wire \coste_rest_reg[19]_i_1_n_6 ;
  wire \coste_rest_reg[19]_i_1_n_7 ;
  wire \coste_rest_reg[1]_C_n_0 ;
  wire \coste_rest_reg[1]_LDC_n_0 ;
  wire \coste_rest_reg[1]_P_0 ;
  wire \coste_rest_reg[1]_P_n_0 ;
  wire \coste_rest_reg[23]_i_1_n_0 ;
  wire \coste_rest_reg[23]_i_1_n_4 ;
  wire \coste_rest_reg[23]_i_1_n_5 ;
  wire \coste_rest_reg[23]_i_1_n_6 ;
  wire \coste_rest_reg[23]_i_1_n_7 ;
  wire \coste_rest_reg[27]_i_1_n_0 ;
  wire \coste_rest_reg[27]_i_1_n_4 ;
  wire \coste_rest_reg[27]_i_1_n_5 ;
  wire \coste_rest_reg[27]_i_1_n_6 ;
  wire \coste_rest_reg[27]_i_1_n_7 ;
  wire \coste_rest_reg[2]_C_n_0 ;
  wire \coste_rest_reg[2]_LDC_n_0 ;
  wire \coste_rest_reg[2]_P_n_0 ;
  wire \coste_rest_reg[31]_i_2_n_4 ;
  wire \coste_rest_reg[31]_i_2_n_5 ;
  wire \coste_rest_reg[31]_i_2_n_6 ;
  wire \coste_rest_reg[31]_i_2_n_7 ;
  wire \coste_rest_reg[3]_i_1_n_0 ;
  wire \coste_rest_reg[3]_i_1_n_4 ;
  wire \coste_rest_reg[3]_i_1_n_5 ;
  wire \coste_rest_reg[3]_i_1_n_6 ;
  wire \coste_rest_reg[4]_C_0 ;
  wire \coste_rest_reg[4]_C_n_0 ;
  wire \coste_rest_reg[4]_LDC_n_0 ;
  wire \coste_rest_reg[4]_P_0 ;
  wire \coste_rest_reg[4]_P_n_0 ;
  wire [1:0]\coste_rest_reg[5]_C_0 ;
  wire \coste_rest_reg[5]_C_1 ;
  wire \coste_rest_reg[5]_C_n_0 ;
  wire \coste_rest_reg[5]_LDC_i_1_n_0 ;
  wire \coste_rest_reg[5]_LDC_n_0 ;
  wire \coste_rest_reg[5]_P_n_0 ;
  wire \coste_rest_reg[6]_C_0 ;
  wire \coste_rest_reg[6]_C_n_0 ;
  wire \coste_rest_reg[6]_LDC_n_0 ;
  wire \coste_rest_reg[6]_P_0 ;
  wire [0:0]\coste_rest_reg[6]_P_1 ;
  wire \coste_rest_reg[6]_P_2 ;
  wire \coste_rest_reg[6]_P_n_0 ;
  wire \coste_rest_reg[7]_0 ;
  wire \coste_rest_reg[7]_1 ;
  wire [0:0]\coste_rest_reg[7]_2 ;
  wire [3:0]\coste_rest_reg[7]_3 ;
  wire [0:0]\coste_rest_reg[7]_4 ;
  wire \coste_rest_reg[7]_5 ;
  wire \coste_rest_reg[7]_i_1_n_0 ;
  wire \coste_rest_reg[7]_i_1_n_4 ;
  wire \coste_rest_reg[7]_i_1_n_5 ;
  wire \coste_rest_reg[7]_i_1_n_6 ;
  wire \coste_rest_reg[7]_i_1_n_7 ;
  wire \coste_rest_reg_n_0_[10] ;
  wire \coste_rest_reg_n_0_[11] ;
  wire \coste_rest_reg_n_0_[12] ;
  wire \coste_rest_reg_n_0_[13] ;
  wire \coste_rest_reg_n_0_[14] ;
  wire \coste_rest_reg_n_0_[15] ;
  wire \coste_rest_reg_n_0_[16] ;
  wire \coste_rest_reg_n_0_[17] ;
  wire \coste_rest_reg_n_0_[18] ;
  wire \coste_rest_reg_n_0_[19] ;
  wire \coste_rest_reg_n_0_[20] ;
  wire \coste_rest_reg_n_0_[21] ;
  wire \coste_rest_reg_n_0_[22] ;
  wire \coste_rest_reg_n_0_[23] ;
  wire \coste_rest_reg_n_0_[24] ;
  wire \coste_rest_reg_n_0_[25] ;
  wire \coste_rest_reg_n_0_[26] ;
  wire \coste_rest_reg_n_0_[27] ;
  wire \coste_rest_reg_n_0_[28] ;
  wire \coste_rest_reg_n_0_[29] ;
  wire \coste_rest_reg_n_0_[30] ;
  wire \coste_rest_reg_n_0_[31] ;
  wire \coste_rest_reg_n_0_[3] ;
  wire \coste_rest_reg_n_0_[7] ;
  wire \coste_rest_reg_n_0_[8] ;
  wire \coste_rest_reg_n_0_[9] ;
  wire \current_state[2]_i_1_n_0 ;
  wire \current_state[2]_i_3_n_0 ;
  wire \current_state_reg[0]_0 ;
  wire \current_state_reg[0]_1 ;
  wire \current_state_reg[0]_2 ;
  wire \current_state_reg[1]_0 ;
  wire \current_state_reg[1]_1 ;
  wire \current_state_reg[2]_0 ;
  wire \current_state_reg[2]_1 ;
  wire [3:0]\current_state_reg[2]_2 ;
  wire \current_state_reg[2]_3 ;
  wire \current_state_reg[2]_4 ;
  wire \current_state_reg[2]_5 ;
  wire [2:0]\display_number[3] ;
  wire [3:0]display_number_OBUF;
  wire \display_number_OBUF[0]_inst_i_4_n_0 ;
  wire \display_number_OBUF[0]_inst_i_5_n_0 ;
  wire \display_number_OBUF[1]_inst_i_4_n_0 ;
  wire \display_number_OBUF[1]_inst_i_5_n_0 ;
  wire \display_number_OBUF[3]_inst_i_2_n_0 ;
  wire \display_number_OBUF[3]_inst_i_3_n_0 ;
  wire \display_number_OBUF[3]_inst_i_4_n_0 ;
  wire \display_number_OBUF[3]_inst_i_5_n_0 ;
  wire \display_number_OBUF[4]_inst_i_4_n_0 ;
  wire \display_number_OBUF[4]_inst_i_5_n_0 ;
  wire \display_number_OBUF[6]_inst_i_2_n_0 ;
  wire \display_number_OBUF[6]_inst_i_3_n_0 ;
  wire \display_number_OBUF[6]_inst_i_4_n_0 ;
  wire \display_number_OBUF[6]_inst_i_5_n_0 ;
  wire \display_number_OBUF[7]_inst_i_4_0 ;
  wire \display_number_OBUF[7]_inst_i_4_1 ;
  wire \displays.display_reg[0] ;
  wire \displays.display_reg[0]_0 ;
  wire \displays.display_reg[0]_1 ;
  wire \displays.display_reg[0]_2 ;
  wire \displays.display_reg[0]_3 ;
  wire \displays.display_reg[1] ;
  wire \displays.display_reg[1]_0 ;
  wire \displays.display_reg[1]_1 ;
  wire error_OBUF;
  wire g0_b0__0_0;
  wire g0_b0__0_1;
  wire g0_b0__0_2;
  wire g0_b0__0_i_6_n_0;
  wire g0_b0__0_n_0;
  wire g0_b0__1_0;
  wire g0_b0__1_i_11_n_0;
  wire g0_b0__1_i_12_n_0;
  wire g0_b0__1_i_13_n_0;
  wire g0_b0__1_i_1_n_0;
  wire g0_b0__1_i_2_n_0;
  wire g0_b0__1_i_5_n_0;
  wire g0_b0__1_i_6_n_0;
  wire g0_b0__1_i_9_n_0;
  wire g0_b0__1_n_0;
  wire g0_b0__2_i_3_0;
  wire g0_b0__2_i_6_n_0;
  wire g0_b0__2_n_0;
  wire g0_b0__4_i_1_n_0;
  wire g0_b0__4_i_2_n_0;
  wire g0_b0__4_i_3_n_0;
  wire g0_b0__4_i_4_n_0;
  wire g0_b0__4_i_5_n_0;
  wire g0_b0__4_n_0;
  wire g0_b0__5_n_0;
  wire g0_b0_i_2_n_0;
  wire g0_b0_i_6_n_0;
  wire g0_b0_i_7_n_0;
  wire g0_b0_i_9_n_0;
  wire g0_b0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1__1_n_0;
  wire g0_b1__2_n_0;
  wire g0_b1__4_n_0;
  wire g0_b1__5_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2__1_n_0;
  wire g0_b2__2_n_0;
  wire g0_b2__3_n_0;
  wire g0_b2__4_n_0;
  wire g0_b2__5_i_1_n_0;
  wire g0_b2__5_i_2_n_0;
  wire g0_b2__5_i_3_n_0;
  wire g0_b2__5_i_4_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3__1_n_0;
  wire g0_b3__2_n_0;
  wire g0_b3__3_n_0;
  wire g0_b3__4_n_0;
  wire g0_b3__5_n_0;
  wire g0_b3__6_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4__1_n_0;
  wire g0_b4__2_n_0;
  wire g0_b4__4_n_0;
  wire g0_b4__5_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5__1_n_0;
  wire g0_b5__2_n_0;
  wire g0_b5__3_n_0;
  wire g0_b5__4_n_0;
  wire g0_b5__5_i_1_n_0;
  wire g0_b5__5_i_2_n_0;
  wire g0_b5__5_i_3_n_0;
  wire g0_b5__5_i_4_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6__1_n_0;
  wire g0_b6__2_n_0;
  wire g0_b6__3_n_0;
  wire g0_b6__4_n_0;
  wire g0_b6__5_n_0;
  wire g0_b6__6_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7__1_n_0;
  wire g0_b7__3_n_0;
  wire g0_b7_n_0;
  wire [1:0]next_state;
  wire [4:0]sel;
  wire [2:0]sreg;
  wire [2:0]sreg_0;
  wire [3:0]to_BCD_7segm2;
  wire [4:0]to_BCD_7segm4;
  wire [5:0]to_BCD_7segm5;
  wire [0:0]to_BCD_7segm6;
  wire [4:0]to_BCD_Decod;
  wire [2:0]\NLW_coste_rest_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[15]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[23]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[27]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_coste_rest_reg[31]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[3]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_coste_rest_reg[3]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_coste_rest_reg[7]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \LIGHT_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(LIGHT_OBUF[9]));
  LUT6 #(
    .INIT(64'h1010001010101010)) 
    \LIGHT_OBUF[12]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\LIGHT_OBUF[12]_inst_i_2_n_0 ),
        .I4(\LIGHT_OBUF[12]_inst_i_3_n_0 ),
        .I5(\LIGHT_OBUF[12]_inst_i_4_n_0 ),
        .O(LIGHT_OBUF[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \LIGHT_OBUF[12]_inst_i_2 
       (.I0(\LIGHT_OBUF[14]_inst_i_2_n_0 ),
        .I1(\LIGHT_OBUF[12]_inst_i_5_n_0 ),
        .I2(\coste_rest_reg_n_0_[29] ),
        .I3(\coste_rest_reg_n_0_[3] ),
        .I4(\LIGHT_OBUF[12]_inst_i_6_n_0 ),
        .O(\LIGHT_OBUF[12]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFDFFBFF6)) 
    \LIGHT_OBUF[12]_inst_i_3 
       (.I0(\coste_rest_reg[6]_P_0 ),
        .I1(\coste_rest[7]_i_4_n_0 ),
        .I2(\LIGHT_OBUF[12]_inst_i_7_n_0 ),
        .I3(\coste_rest[7]_i_3_n_0 ),
        .I4(\LIGHT_OBUF[12]_inst_i_8_n_0 ),
        .O(\LIGHT_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \LIGHT_OBUF[12]_inst_i_4 
       (.I0(\LIGHT_OBUF[13]_inst_i_4_n_0 ),
        .I1(\LIGHT_OBUF[12]_inst_i_5_n_0 ),
        .I2(\LIGHT_OBUF[12]_inst_i_9_n_0 ),
        .I3(\LIGHT_OBUF[13]_inst_i_3_n_0 ),
        .I4(\LIGHT_OBUF[14]_inst_i_2_n_0 ),
        .O(\LIGHT_OBUF[12]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LIGHT_OBUF[12]_inst_i_5 
       (.I0(\coste_rest_reg_n_0_[23] ),
        .I1(\coste_rest_reg_n_0_[31] ),
        .I2(\coste_rest_reg_n_0_[30] ),
        .I3(\coste_rest_reg_n_0_[24] ),
        .O(\LIGHT_OBUF[12]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LIGHT_OBUF[12]_inst_i_6 
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(\coste_rest_reg_n_0_[10] ),
        .I2(\coste_rest_reg_n_0_[8] ),
        .I3(\coste_rest_reg_n_0_[9] ),
        .O(\LIGHT_OBUF[12]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \LIGHT_OBUF[12]_inst_i_7 
       (.I0(\coste_rest_reg[1]_P_n_0 ),
        .I1(\coste_rest_reg[1]_LDC_n_0 ),
        .I2(\coste_rest_reg[1]_C_n_0 ),
        .O(\LIGHT_OBUF[12]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \LIGHT_OBUF[12]_inst_i_8 
       (.I0(\coste_rest_reg[2]_P_n_0 ),
        .I1(\coste_rest_reg[2]_LDC_n_0 ),
        .I2(\coste_rest_reg[2]_C_n_0 ),
        .O(\LIGHT_OBUF[12]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LIGHT_OBUF[12]_inst_i_9 
       (.I0(\coste_rest_reg_n_0_[29] ),
        .I1(\coste_rest_reg_n_0_[3] ),
        .I2(\coste_rest_reg_n_0_[9] ),
        .I3(\coste_rest_reg_n_0_[8] ),
        .I4(\coste_rest_reg_n_0_[10] ),
        .I5(\coste_rest_reg_n_0_[7] ),
        .O(\LIGHT_OBUF[12]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA08AA)) 
    \LIGHT_OBUF[13]_inst_i_1 
       (.I0(\current_state_reg[2]_1 ),
        .I1(\LIGHT_OBUF[13]_inst_i_3_n_0 ),
        .I2(\LIGHT_OBUF[13]_inst_i_4_n_0 ),
        .I3(\LIGHT_OBUF[12]_inst_i_2_n_0 ),
        .I4(\LIGHT_OBUF[12]_inst_i_3_n_0 ),
        .O(LIGHT_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \LIGHT_OBUF[13]_inst_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\current_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LIGHT_OBUF[13]_inst_i_3 
       (.I0(\LIGHT_OBUF[12]_inst_i_5_n_0 ),
        .I1(\LIGHT_OBUF[13]_inst_i_5_n_0 ),
        .I2(\coste_rest_reg_n_0_[3] ),
        .I3(\coste_rest_reg_n_0_[29] ),
        .I4(\LIGHT_OBUF[12]_inst_i_8_n_0 ),
        .I5(\LIGHT_OBUF[13]_inst_i_6_n_0 ),
        .O(\LIGHT_OBUF[13]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFF7E)) 
    \LIGHT_OBUF[13]_inst_i_4 
       (.I0(\LIGHT_OBUF[12]_inst_i_7_n_0 ),
        .I1(\coste_rest[7]_i_3_n_0 ),
        .I2(\coste_rest[7]_i_4_n_0 ),
        .I3(\coste_rest_reg[6]_P_0 ),
        .I4(\LIGHT_OBUF[12]_inst_i_8_n_0 ),
        .O(\LIGHT_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFE)) 
    \LIGHT_OBUF[13]_inst_i_5 
       (.I0(\coste_rest_reg_n_0_[9] ),
        .I1(\coste_rest_reg_n_0_[8] ),
        .I2(\coste_rest_reg_n_0_[10] ),
        .I3(\coste_rest_reg_n_0_[7] ),
        .I4(\coste_rest[7]_i_4_n_0 ),
        .I5(\coste_rest_reg[6]_P_0 ),
        .O(\LIGHT_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    \LIGHT_OBUF[13]_inst_i_6 
       (.I0(\coste_rest_reg[5]_C_n_0 ),
        .I1(\coste_rest_reg[5]_LDC_n_0 ),
        .I2(\coste_rest_reg[5]_P_n_0 ),
        .I3(\coste_rest_reg[1]_C_n_0 ),
        .I4(\coste_rest_reg[1]_LDC_n_0 ),
        .I5(\coste_rest_reg[1]_P_n_0 ),
        .O(\LIGHT_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F02000F0F0)) 
    \LIGHT_OBUF[14]_inst_i_1 
       (.I0(\LIGHT_OBUF[14]_inst_i_2_n_0 ),
        .I1(\LIGHT_OBUF[13]_inst_i_3_n_0 ),
        .I2(\current_state_reg[2]_1 ),
        .I3(\LIGHT_OBUF[13]_inst_i_4_n_0 ),
        .I4(\LIGHT_OBUF[12]_inst_i_2_n_0 ),
        .I5(\LIGHT_OBUF[12]_inst_i_3_n_0 ),
        .O(LIGHT_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \LIGHT_OBUF[14]_inst_i_2 
       (.I0(\LIGHT_OBUF[14]_inst_i_3_n_0 ),
        .I1(\coste_rest_reg_n_0_[14] ),
        .I2(\coste_rest_reg_n_0_[15] ),
        .I3(\coste_rest_reg_n_0_[13] ),
        .I4(\coste_rest_reg_n_0_[17] ),
        .I5(\LIGHT_OBUF[14]_inst_i_4_n_0 ),
        .O(\LIGHT_OBUF[14]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LIGHT_OBUF[14]_inst_i_3 
       (.I0(\coste_rest_reg_n_0_[11] ),
        .I1(\coste_rest_reg_n_0_[12] ),
        .I2(\coste_rest_reg_n_0_[16] ),
        .I3(\coste_rest_reg_n_0_[18] ),
        .O(\LIGHT_OBUF[14]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LIGHT_OBUF[14]_inst_i_4 
       (.I0(\coste_rest_reg_n_0_[28] ),
        .I1(\coste_rest_reg_n_0_[27] ),
        .I2(\coste_rest_reg_n_0_[26] ),
        .I3(\coste_rest_reg_n_0_[25] ),
        .I4(\LIGHT_OBUF[14]_inst_i_5_n_0 ),
        .O(\LIGHT_OBUF[14]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LIGHT_OBUF[14]_inst_i_5 
       (.I0(\coste_rest_reg_n_0_[20] ),
        .I1(\coste_rest_reg_n_0_[21] ),
        .I2(\coste_rest_reg_n_0_[19] ),
        .I3(\coste_rest_reg_n_0_[22] ),
        .O(\LIGHT_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000D0000)) 
    \LIGHT_OBUF[15]_inst_i_1 
       (.I0(\LIGHT_OBUF[14]_inst_i_2_n_0 ),
        .I1(\LIGHT_OBUF[13]_inst_i_3_n_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\LIGHT_OBUF[15]_inst_i_2_n_0 ),
        .O(LIGHT_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \LIGHT_OBUF[15]_inst_i_2 
       (.I0(\LIGHT_OBUF[12]_inst_i_6_n_0 ),
        .I1(\coste_rest_reg_n_0_[3] ),
        .I2(\coste_rest_reg_n_0_[29] ),
        .I3(\LIGHT_OBUF[12]_inst_i_5_n_0 ),
        .I4(\LIGHT_OBUF[14]_inst_i_2_n_0 ),
        .I5(\LIGHT_OBUF[13]_inst_i_4_n_0 ),
        .O(\LIGHT_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \LIGHT_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(LIGHT_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \LIGHT_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(LIGHT_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \LIGHT_OBUF[3]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(LIGHT_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LIGHT_OBUF[5]_inst_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(LIGHT_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LIGHT_OBUF[6]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(LIGHT_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LIGHT_OBUF[7]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(error_OBUF));
  LUT4 #(
    .INIT(16'h0100)) 
    carac10__0_carry__0_i_1
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\coste_rest_reg[7]_1 ));
  LUT4 #(
    .INIT(16'hB8FF)) 
    carac10__0_carry__0_i_2
       (.I0(\coste_rest_reg[6]_P_n_0 ),
        .I1(\coste_rest_reg[6]_LDC_n_0 ),
        .I2(\coste_rest_reg[6]_C_n_0 ),
        .I3(\coste_rest_reg[7]_1 ),
        .O(\coste_rest_reg[6]_P_1 ));
  LUT4 #(
    .INIT(16'h57F7)) 
    carac10__0_carry_i_1
       (.I0(\coste_rest_reg[7]_1 ),
        .I1(\coste_rest_reg[5]_C_n_0 ),
        .I2(\coste_rest_reg[5]_LDC_n_0 ),
        .I3(\coste_rest_reg[5]_P_n_0 ),
        .O(\coste_rest_reg[5]_C_0 [1]));
  LUT4 #(
    .INIT(16'h0010)) 
    carac10__0_carry_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg_n_0_[3] ),
        .O(\coste_rest_reg[5]_C_0 [0]));
  LUT6 #(
    .INIT(64'hFFFFFFCFFFFFFF9F)) 
    carac10__0_carry_i_3
       (.I0(\coste_rest[7]_i_3_n_0 ),
        .I1(\coste_rest_reg[6]_P_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\coste_rest_reg_n_0_[7] ),
        .O(\current_state_reg[2]_2 [3]));
  LUT5 #(
    .INIT(32'h01000200)) 
    carac10__0_carry_i_4
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\coste_rest[7]_i_3_n_0 ),
        .O(\current_state_reg[2]_2 [2]));
  LUT6 #(
    .INIT(64'h0000001010100010)) 
    carac10__0_carry_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg[4]_C_n_0 ),
        .I4(\coste_rest_reg[4]_LDC_n_0 ),
        .I5(\coste_rest_reg[4]_P_n_0 ),
        .O(\current_state_reg[2]_2 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB4FF)) 
    carac10__0_carry_i_6
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(to_BCD_Decod[2]),
        .I2(\coste_rest_reg_n_0_[3] ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\current_state_reg[2]_2 [0]));
  LUT4 #(
    .INIT(16'h0100)) 
    carac21_carry__0_i_1
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h0100)) 
    carac21_carry__0_i_2
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFB8FF)) 
    carac21_carry__0_i_3
       (.I0(\coste_rest_reg[4]_P_n_0 ),
        .I1(\coste_rest_reg[4]_LDC_n_0 ),
        .I2(\coste_rest_reg[4]_C_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(to_BCD_Decod[4]));
  LUT4 #(
    .INIT(16'h0100)) 
    carac21_carry__0_i_4
       (.I0(\coste_rest_reg_n_0_[7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\coste_rest_reg[7]_3 [3]));
  LUT5 #(
    .INIT(32'hFFFBFFF7)) 
    carac21_carry__0_i_5
       (.I0(\coste_rest_reg[6]_P_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\coste_rest_reg_n_0_[7] ),
        .O(\coste_rest_reg[7]_3 [2]));
  LUT5 #(
    .INIT(32'hFFFBFFF7)) 
    carac21_carry__0_i_6
       (.I0(\coste_rest[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\coste_rest_reg_n_0_[7] ),
        .O(\coste_rest_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'h0000001010100010)) 
    carac21_carry__0_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg[4]_C_n_0 ),
        .I4(\coste_rest_reg[4]_LDC_n_0 ),
        .I5(\coste_rest_reg[4]_P_n_0 ),
        .O(\coste_rest_reg[7]_3 [0]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    carac21_carry_i_1
       (.I0(\coste_rest_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(to_BCD_Decod[3]));
  LUT6 #(
    .INIT(64'hBBBAAABAEEEEEEEE)) 
    carac21_carry_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\coste_rest_reg[2]_C_n_0 ),
        .I3(\coste_rest_reg[2]_LDC_n_0 ),
        .I4(\coste_rest_reg[2]_P_n_0 ),
        .I5(Q[2]),
        .O(to_BCD_Decod[2]));
  LUT6 #(
    .INIT(64'hFFFFFFB8FF0000FF)) 
    carac21_carry_i_3
       (.I0(\coste_rest_reg[1]_P_n_0 ),
        .I1(\coste_rest_reg[1]_LDC_n_0 ),
        .I2(\coste_rest_reg[1]_C_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(to_BCD_Decod[1]));
  LUT3 #(
    .INIT(8'h8D)) 
    carac21_carry_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(to_BCD_Decod[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    carac21_carry_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg_n_0_[3] ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    carac21_carry_i_6
       (.I0(to_BCD_Decod[2]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\coste_rest_reg_n_0_[7] ),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h1414141616161416)) 
    carac21_carry_i_7
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\coste_rest_reg[1]_C_n_0 ),
        .I4(\coste_rest_reg[1]_LDC_n_0 ),
        .I5(\coste_rest_reg[1]_P_n_0 ),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h3A)) 
    carac21_carry_i_8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[11]_i_2 
       (.I0(\coste_rest_reg_n_0_[11] ),
        .O(\coste_rest[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[11]_i_3 
       (.I0(\coste_rest_reg_n_0_[10] ),
        .O(\coste_rest[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[11]_i_4 
       (.I0(\coste_rest_reg_n_0_[9] ),
        .O(\coste_rest[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[11]_i_5 
       (.I0(\coste_rest_reg_n_0_[8] ),
        .O(\coste_rest[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[15]_i_2 
       (.I0(\coste_rest_reg_n_0_[15] ),
        .O(\coste_rest[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[15]_i_3 
       (.I0(\coste_rest_reg_n_0_[14] ),
        .O(\coste_rest[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[15]_i_4 
       (.I0(\coste_rest_reg_n_0_[13] ),
        .O(\coste_rest[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[15]_i_5 
       (.I0(\coste_rest_reg_n_0_[12] ),
        .O(\coste_rest[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[19]_i_2 
       (.I0(\coste_rest_reg_n_0_[19] ),
        .O(\coste_rest[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[19]_i_3 
       (.I0(\coste_rest_reg_n_0_[18] ),
        .O(\coste_rest[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[19]_i_4 
       (.I0(\coste_rest_reg_n_0_[17] ),
        .O(\coste_rest[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[19]_i_5 
       (.I0(\coste_rest_reg_n_0_[16] ),
        .O(\coste_rest[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[23]_i_2 
       (.I0(\coste_rest_reg_n_0_[23] ),
        .O(\coste_rest[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[23]_i_3 
       (.I0(\coste_rest_reg_n_0_[22] ),
        .O(\coste_rest[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[23]_i_4 
       (.I0(\coste_rest_reg_n_0_[21] ),
        .O(\coste_rest[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[23]_i_5 
       (.I0(\coste_rest_reg_n_0_[20] ),
        .O(\coste_rest[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[27]_i_2 
       (.I0(\coste_rest_reg_n_0_[27] ),
        .O(\coste_rest[27]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[27]_i_3 
       (.I0(\coste_rest_reg_n_0_[26] ),
        .O(\coste_rest[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[27]_i_4 
       (.I0(\coste_rest_reg_n_0_[25] ),
        .O(\coste_rest[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[27]_i_5 
       (.I0(\coste_rest_reg_n_0_[24] ),
        .O(\coste_rest[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \coste_rest[31]_i_1 
       (.I0(\coste_rest_reg[1]_P_0 ),
        .I1(\LIGHT_OBUF[12]_inst_i_4_n_0 ),
        .I2(\coste_rest_reg_n_0_[31] ),
        .O(coste_rest0));
  LUT2 #(
    .INIT(4'hB)) 
    \coste_rest[31]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\coste_rest[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[31]_i_4 
       (.I0(\coste_rest_reg_n_0_[31] ),
        .O(\coste_rest[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[31]_i_5 
       (.I0(\coste_rest_reg_n_0_[30] ),
        .O(\coste_rest[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[31]_i_6 
       (.I0(\coste_rest_reg_n_0_[29] ),
        .O(\coste_rest[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[31]_i_7 
       (.I0(\coste_rest_reg_n_0_[28] ),
        .O(\coste_rest[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \coste_rest[3]_i_2 
       (.I0(\coste_rest_reg[2]_P_n_0 ),
        .I1(\coste_rest_reg[2]_LDC_n_0 ),
        .I2(\coste_rest_reg[2]_C_n_0 ),
        .O(\coste_rest[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \coste_rest[3]_i_3 
       (.I0(\coste_rest_reg[1]_P_n_0 ),
        .I1(\coste_rest_reg[1]_LDC_n_0 ),
        .I2(\coste_rest_reg[1]_C_n_0 ),
        .O(\coste_rest[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[3]_i_4 
       (.I0(\coste_rest_reg_n_0_[3] ),
        .O(\coste_rest[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \coste_rest[3]_i_5 
       (.I0(\coste_rest_reg[2]_C_n_0 ),
        .I1(\coste_rest_reg[2]_LDC_n_0 ),
        .I2(\coste_rest_reg[2]_P_n_0 ),
        .O(\coste_rest[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \coste_rest[3]_i_6 
       (.I0(\coste_rest_reg[1]_C_n_0 ),
        .I1(\coste_rest_reg[1]_LDC_n_0 ),
        .I2(\coste_rest_reg[1]_P_n_0 ),
        .I3(coste_rest),
        .O(\coste_rest[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \coste_rest[7]_i_2 
       (.I0(\coste_rest_reg[6]_P_n_0 ),
        .I1(\coste_rest_reg[6]_LDC_n_0 ),
        .I2(\coste_rest_reg[6]_C_n_0 ),
        .O(\coste_rest_reg[6]_P_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \coste_rest[7]_i_3 
       (.I0(\coste_rest_reg[5]_P_n_0 ),
        .I1(\coste_rest_reg[5]_LDC_n_0 ),
        .I2(\coste_rest_reg[5]_C_n_0 ),
        .O(\coste_rest[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \coste_rest[7]_i_4 
       (.I0(\coste_rest_reg[4]_P_n_0 ),
        .I1(\coste_rest_reg[4]_LDC_n_0 ),
        .I2(\coste_rest_reg[4]_C_n_0 ),
        .O(\coste_rest[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \coste_rest[7]_i_5 
       (.I0(\coste_rest_reg_n_0_[7] ),
        .O(\coste_rest[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE2E2E2E2E21DE2E2)) 
    \coste_rest[7]_i_7 
       (.I0(\coste_rest_reg[5]_C_n_0 ),
        .I1(\coste_rest_reg[5]_LDC_n_0 ),
        .I2(\coste_rest_reg[5]_P_n_0 ),
        .I3(sreg[1]),
        .I4(sreg[2]),
        .I5(sreg[0]),
        .O(\coste_rest[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA5565)) 
    \coste_rest[7]_i_8 
       (.I0(\coste_rest[7]_i_4_n_0 ),
        .I1(sreg_0[0]),
        .I2(sreg_0[2]),
        .I3(sreg_0[1]),
        .I4(\coste_rest_reg[7]_5 ),
        .O(\coste_rest[7]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[11]_i_1_n_5 ),
        .Q(\coste_rest_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[11]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[11]_i_1 
       (.CI(\coste_rest_reg[7]_i_1_n_0 ),
        .CO({\coste_rest_reg[11]_i_1_n_0 ,\NLW_coste_rest_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[11] ,\coste_rest_reg_n_0_[10] ,\coste_rest_reg_n_0_[9] ,\coste_rest_reg_n_0_[8] }),
        .O({\coste_rest_reg[11]_i_1_n_4 ,\coste_rest_reg[11]_i_1_n_5 ,\coste_rest_reg[11]_i_1_n_6 ,\coste_rest_reg[11]_i_1_n_7 }),
        .S({\coste_rest[11]_i_2_n_0 ,\coste_rest[11]_i_3_n_0 ,\coste_rest[11]_i_4_n_0 ,\coste_rest[11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[15]_i_1_n_7 ),
        .Q(\coste_rest_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[15]_i_1_n_6 ),
        .Q(\coste_rest_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[15]_i_1_n_5 ),
        .Q(\coste_rest_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[15]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[15]_i_1 
       (.CI(\coste_rest_reg[11]_i_1_n_0 ),
        .CO({\coste_rest_reg[15]_i_1_n_0 ,\NLW_coste_rest_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[15] ,\coste_rest_reg_n_0_[14] ,\coste_rest_reg_n_0_[13] ,\coste_rest_reg_n_0_[12] }),
        .O({\coste_rest_reg[15]_i_1_n_4 ,\coste_rest_reg[15]_i_1_n_5 ,\coste_rest_reg[15]_i_1_n_6 ,\coste_rest_reg[15]_i_1_n_7 }),
        .S({\coste_rest[15]_i_2_n_0 ,\coste_rest[15]_i_3_n_0 ,\coste_rest[15]_i_4_n_0 ,\coste_rest[15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[19]_i_1_n_7 ),
        .Q(\coste_rest_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[19]_i_1_n_6 ),
        .Q(\coste_rest_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[19]_i_1_n_5 ),
        .Q(\coste_rest_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[19]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[19]_i_1 
       (.CI(\coste_rest_reg[15]_i_1_n_0 ),
        .CO({\coste_rest_reg[19]_i_1_n_0 ,\NLW_coste_rest_reg[19]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[19] ,\coste_rest_reg_n_0_[18] ,\coste_rest_reg_n_0_[17] ,\coste_rest_reg_n_0_[16] }),
        .O({\coste_rest_reg[19]_i_1_n_4 ,\coste_rest_reg[19]_i_1_n_5 ,\coste_rest_reg[19]_i_1_n_6 ,\coste_rest_reg[19]_i_1_n_7 }),
        .S({\coste_rest[19]_i_2_n_0 ,\coste_rest[19]_i_3_n_0 ,\coste_rest[19]_i_4_n_0 ,\coste_rest[19]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[1]_C 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest_reg[6]_P_2 ),
        .D(\coste_rest_reg[3]_i_1_n_6 ),
        .Q(\coste_rest_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[1]_LDC 
       (.CLR(\coste_rest_reg[6]_P_2 ),
        .D(1'b1),
        .G(\coste_rest_reg[6]_C_0 ),
        .GE(1'b1),
        .Q(\coste_rest_reg[1]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \coste_rest_reg[1]_P 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .D(\coste_rest_reg[3]_i_1_n_6 ),
        .PRE(\coste_rest_reg[6]_C_0 ),
        .Q(\coste_rest_reg[1]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[23]_i_1_n_7 ),
        .Q(\coste_rest_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[23]_i_1_n_6 ),
        .Q(\coste_rest_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[23]_i_1_n_5 ),
        .Q(\coste_rest_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[23]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[23]_i_1 
       (.CI(\coste_rest_reg[19]_i_1_n_0 ),
        .CO({\coste_rest_reg[23]_i_1_n_0 ,\NLW_coste_rest_reg[23]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[23] ,\coste_rest_reg_n_0_[22] ,\coste_rest_reg_n_0_[21] ,\coste_rest_reg_n_0_[20] }),
        .O({\coste_rest_reg[23]_i_1_n_4 ,\coste_rest_reg[23]_i_1_n_5 ,\coste_rest_reg[23]_i_1_n_6 ,\coste_rest_reg[23]_i_1_n_7 }),
        .S({\coste_rest[23]_i_2_n_0 ,\coste_rest[23]_i_3_n_0 ,\coste_rest[23]_i_4_n_0 ,\coste_rest[23]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[27]_i_1_n_7 ),
        .Q(\coste_rest_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[27]_i_1_n_6 ),
        .Q(\coste_rest_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[27]_i_1_n_5 ),
        .Q(\coste_rest_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[27]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[27]_i_1 
       (.CI(\coste_rest_reg[23]_i_1_n_0 ),
        .CO({\coste_rest_reg[27]_i_1_n_0 ,\NLW_coste_rest_reg[27]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[27] ,\coste_rest_reg_n_0_[26] ,\coste_rest_reg_n_0_[25] ,\coste_rest_reg_n_0_[24] }),
        .O({\coste_rest_reg[27]_i_1_n_4 ,\coste_rest_reg[27]_i_1_n_5 ,\coste_rest_reg[27]_i_1_n_6 ,\coste_rest_reg[27]_i_1_n_7 }),
        .S({\coste_rest[27]_i_2_n_0 ,\coste_rest[27]_i_3_n_0 ,\coste_rest[27]_i_4_n_0 ,\coste_rest[27]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[31]_i_2_n_7 ),
        .Q(\coste_rest_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[31]_i_2_n_6 ),
        .Q(\coste_rest_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[2]_C 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest_reg[4]_P_0 ),
        .D(\coste_rest_reg[3]_i_1_n_5 ),
        .Q(\coste_rest_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[2]_LDC 
       (.CLR(\coste_rest_reg[4]_P_0 ),
        .D(1'b1),
        .G(\coste_rest_reg[4]_C_0 ),
        .GE(1'b1),
        .Q(\coste_rest_reg[2]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \coste_rest_reg[2]_P 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .D(\coste_rest_reg[3]_i_1_n_5 ),
        .PRE(\coste_rest_reg[4]_C_0 ),
        .Q(\coste_rest_reg[2]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[31]_i_2_n_5 ),
        .Q(\coste_rest_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[31]_i_2_n_4 ),
        .Q(\coste_rest_reg_n_0_[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[31]_i_2 
       (.CI(\coste_rest_reg[27]_i_1_n_0 ),
        .CO(\NLW_coste_rest_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\coste_rest_reg_n_0_[30] ,\coste_rest_reg_n_0_[29] ,\coste_rest_reg_n_0_[28] }),
        .O({\coste_rest_reg[31]_i_2_n_4 ,\coste_rest_reg[31]_i_2_n_5 ,\coste_rest_reg[31]_i_2_n_6 ,\coste_rest_reg[31]_i_2_n_7 }),
        .S({\coste_rest[31]_i_4_n_0 ,\coste_rest[31]_i_5_n_0 ,\coste_rest[31]_i_6_n_0 ,\coste_rest[31]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[3]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 \coste_rest_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\coste_rest_reg[3]_i_1_n_0 ,\NLW_coste_rest_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[3] ,\coste_rest[3]_i_2_n_0 ,\coste_rest[3]_i_3_n_0 ,1'b0}),
        .O({\coste_rest_reg[3]_i_1_n_4 ,\coste_rest_reg[3]_i_1_n_5 ,\coste_rest_reg[3]_i_1_n_6 ,\NLW_coste_rest_reg[3]_i_1_O_UNCONNECTED [0]}),
        .S({\coste_rest[3]_i_4_n_0 ,\coste_rest[3]_i_5_n_0 ,\coste_rest[3]_i_6_n_0 ,1'b0}));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[4]_C 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest_reg[4]_C_0 ),
        .D(\coste_rest_reg[7]_i_1_n_7 ),
        .Q(\coste_rest_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[4]_LDC 
       (.CLR(\coste_rest_reg[4]_C_0 ),
        .D(1'b1),
        .G(\coste_rest_reg[4]_P_0 ),
        .GE(1'b1),
        .Q(\coste_rest_reg[4]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \coste_rest_reg[4]_P 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .D(\coste_rest_reg[7]_i_1_n_7 ),
        .PRE(\coste_rest_reg[4]_P_0 ),
        .Q(\coste_rest_reg[4]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[5]_C 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest_reg[5]_C_1 ),
        .D(\coste_rest_reg[7]_i_1_n_6 ),
        .Q(\coste_rest_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[5]_LDC 
       (.CLR(\coste_rest_reg[5]_C_1 ),
        .D(1'b1),
        .G(\coste_rest_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\coste_rest_reg[5]_LDC_n_0 ));
  LUT5 #(
    .INIT(32'hDDDDD0DD)) 
    \coste_rest_reg[5]_LDC_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(sreg[0]),
        .I3(sreg[2]),
        .I4(sreg[1]),
        .O(\coste_rest_reg[5]_LDC_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \coste_rest_reg[5]_P 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .D(\coste_rest_reg[7]_i_1_n_6 ),
        .PRE(\coste_rest_reg[5]_LDC_i_1_n_0 ),
        .Q(\coste_rest_reg[5]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[6]_C 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest_reg[6]_C_0 ),
        .D(\coste_rest_reg[7]_i_1_n_5 ),
        .Q(\coste_rest_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[6]_LDC 
       (.CLR(\coste_rest_reg[6]_C_0 ),
        .D(1'b1),
        .G(\coste_rest_reg[6]_P_2 ),
        .GE(1'b1),
        .Q(\coste_rest_reg[6]_LDC_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \coste_rest_reg[6]_P 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .D(\coste_rest_reg[7]_i_1_n_5 ),
        .PRE(\coste_rest_reg[6]_P_2 ),
        .Q(\coste_rest_reg[6]_P_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[7]_i_1_n_4 ),
        .Q(\coste_rest_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \coste_rest_reg[7]_i_1 
       (.CI(\coste_rest_reg[3]_i_1_n_0 ),
        .CO({\coste_rest_reg[7]_i_1_n_0 ,\NLW_coste_rest_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coste_rest_reg_n_0_[7] ,\coste_rest_reg[6]_P_0 ,\coste_rest[7]_i_3_n_0 ,\coste_rest[7]_i_4_n_0 }),
        .O({\coste_rest_reg[7]_i_1_n_4 ,\coste_rest_reg[7]_i_1_n_5 ,\coste_rest_reg[7]_i_1_n_6 ,\coste_rest_reg[7]_i_1_n_7 }),
        .S({\coste_rest[7]_i_5_n_0 ,\coste_rest_reg[7]_4 ,\coste_rest[7]_i_7_n_0 ,\coste_rest[7]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[11]_i_1_n_7 ),
        .Q(\coste_rest_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \coste_rest_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(coste_rest0),
        .CLR(\coste_rest[31]_i_3_n_0 ),
        .D(\coste_rest_reg[11]_i_1_n_6 ),
        .Q(\coste_rest_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h5553555555505555)) 
    \current_state[0]_i_1 
       (.I0(\LIGHT_OBUF[12]_inst_i_4_n_0 ),
        .I1(coste_rest),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\current_state_reg[0]_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEF000000E0)) 
    \current_state[1]_i_1 
       (.I0(coste_rest),
        .I1(\current_state_reg[1]_1 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\LIGHT_OBUF[12]_inst_i_4_n_0 ),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'hBFB0BFBF)) 
    \current_state[2]_i_1 
       (.I0(\current_state_reg[0]_1 ),
        .I1(\current_state_reg[0]_2 ),
        .I2(\current_state_reg[2]_1 ),
        .I3(\coste_rest_reg_n_0_[31] ),
        .I4(\LIGHT_OBUF[12]_inst_i_4_n_0 ),
        .O(\current_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_state[2]_i_3 
       (.I0(RESET_IBUF),
        .O(\current_state[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\current_state[2]_i_1_n_0 ),
        .CLR(\current_state[2]_i_3_n_0 ),
        .D(next_state[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\current_state[2]_i_1_n_0 ),
        .CLR(\current_state[2]_i_3_n_0 ),
        .D(next_state[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\current_state[2]_i_1_n_0 ),
        .CLR(\current_state[2]_i_3_n_0 ),
        .D(D),
        .Q(Q[2]));
  MUXF7 \display_number_OBUF[0]_inst_i_2 
       (.I0(g0_b0__2_n_0),
        .I1(g0_b0__5_n_0),
        .O(\displays.display_reg[0] ),
        .S(\display_number[3] [0]));
  MUXF8 \display_number_OBUF[0]_inst_i_3 
       (.I0(\display_number_OBUF[0]_inst_i_4_n_0 ),
        .I1(\display_number_OBUF[0]_inst_i_5_n_0 ),
        .O(\displays.display_reg[1] ),
        .S(\display_number[3] [1]));
  MUXF7 \display_number_OBUF[0]_inst_i_4 
       (.I0(g0_b0__4_n_0),
        .I1(g0_b0_n_0),
        .O(\display_number_OBUF[0]_inst_i_4_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[0]_inst_i_5 
       (.I0(g0_b0__0_n_0),
        .I1(g0_b0__1_n_0),
        .O(\display_number_OBUF[0]_inst_i_5_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[1]_inst_i_2 
       (.I0(g0_b1__2_n_0),
        .I1(g0_b1__5_n_0),
        .O(\displays.display_reg[0]_0 ),
        .S(\display_number[3] [0]));
  MUXF8 \display_number_OBUF[1]_inst_i_3 
       (.I0(\display_number_OBUF[1]_inst_i_4_n_0 ),
        .I1(\display_number_OBUF[1]_inst_i_5_n_0 ),
        .O(\displays.display_reg[1]_0 ),
        .S(\display_number[3] [1]));
  MUXF7 \display_number_OBUF[1]_inst_i_4 
       (.I0(g0_b1__4_n_0),
        .I1(g0_b1_n_0),
        .O(\display_number_OBUF[1]_inst_i_4_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[1]_inst_i_5 
       (.I0(g0_b1__0_n_0),
        .I1(g0_b1__1_n_0),
        .O(\display_number_OBUF[1]_inst_i_5_n_0 ),
        .S(\display_number[3] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_number_OBUF[3]_inst_i_1 
       (.I0(\display_number_OBUF[3]_inst_i_2_n_0 ),
        .I1(\display_number_OBUF[3]_inst_i_3_n_0 ),
        .I2(\display_number[3] [2]),
        .I3(\display_number_OBUF[3]_inst_i_4_n_0 ),
        .I4(\display_number[3] [1]),
        .I5(\display_number_OBUF[3]_inst_i_5_n_0 ),
        .O(display_number_OBUF[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \display_number_OBUF[3]_inst_i_2 
       (.I0(g0_b3__3_n_0),
        .I1(g0_b3__6_n_0),
        .I2(\display_number[3] [0]),
        .O(\display_number_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \display_number_OBUF[3]_inst_i_3 
       (.I0(g0_b3__2_n_0),
        .I1(g0_b3__5_n_0),
        .O(\display_number_OBUF[3]_inst_i_3_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[3]_inst_i_4 
       (.I0(g0_b3__0_n_0),
        .I1(g0_b3__1_n_0),
        .O(\display_number_OBUF[3]_inst_i_4_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[3]_inst_i_5 
       (.I0(g0_b3__4_n_0),
        .I1(g0_b3_n_0),
        .O(\display_number_OBUF[3]_inst_i_5_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[4]_inst_i_2 
       (.I0(g0_b4__2_n_0),
        .I1(g0_b4__5_n_0),
        .O(\displays.display_reg[0]_1 ),
        .S(\display_number[3] [0]));
  MUXF8 \display_number_OBUF[4]_inst_i_3 
       (.I0(\display_number_OBUF[4]_inst_i_4_n_0 ),
        .I1(\display_number_OBUF[4]_inst_i_5_n_0 ),
        .O(\displays.display_reg[1]_1 ),
        .S(\display_number[3] [1]));
  MUXF7 \display_number_OBUF[4]_inst_i_4 
       (.I0(g0_b4__4_n_0),
        .I1(g0_b4_n_0),
        .O(\display_number_OBUF[4]_inst_i_4_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[4]_inst_i_5 
       (.I0(g0_b4__0_n_0),
        .I1(g0_b4__1_n_0),
        .O(\display_number_OBUF[4]_inst_i_5_n_0 ),
        .S(\display_number[3] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \display_number_OBUF[6]_inst_i_1 
       (.I0(\display_number_OBUF[6]_inst_i_2_n_0 ),
        .I1(\display_number_OBUF[6]_inst_i_3_n_0 ),
        .I2(\display_number[3] [2]),
        .I3(\display_number_OBUF[6]_inst_i_4_n_0 ),
        .I4(\display_number[3] [1]),
        .I5(\display_number_OBUF[6]_inst_i_5_n_0 ),
        .O(display_number_OBUF[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \display_number_OBUF[6]_inst_i_2 
       (.I0(g0_b6__3_n_0),
        .I1(g0_b6__6_n_0),
        .I2(\display_number[3] [0]),
        .O(\display_number_OBUF[6]_inst_i_2_n_0 ));
  MUXF7 \display_number_OBUF[6]_inst_i_3 
       (.I0(g0_b6__2_n_0),
        .I1(g0_b6__5_n_0),
        .O(\display_number_OBUF[6]_inst_i_3_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[6]_inst_i_4 
       (.I0(g0_b6__0_n_0),
        .I1(g0_b6__1_n_0),
        .O(\display_number_OBUF[6]_inst_i_4_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[6]_inst_i_5 
       (.I0(g0_b6__4_n_0),
        .I1(g0_b6_n_0),
        .O(\display_number_OBUF[6]_inst_i_5_n_0 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[7]_inst_i_4 
       (.I0(g0_b7__0_n_0),
        .I1(g0_b7__1_n_0),
        .O(\displays.display_reg[0]_3 ),
        .S(\display_number[3] [0]));
  MUXF7 \display_number_OBUF[7]_inst_i_5 
       (.I0(g0_b7__3_n_0),
        .I1(g0_b7_n_0),
        .O(\displays.display_reg[0]_2 ),
        .S(\display_number[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFF6E8BE2812)) 
    g0_b0
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF6E8BE2812)) 
    g0_b0__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b0__0_n_0));
  LUT5 #(
    .INIT(32'hDF00DFDF)) 
    g0_b0__0_i_1
       (.I0(g0_b0__0_i_6_n_0),
        .I1(\current_state_reg[2]_0 ),
        .I2(g0_b0_i_7_n_0),
        .I3(g0_b0__1_0),
        .I4(\coste_rest_reg[7]_0 ),
        .O(to_BCD_7segm2[0]));
  LUT5 #(
    .INIT(32'h74747444)) 
    g0_b0__0_i_2
       (.I0(g0_b0__0_2),
        .I1(\coste_rest_reg[7]_0 ),
        .I2(\coste_rest_reg[7]_2 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(to_BCD_7segm2[1]));
  LUT5 #(
    .INIT(32'hFF009F9F)) 
    g0_b0__0_i_3
       (.I0(g0_b0__0_i_6_n_0),
        .I1(to_BCD_Decod[2]),
        .I2(sel[3]),
        .I3(g0_b0__0_0),
        .I4(\coste_rest_reg[7]_0 ),
        .O(to_BCD_7segm2[2]));
  LUT6 #(
    .INIT(64'hFFFF740074007400)) 
    g0_b0__0_i_4
       (.I0(\current_state_reg[2]_0 ),
        .I1(g0_b0__0_i_6_n_0),
        .I2(to_BCD_Decod[2]),
        .I3(g0_b0_i_7_n_0),
        .I4(g0_b0__0_1),
        .I5(\coste_rest_reg[7]_0 ),
        .O(to_BCD_7segm2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAA888A8A)) 
    g0_b0__0_i_5
       (.I0(g0_b0_i_7_n_0),
        .I1(to_BCD_Decod[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(to_BCD_7segm6));
  LUT3 #(
    .INIT(8'h3A)) 
    g0_b0__0_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(g0_b0__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF6E8BE2812)) 
    g0_b0__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b0__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    g0_b0__1_i_1
       (.I0(g0_b0__1_i_6_n_0),
        .I1(O[0]),
        .I2(\coste_rest_reg[7]_0 ),
        .O(g0_b0__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001010100010)) 
    g0_b0__1_i_11
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg[6]_C_n_0 ),
        .I4(\coste_rest_reg[6]_LDC_n_0 ),
        .I5(\coste_rest_reg[6]_P_n_0 ),
        .O(g0_b0__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000001010100010)) 
    g0_b0__1_i_12
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg[5]_C_n_0 ),
        .I4(\coste_rest_reg[5]_LDC_n_0 ),
        .I5(\coste_rest_reg[5]_P_n_0 ),
        .O(g0_b0__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000001010100010)) 
    g0_b0__1_i_13
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\coste_rest_reg[4]_C_n_0 ),
        .I4(\coste_rest_reg[4]_LDC_n_0 ),
        .I5(\coste_rest_reg[4]_P_n_0 ),
        .O(g0_b0__1_i_13_n_0));
  LUT6 #(
    .INIT(64'hF0FFFFF090909090)) 
    g0_b0__1_i_2
       (.I0(g0_b0__0_i_6_n_0),
        .I1(to_BCD_Decod[2]),
        .I2(sel[4]),
        .I3(O[1]),
        .I4(g0_b0__1_0),
        .I5(\coste_rest_reg[7]_0 ),
        .O(g0_b0__1_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hAA888A8A)) 
    g0_b0__1_i_5
       (.I0(g0_b0__1_i_9_n_0),
        .I1(\current_state_reg[2]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(g0_b0__1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h3A00FFFF)) 
    g0_b0__1_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\current_state_reg[2]_0 ),
        .I4(g0_b0_i_7_n_0),
        .O(g0_b0__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    g0_b0__1_i_9
       (.I0(g0_b0__1_i_11_n_0),
        .I1(\coste_rest_reg[7]_1 ),
        .I2(\coste_rest_reg[5]_C_0 [0]),
        .I3(to_BCD_Decod[2]),
        .I4(g0_b0__1_i_12_n_0),
        .I5(g0_b0__1_i_13_n_0),
        .O(g0_b0__1_i_9_n_0));
  LUT6 #(
    .INIT(64'hF331FDF3D13111D3)) 
    g0_b0__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b0__2_n_0));
  LUT6 #(
    .INIT(64'h20002020AAAAAAAA)) 
    g0_b0__2_i_1
       (.I0(\coste_rest_reg[7]_1 ),
        .I1(\coste_rest[7]_i_4_n_0 ),
        .I2(\coste_rest_reg[5]_C_0 [0]),
        .I3(\current_state_reg[2]_0 ),
        .I4(to_BCD_Decod[2]),
        .I5(g0_b0__2_i_6_n_0),
        .O(\coste_rest_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000BEFF)) 
    g0_b0__2_i_2
       (.I0(LIGHT_OBUF[9]),
        .I1(\current_state_reg[2]_0 ),
        .I2(to_BCD_Decod[2]),
        .I3(g0_b0_i_7_n_0),
        .I4(\coste_rest_reg[7]_0 ),
        .O(to_BCD_7segm4[0]));
  LUT3 #(
    .INIT(8'h8A)) 
    g0_b0__2_i_3
       (.I0(g0_b0_i_7_n_0),
        .I1(to_BCD_Decod[2]),
        .I2(\current_state_reg[2]_0 ),
        .O(\coste_rest_reg[7]_2 ));
  LUT5 #(
    .INIT(32'hFFFBAAAA)) 
    g0_b0__2_i_4
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_Decod[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(to_BCD_7segm6),
        .O(to_BCD_7segm4[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hA222AA2A)) 
    g0_b0__2_i_5
       (.I0(g0_b0_i_7_n_0),
        .I1(\current_state_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(to_BCD_7segm4[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFF8F)) 
    g0_b0__2_i_6
       (.I0(\coste_rest[7]_i_3_n_0 ),
        .I1(\coste_rest_reg[6]_P_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(g0_b0__2_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDE)) 
    g0_b0__3
       (.I0(g0_b0_i_6_n_0),
        .I1(to_BCD_7segm5[5]),
        .I2(to_BCD_7segm6),
        .O(\current_state_reg[2]_5 ));
  LUT6 #(
    .INIT(64'hF7FDFDD5557D35D1)) 
    g0_b0__4
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b0__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    g0_b0__4_i_1
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0__1_i_9_n_0),
        .O(g0_b0__4_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    g0_b0__4_i_2
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(sel[4]),
        .O(g0_b0__4_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00EF)) 
    g0_b0__4_i_3
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(to_BCD_Decod[2]),
        .I3(g0_b0__4_i_1_n_0),
        .O(g0_b0__4_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFDDDF5D5)) 
    g0_b0__4_i_4
       (.I0(g0_b0_i_7_n_0),
        .I1(\current_state_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(g0_b0__4_i_4_n_0));
  LUT5 #(
    .INIT(32'hBAAABFAA)) 
    g0_b0__4_i_5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0__0_i_6_n_0),
        .I2(\current_state_reg[2]_0 ),
        .I3(g0_b0_i_7_n_0),
        .I4(to_BCD_Decod[2]),
        .O(g0_b0__4_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEE0EF00)) 
    g0_b0__5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b0__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF8DFFFF)) 
    g0_b0__5_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(to_BCD_Decod[2]),
        .I4(sel[4]),
        .O(to_BCD_7segm5[0]));
  LUT5 #(
    .INIT(32'h00D5D5D5)) 
    g0_b0_i_1
       (.I0(to_BCD_7segm6),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\coste_rest_reg[7]_0 ),
        .I4(CO),
        .O(sel[0]));
  LUT6 #(
    .INIT(64'hAAA880808080AAA8)) 
    g0_b0_i_2
       (.I0(g0_b0_i_7_n_0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\current_state_reg[2]_0 ),
        .I5(to_BCD_Decod[2]),
        .O(g0_b0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000555D)) 
    g0_b0_i_3
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(to_BCD_Decod[2]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\coste_rest_reg[7]_0 ),
        .O(sel[2]));
  LUT5 #(
    .INIT(32'hAA8080AA)) 
    g0_b0_i_4
       (.I0(g0_b0_i_7_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(to_BCD_Decod[2]),
        .I4(\current_state_reg[2]_0 ),
        .O(sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    g0_b0_i_5
       (.I0(g0_b0_i_7_n_0),
        .I1(\current_state_reg[2]_0 ),
        .O(sel[4]));
  LUT2 #(
    .INIT(4'h1)) 
    g0_b0_i_6
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(\coste_rest_reg[7]_0 ),
        .O(g0_b0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFF8000FFFF0000)) 
    g0_b0_i_7
       (.I0(\coste_rest_reg[6]_P_0 ),
        .I1(\coste_rest[7]_i_3_n_0 ),
        .I2(\coste_rest_reg_n_0_[7] ),
        .I3(\coste_rest_reg_n_0_[3] ),
        .I4(g0_b0_i_9_n_0),
        .I5(\coste_rest[7]_i_4_n_0 ),
        .O(g0_b0_i_7_n_0));
  LUT6 #(
    .INIT(64'h1414141616161416)) 
    g0_b0_i_8
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\coste_rest_reg[1]_C_n_0 ),
        .I4(\coste_rest_reg[1]_LDC_n_0 ),
        .I5(\coste_rest_reg[1]_P_n_0 ),
        .O(\current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    g0_b0_i_9
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(g0_b0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB38A4D860)) 
    g0_b1
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB38A4D860)) 
    g0_b1__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFB38A4D860)) 
    g0_b1__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b1__1_n_0));
  LUT6 #(
    .INIT(64'hD1333D31F3131331)) 
    g0_b1__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hED)) 
    g0_b1__3
       (.I0(g0_b0_i_6_n_0),
        .I1(to_BCD_7segm5[5]),
        .I2(to_BCD_7segm6),
        .O(\current_state_reg[2]_4 ));
  LUT6 #(
    .INIT(64'hD5F77D557FD77155)) 
    g0_b1__4
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b1__4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFFE1E0FE00)) 
    g0_b1__5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b1__5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFA2A34D004)) 
    g0_b2
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFA2A34D004)) 
    g0_b2__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFA2A34D004)) 
    g0_b2__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b2__1_n_0));
  LUT6 #(
    .INIT(64'hD1F11D3333131D11)) 
    g0_b2__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b2__2_n_0));
  LUT6 #(
    .INIT(64'h55FD7D7577575951)) 
    g0_b2__3
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b2__3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFEF01F0EE00)) 
    g0_b2__4
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b2__4_n_0));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    g0_b2__5
       (.I0(to_BCD_7segm5[5]),
        .I1(\display_number[3] [0]),
        .I2(\display_number[3] [1]),
        .I3(g0_b2__5_i_1_n_0),
        .I4(\display_number[3] [2]),
        .I5(g0_b2__5_i_2_n_0),
        .O(display_number_OBUF[0]));
  MUXF7 g0_b2__5_i_1
       (.I0(g0_b2__2_n_0),
        .I1(g0_b2__4_n_0),
        .O(g0_b2__5_i_1_n_0),
        .S(\display_number[3] [0]));
  MUXF8 g0_b2__5_i_2
       (.I0(g0_b2__5_i_3_n_0),
        .I1(g0_b2__5_i_4_n_0),
        .O(g0_b2__5_i_2_n_0),
        .S(\display_number[3] [1]));
  MUXF7 g0_b2__5_i_3
       (.I0(g0_b2__3_n_0),
        .I1(g0_b2_n_0),
        .O(g0_b2__5_i_3_n_0),
        .S(\display_number[3] [0]));
  MUXF7 g0_b2__5_i_4
       (.I0(g0_b2__0_n_0),
        .I1(g0_b2__1_n_0),
        .O(g0_b2__5_i_4_n_0),
        .S(\display_number[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFD20EC68692)) 
    g0_b3
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFD20EC68692)) 
    g0_b3__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFD20EC68692)) 
    g0_b3__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b3__1_n_0));
  LUT6 #(
    .INIT(64'hDDD13FD13DD131C3)) 
    g0_b3__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b3__2_n_0));
  LUT3 #(
    .INIT(8'hC6)) 
    g0_b3__3
       (.I0(g0_b0_i_6_n_0),
        .I1(to_BCD_7segm5[5]),
        .I2(to_BCD_7segm6),
        .O(g0_b3__3_n_0));
  LUT6 #(
    .INIT(64'hDD557FF5F51D13F1)) 
    g0_b3__4
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b3__4_n_0));
  LUT6 #(
    .INIT(64'hFFEFEFEFF1EF0000)) 
    g0_b3__5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b3__5_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    g0_b3__6
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_6_n_0),
        .I2(\coste_rest_reg[7]_2 ),
        .O(g0_b3__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFC140102BA)) 
    g0_b4
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFC140102BA)) 
    g0_b4__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFC140102BA)) 
    g0_b4__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b4__1_n_0));
  LUT6 #(
    .INIT(64'h1D13111D11D1F1F3)) 
    g0_b4__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b4__2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    g0_b4__3
       (.I0(to_BCD_7segm5[5]),
        .I1(to_BCD_7segm6),
        .O(\current_state_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h5557575DD5DDD5B1)) 
    g0_b4__4
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b4__4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF100E10E0)) 
    g0_b4__5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b4__5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF90888208E)) 
    g0_b5
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF90888208E)) 
    g0_b5__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b5__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF90888208E)) 
    g0_b5__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b5__1_n_0));
  LUT6 #(
    .INIT(64'hD111F1111131FDD1)) 
    g0_b5__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b5__2_n_0));
  LUT6 #(
    .INIT(64'hD555F555D575D995)) 
    g0_b5__3
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b5__3_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFFF0100100)) 
    g0_b5__4
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b5__4_n_0));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    g0_b5__5
       (.I0(to_BCD_7segm5[5]),
        .I1(\display_number[3] [0]),
        .I2(\display_number[3] [1]),
        .I3(g0_b5__5_i_1_n_0),
        .I4(\display_number[3] [2]),
        .I5(g0_b5__5_i_2_n_0),
        .O(display_number_OBUF[2]));
  MUXF7 g0_b5__5_i_1
       (.I0(g0_b5__2_n_0),
        .I1(g0_b5__4_n_0),
        .O(g0_b5__5_i_1_n_0),
        .S(\display_number[3] [0]));
  MUXF8 g0_b5__5_i_2
       (.I0(g0_b5__5_i_3_n_0),
        .I1(g0_b5__5_i_4_n_0),
        .O(g0_b5__5_i_2_n_0),
        .S(\display_number[3] [1]));
  MUXF7 g0_b5__5_i_3
       (.I0(g0_b5__3_n_0),
        .I1(g0_b5_n_0),
        .O(g0_b5__5_i_3_n_0),
        .S(\display_number[3] [0]));
  MUXF7 g0_b5__5_i_4
       (.I0(g0_b5__0_n_0),
        .I1(g0_b5__1_n_0),
        .O(g0_b5__5_i_4_n_0),
        .S(\display_number[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFE1C16C1083)) 
    g0_b6
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFE1C16C1083)) 
    g0_b6__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFE1C16C1083)) 
    g0_b6__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b6__1_n_0));
  LUT6 #(
    .INIT(64'h331DDF31111331DC)) 
    g0_b6__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(g0_b6__2_n_0));
  LUT3 #(
    .INIT(8'hDC)) 
    g0_b6__3
       (.I0(g0_b0_i_6_n_0),
        .I1(to_BCD_7segm5[5]),
        .I2(to_BCD_7segm6),
        .O(g0_b6__3_n_0));
  LUT6 #(
    .INIT(64'h5555405155555555)) 
    g0_b6__3_i_1
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(to_BCD_Decod[2]),
        .I5(sel[4]),
        .O(to_BCD_7segm5[5]));
  LUT6 #(
    .INIT(64'h7FD5DD57D553119D)) 
    g0_b6__4
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b6__4_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF1EE0E01E)) 
    g0_b6__5
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(to_BCD_7segm6),
        .I2(g0_b0_i_6_n_0),
        .I3(to_BCD_7segm5[0]),
        .I4(\coste_rest_reg[7]_2 ),
        .I5(to_BCD_7segm5[5]),
        .O(g0_b6__5_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    g0_b6__6
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_6_n_0),
        .I2(\coste_rest_reg[7]_2 ),
        .O(g0_b6__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    g0_b7
       (.I0(sel[0]),
        .I1(g0_b0_i_2_n_0),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    g0_b7__0
       (.I0(to_BCD_7segm2[0]),
        .I1(to_BCD_7segm2[1]),
        .I2(to_BCD_7segm2[2]),
        .I3(to_BCD_7segm2[3]),
        .I4(to_BCD_7segm6),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b7__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFBFFFFFFFFF)) 
    g0_b7__1
       (.I0(g0_b0__1_i_1_n_0),
        .I1(g0_b0__1_i_2_n_0),
        .I2(\display_number_OBUF[7]_inst_i_4_0 ),
        .I3(\display_number_OBUF[7]_inst_i_4_1 ),
        .I4(g0_b0__1_i_5_n_0),
        .I5(g0_b0_i_6_n_0),
        .O(g0_b7__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    g0_b7__2
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_2_n_0),
        .I2(to_BCD_7segm4[0]),
        .I3(\coste_rest_reg[7]_2 ),
        .I4(to_BCD_7segm4[3]),
        .I5(to_BCD_7segm4[4]),
        .O(\current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    g0_b7__3
       (.I0(\coste_rest_reg[7]_2 ),
        .I1(g0_b0__4_i_1_n_0),
        .I2(g0_b0__4_i_2_n_0),
        .I3(g0_b0__4_i_3_n_0),
        .I4(g0_b0__4_i_4_n_0),
        .I5(g0_b0__4_i_5_n_0),
        .O(g0_b7__3_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    g0_b7__4
       (.I0(\coste_rest_reg[7]_0 ),
        .I1(g0_b0_i_6_n_0),
        .I2(\coste_rest_reg[7]_2 ),
        .O(g0_b0__2_i_3_0));
endmodule

module prescaler
   (CLK,
    CLK_IBUF_BUFG);
  output CLK;
  input CLK_IBUF_BUFG;

  wire CLK;
  wire CLK_IBUF_BUFG;
  wire clk_i;
  wire clk_i_i_1_n_0;
  wire [0:0]count;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_4;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry__2_n_5;
  wire plusOp_carry__2_n_6;
  wire plusOp_carry__2_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    clk_i_i_1
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(CLK),
        .O(clk_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_i_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_i_i_1_n_0),
        .Q(CLK),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .O(count));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(\count[0]_i_4_n_0 ),
        .I2(\count_reg_n_0_[15] ),
        .I3(\count_reg_n_0_[14] ),
        .I4(\count_reg_n_0_[1] ),
        .I5(\count[0]_i_5_n_0 ),
        .O(\count[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count[0]_i_3 
       (.I0(\count_reg_n_0_[6] ),
        .I1(\count_reg_n_0_[7] ),
        .I2(\count_reg_n_0_[9] ),
        .I3(\count_reg_n_0_[8] ),
        .O(\count[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \count[0]_i_4 
       (.I0(\count_reg_n_0_[3] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[5] ),
        .O(\count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[13] ),
        .I3(\count_reg_n_0_[12] ),
        .O(\count[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \count[15]_i_1 
       (.I0(\count[0]_i_2_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .O(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(count),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_6),
        .Q(\count_reg_n_0_[10] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_5),
        .Q(\count_reg_n_0_[11] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_4),
        .Q(\count_reg_n_0_[12] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_7),
        .Q(\count_reg_n_0_[13] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_6),
        .Q(\count_reg_n_0_[14] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__2_n_5),
        .Q(\count_reg_n_0_[15] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_7),
        .Q(\count_reg_n_0_[1] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_6),
        .Q(\count_reg_n_0_[2] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_5),
        .Q(\count_reg_n_0_[3] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry_n_4),
        .Q(\count_reg_n_0_[4] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_7),
        .Q(\count_reg_n_0_[5] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_6),
        .Q(\count_reg_n_0_[6] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_5),
        .Q(\count_reg_n_0_[7] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__0_n_4),
        .Q(\count_reg_n_0_[8] ),
        .R(clk_i));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(plusOp_carry__1_n_7),
        .Q(\count_reg_n_0_[9] ),
        .R(clk_i));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({plusOp_carry__1_n_4,plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO(NLW_plusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],plusOp_carry__2_n_5,plusOp_carry__2_n_6,plusOp_carry__2_n_7}),
        .S({1'b0,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
endmodule

(* CLK_frec_in = "100000000" *) (* CLK_frec_out = "1000" *) (* DELAY = "5" *) 
(* ECO_CHECKSUM = "de2034bb" *) 
(* NotValidForBitStream *)
module top
   (RESET,
    CLK,
    Boton,
    LIGHT,
    display_number,
    display_select,
    delivering,
    error);
  input RESET;
  input CLK;
  input [4:0]Boton;
  output [0:15]LIGHT;
  output [7:0]display_number;
  output [7:0]display_select;
  output delivering;
  output error;

  wire [4:0]Boton;
  wire [4:0]Boton_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire Inst_BCD_Decod_n_0;
  wire Inst_BCD_Decod_n_1;
  wire Inst_BCD_Decod_n_2;
  wire Inst_BCD_Decod_n_3;
  wire Inst_BCD_Decod_n_4;
  wire Inst_BCD_Decod_n_5;
  wire Inst_BCD_Decod_n_6;
  wire Inst_BCD_Decod_n_7;
  wire Inst_BCD_Decod_n_8;
  wire Inst_fsm_n_0;
  wire Inst_fsm_n_10;
  wire Inst_fsm_n_11;
  wire Inst_fsm_n_12;
  wire Inst_fsm_n_25;
  wire Inst_fsm_n_26;
  wire Inst_fsm_n_28;
  wire Inst_fsm_n_29;
  wire Inst_fsm_n_30;
  wire Inst_fsm_n_31;
  wire Inst_fsm_n_32;
  wire Inst_fsm_n_33;
  wire Inst_fsm_n_34;
  wire Inst_fsm_n_35;
  wire Inst_fsm_n_36;
  wire Inst_fsm_n_37;
  wire Inst_fsm_n_38;
  wire Inst_fsm_n_39;
  wire Inst_fsm_n_40;
  wire Inst_fsm_n_41;
  wire Inst_fsm_n_42;
  wire Inst_fsm_n_43;
  wire Inst_fsm_n_44;
  wire Inst_fsm_n_45;
  wire Inst_fsm_n_46;
  wire Inst_fsm_n_51;
  wire Inst_fsm_n_52;
  wire Inst_fsm_n_53;
  wire Inst_fsm_n_54;
  wire Inst_fsm_n_55;
  wire Inst_fsm_n_56;
  wire Inst_fsm_n_57;
  wire Inst_fsm_n_58;
  wire Inst_fsm_n_59;
  wire Inst_fsm_n_9;
  wire [0:15]LIGHT;
  wire [0:15]LIGHT_OBUF;
  wire RESET;
  wire RESET_IBUF;
  wire clk_i;
  wire [2:2]coste_rest;
  wire [2:0]current_state;
  wire delivering;
  wire [2:0]display;
  wire [7:0]display_number;
  wire [7:0]display_number_OBUF;
  wire [7:0]display_select;
  wire [7:0]display_select_OBUF;
  wire error;
  wire error_OBUF;
  wire [2:0]sreg;
  wire [2:0]sreg_0;
  wire [2:0]sreg_1;
  wire \synchronizers[0].Inst_EDGEDTCTR_n_3 ;
  wire \synchronizers[0].Inst_EDGEDTCTR_n_4 ;
  wire \synchronizers[0].Inst_EDGEDTCTR_n_5 ;
  wire \synchronizers[0].Inst_SYNCHRNZR_n_0 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_4 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_5 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_6 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_7 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_8 ;
  wire \synchronizers[1].Inst_EDGEDTCTR_n_9 ;
  wire \synchronizers[1].Inst_SYNCHRNZR_n_0 ;
  wire \synchronizers[2].Inst_EDGEDTCTR_n_3 ;
  wire \synchronizers[2].Inst_EDGEDTCTR_n_4 ;
  wire \synchronizers[2].Inst_SYNCHRNZR_n_0 ;
  wire \synchronizers[3].Inst_EDGEDTCTR_n_0 ;
  wire \synchronizers[3].Inst_EDGEDTCTR_n_1 ;
  wire \synchronizers[3].Inst_SYNCHRNZR_n_0 ;
  wire \synchronizers[4].Inst_EDGEDTCTR_n_0 ;
  wire \synchronizers[4].Inst_SYNCHRNZR_n_0 ;
  wire [1:1]to_BCD_7segm4;
  wire [1:1]to_BCD_7segm6;
  wire [4:0]to_BCD_Decod;

initial begin
 $sdf_annotate("FSM_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \Boton_IBUF[0]_inst 
       (.I(Boton[0]),
        .O(Boton_IBUF[0]));
  IBUF \Boton_IBUF[1]_inst 
       (.I(Boton[1]),
        .O(Boton_IBUF[1]));
  IBUF \Boton_IBUF[2]_inst 
       (.I(Boton[2]),
        .O(Boton_IBUF[2]));
  IBUF \Boton_IBUF[3]_inst 
       (.I(Boton[3]),
        .O(Boton_IBUF[3]));
  IBUF \Boton_IBUF[4]_inst 
       (.I(Boton[4]),
        .O(Boton_IBUF[4]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  BCD_decoder Inst_BCD_Decod
       (.CO(Inst_BCD_Decod_n_2),
        .DI({Inst_fsm_n_36,Inst_fsm_n_37}),
        .O({Inst_BCD_Decod_n_0,Inst_BCD_Decod_n_1}),
        .S({Inst_fsm_n_28,Inst_fsm_n_29,Inst_fsm_n_30,Inst_fsm_n_31}),
        .carac10__0_carry__0_0({Inst_fsm_n_11,Inst_fsm_n_12}),
        .carac10__0_carry__0_1({Inst_fsm_n_38,Inst_fsm_n_39,Inst_fsm_n_40,Inst_fsm_n_41}),
        .carac21_carry_0(Inst_BCD_Decod_n_6),
        .carac21_carry_1(Inst_BCD_Decod_n_8),
        .carac21_carry__0_0(Inst_BCD_Decod_n_7),
        .\current_state_reg[2] (Inst_BCD_Decod_n_5),
        .g0_b0__0_i_8_0(Inst_BCD_Decod_n_4),
        .g0_b0__1_i_7_0({Inst_fsm_n_32,Inst_fsm_n_33,Inst_fsm_n_34,Inst_fsm_n_35}),
        .g0_b0__2_i_3(Inst_BCD_Decod_n_3),
        .g0_b0_i_1(Inst_fsm_n_10),
        .g0_b0_i_1_0(Inst_fsm_n_42),
        .g0_b7__1(Inst_fsm_n_9),
        .g0_b7__1_0(Inst_fsm_n_0),
        .to_BCD_7segm4(to_BCD_7segm4),
        .to_BCD_7segm6(to_BCD_7segm6),
        .to_BCD_Decod(to_BCD_Decod));
  display_exit Inst_DisplayExit
       (.CLK(clk_i),
        .Q(display),
        .\display_number[0] (Inst_fsm_n_58),
        .\display_number[0]_0 (Inst_fsm_n_44),
        .\display_number[0]_1 (Inst_fsm_n_43),
        .\display_number[1] (Inst_fsm_n_57),
        .\display_number[1]_0 (Inst_fsm_n_46),
        .\display_number[1]_1 (Inst_fsm_n_45),
        .\display_number[4] (Inst_fsm_n_56),
        .\display_number[4]_0 (Inst_fsm_n_52),
        .\display_number[4]_1 (Inst_fsm_n_51),
        .\display_number[7] (Inst_fsm_n_54),
        .\display_number[7]_0 (Inst_fsm_n_53),
        .display_number_OBUF({display_number_OBUF[7],display_number_OBUF[4],display_number_OBUF[1:0]}),
        .\display_number_OBUF[7]_inst_i_1_0 (Inst_fsm_n_55),
        .\display_number_OBUF[7]_inst_i_1_1 (Inst_fsm_n_59),
        .display_select_OBUF(display_select_OBUF));
  prescaler Inst_Prescale
       (.CLK(clk_i),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG));
  fsm Inst_fsm
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CO(Inst_BCD_Decod_n_2),
        .D(\synchronizers[3].Inst_EDGEDTCTR_n_1 ),
        .DI({Inst_fsm_n_36,Inst_fsm_n_37}),
        .LIGHT_OBUF({LIGHT_OBUF[0],LIGHT_OBUF[1],LIGHT_OBUF[2],LIGHT_OBUF[3],LIGHT_OBUF[5],LIGHT_OBUF[6],LIGHT_OBUF[12],LIGHT_OBUF[13],LIGHT_OBUF[14],LIGHT_OBUF[15]}),
        .O({Inst_BCD_Decod_n_0,Inst_BCD_Decod_n_1}),
        .Q(current_state),
        .RESET_IBUF(RESET_IBUF),
        .S({Inst_fsm_n_28,Inst_fsm_n_29,Inst_fsm_n_30,Inst_fsm_n_31}),
        .coste_rest(coste_rest),
        .\coste_rest_reg[1]_P_0 (\synchronizers[2].Inst_EDGEDTCTR_n_3 ),
        .\coste_rest_reg[4]_C_0 (\synchronizers[1].Inst_EDGEDTCTR_n_7 ),
        .\coste_rest_reg[4]_P_0 (\synchronizers[1].Inst_EDGEDTCTR_n_8 ),
        .\coste_rest_reg[5]_C_0 ({Inst_fsm_n_11,Inst_fsm_n_12}),
        .\coste_rest_reg[5]_C_1 (\synchronizers[0].Inst_EDGEDTCTR_n_5 ),
        .\coste_rest_reg[6]_C_0 (\synchronizers[1].Inst_EDGEDTCTR_n_6 ),
        .\coste_rest_reg[6]_P_0 (Inst_fsm_n_25),
        .\coste_rest_reg[6]_P_1 (Inst_fsm_n_42),
        .\coste_rest_reg[6]_P_2 (\synchronizers[1].Inst_EDGEDTCTR_n_9 ),
        .\coste_rest_reg[7]_0 (Inst_fsm_n_9),
        .\coste_rest_reg[7]_1 (Inst_fsm_n_10),
        .\coste_rest_reg[7]_2 (to_BCD_7segm4),
        .\coste_rest_reg[7]_3 ({Inst_fsm_n_32,Inst_fsm_n_33,Inst_fsm_n_34,Inst_fsm_n_35}),
        .\coste_rest_reg[7]_4 (\synchronizers[1].Inst_EDGEDTCTR_n_5 ),
        .\coste_rest_reg[7]_5 (\synchronizers[0].Inst_EDGEDTCTR_n_4 ),
        .\current_state_reg[0]_0 (\synchronizers[0].Inst_EDGEDTCTR_n_3 ),
        .\current_state_reg[0]_1 (\synchronizers[4].Inst_EDGEDTCTR_n_0 ),
        .\current_state_reg[0]_2 (\synchronizers[3].Inst_EDGEDTCTR_n_0 ),
        .\current_state_reg[1]_0 (Inst_fsm_n_55),
        .\current_state_reg[1]_1 (\synchronizers[2].Inst_EDGEDTCTR_n_4 ),
        .\current_state_reg[2]_0 (Inst_fsm_n_0),
        .\current_state_reg[2]_1 (Inst_fsm_n_26),
        .\current_state_reg[2]_2 ({Inst_fsm_n_38,Inst_fsm_n_39,Inst_fsm_n_40,Inst_fsm_n_41}),
        .\current_state_reg[2]_3 (Inst_fsm_n_56),
        .\current_state_reg[2]_4 (Inst_fsm_n_57),
        .\current_state_reg[2]_5 (Inst_fsm_n_58),
        .\display_number[3] (display),
        .display_number_OBUF({display_number_OBUF[6:5],display_number_OBUF[3:2]}),
        .\display_number_OBUF[7]_inst_i_4_0 (Inst_BCD_Decod_n_5),
        .\display_number_OBUF[7]_inst_i_4_1 (Inst_BCD_Decod_n_3),
        .\displays.display_reg[0] (Inst_fsm_n_44),
        .\displays.display_reg[0]_0 (Inst_fsm_n_46),
        .\displays.display_reg[0]_1 (Inst_fsm_n_52),
        .\displays.display_reg[0]_2 (Inst_fsm_n_53),
        .\displays.display_reg[0]_3 (Inst_fsm_n_54),
        .\displays.display_reg[1] (Inst_fsm_n_43),
        .\displays.display_reg[1]_0 (Inst_fsm_n_45),
        .\displays.display_reg[1]_1 (Inst_fsm_n_51),
        .error_OBUF(error_OBUF),
        .g0_b0__0_0(Inst_BCD_Decod_n_6),
        .g0_b0__0_1(Inst_BCD_Decod_n_8),
        .g0_b0__0_2(Inst_BCD_Decod_n_7),
        .g0_b0__1_0(Inst_BCD_Decod_n_4),
        .g0_b0__2_i_3_0(Inst_fsm_n_59),
        .sreg(sreg),
        .sreg_0(sreg_0),
        .to_BCD_7segm6(to_BCD_7segm6),
        .to_BCD_Decod(to_BCD_Decod));
  OBUF \LIGHT_OBUF[0]_inst 
       (.I(LIGHT_OBUF[0]),
        .O(LIGHT[0]));
  OBUF \LIGHT_OBUF[10]_inst 
       (.I(1'b0),
        .O(LIGHT[10]));
  OBUF \LIGHT_OBUF[11]_inst 
       (.I(1'b0),
        .O(LIGHT[11]));
  OBUF \LIGHT_OBUF[12]_inst 
       (.I(LIGHT_OBUF[12]),
        .O(LIGHT[12]));
  OBUF \LIGHT_OBUF[13]_inst 
       (.I(LIGHT_OBUF[13]),
        .O(LIGHT[13]));
  OBUF \LIGHT_OBUF[14]_inst 
       (.I(LIGHT_OBUF[14]),
        .O(LIGHT[14]));
  OBUF \LIGHT_OBUF[15]_inst 
       (.I(LIGHT_OBUF[15]),
        .O(LIGHT[15]));
  OBUF \LIGHT_OBUF[1]_inst 
       (.I(LIGHT_OBUF[1]),
        .O(LIGHT[1]));
  OBUF \LIGHT_OBUF[2]_inst 
       (.I(LIGHT_OBUF[2]),
        .O(LIGHT[2]));
  OBUF \LIGHT_OBUF[3]_inst 
       (.I(LIGHT_OBUF[3]),
        .O(LIGHT[3]));
  OBUF \LIGHT_OBUF[4]_inst 
       (.I(1'b0),
        .O(LIGHT[4]));
  OBUF \LIGHT_OBUF[5]_inst 
       (.I(LIGHT_OBUF[5]),
        .O(LIGHT[5]));
  OBUF \LIGHT_OBUF[6]_inst 
       (.I(LIGHT_OBUF[6]),
        .O(LIGHT[6]));
  OBUF \LIGHT_OBUF[7]_inst 
       (.I(error_OBUF),
        .O(LIGHT[7]));
  OBUF \LIGHT_OBUF[8]_inst 
       (.I(1'b0),
        .O(LIGHT[8]));
  OBUF \LIGHT_OBUF[9]_inst 
       (.I(1'b0),
        .O(LIGHT[9]));
  IBUF RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  OBUF delivering_OBUF_inst
       (.I(1'b0),
        .O(delivering));
  OBUF \display_number_OBUF[0]_inst 
       (.I(display_number_OBUF[0]),
        .O(display_number[0]));
  OBUF \display_number_OBUF[1]_inst 
       (.I(display_number_OBUF[1]),
        .O(display_number[1]));
  OBUF \display_number_OBUF[2]_inst 
       (.I(display_number_OBUF[2]),
        .O(display_number[2]));
  OBUF \display_number_OBUF[3]_inst 
       (.I(display_number_OBUF[3]),
        .O(display_number[3]));
  OBUF \display_number_OBUF[4]_inst 
       (.I(display_number_OBUF[4]),
        .O(display_number[4]));
  OBUF \display_number_OBUF[5]_inst 
       (.I(display_number_OBUF[5]),
        .O(display_number[5]));
  OBUF \display_number_OBUF[6]_inst 
       (.I(display_number_OBUF[6]),
        .O(display_number[6]));
  OBUF \display_number_OBUF[7]_inst 
       (.I(display_number_OBUF[7]),
        .O(display_number[7]));
  OBUF \display_select_OBUF[0]_inst 
       (.I(display_select_OBUF[0]),
        .O(display_select[0]));
  OBUF \display_select_OBUF[1]_inst 
       (.I(display_select_OBUF[1]),
        .O(display_select[1]));
  OBUF \display_select_OBUF[2]_inst 
       (.I(display_select_OBUF[2]),
        .O(display_select[2]));
  OBUF \display_select_OBUF[3]_inst 
       (.I(display_select_OBUF[3]),
        .O(display_select[3]));
  OBUF \display_select_OBUF[4]_inst 
       (.I(display_select_OBUF[4]),
        .O(display_select[4]));
  OBUF \display_select_OBUF[5]_inst 
       (.I(display_select_OBUF[5]),
        .O(display_select[5]));
  OBUF \display_select_OBUF[6]_inst 
       (.I(display_select_OBUF[6]),
        .O(display_select[6]));
  OBUF \display_select_OBUF[7]_inst 
       (.I(display_select_OBUF[7]),
        .O(display_select[7]));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  EDGEDTCTR \synchronizers[0].Inst_EDGEDTCTR 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q(current_state[2:1]),
        .sreg(sreg),
        .sreg_0(sreg_1),
        .\sreg_reg[0]_0 (\synchronizers[0].Inst_EDGEDTCTR_n_4 ),
        .\sreg_reg[0]_1 (\synchronizers[0].Inst_SYNCHRNZR_n_0 ),
        .\sreg_reg[1]_0 (\synchronizers[0].Inst_EDGEDTCTR_n_3 ),
        .\sreg_reg[1]_1 (\synchronizers[0].Inst_EDGEDTCTR_n_5 ));
  SYNCHRNZR \synchronizers[0].Inst_SYNCHRNZR 
       (.Boton_IBUF(Boton_IBUF[0]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\sreg_reg[0]_0 (\synchronizers[0].Inst_SYNCHRNZR_n_0 ));
  EDGEDTCTR_0 \synchronizers[1].Inst_EDGEDTCTR 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q(current_state[2:1]),
        .coste_rest(coste_rest),
        .\coste_rest_reg[6]_C (\synchronizers[0].Inst_EDGEDTCTR_n_4 ),
        .\coste_rest_reg[7] (Inst_fsm_n_25),
        .sreg(sreg_0),
        .sreg_0(sreg),
        .\sreg_reg[0]_0 (\synchronizers[1].Inst_EDGEDTCTR_n_4 ),
        .\sreg_reg[0]_1 (\synchronizers[1].Inst_EDGEDTCTR_n_5 ),
        .\sreg_reg[0]_2 (\synchronizers[1].Inst_EDGEDTCTR_n_8 ),
        .\sreg_reg[0]_3 (\synchronizers[1].Inst_EDGEDTCTR_n_9 ),
        .\sreg_reg[0]_4 (\synchronizers[1].Inst_SYNCHRNZR_n_0 ),
        .\sreg_reg[1]_0 (\synchronizers[1].Inst_EDGEDTCTR_n_6 ),
        .\sreg_reg[1]_1 (\synchronizers[1].Inst_EDGEDTCTR_n_7 ));
  SYNCHRNZR_1 \synchronizers[1].Inst_SYNCHRNZR 
       (.Boton_IBUF(Boton_IBUF[1]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\sreg_reg[0]_0 (\synchronizers[1].Inst_SYNCHRNZR_n_0 ));
  EDGEDTCTR_2 \synchronizers[2].Inst_EDGEDTCTR 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\current_state_reg[2] (\synchronizers[1].Inst_EDGEDTCTR_n_4 ),
        .\current_state_reg[2]_0 (\synchronizers[0].Inst_EDGEDTCTR_n_4 ),
        .sreg(sreg_1),
        .sreg_0(sreg),
        .\sreg_reg[0]_0 (\synchronizers[2].Inst_EDGEDTCTR_n_3 ),
        .\sreg_reg[0]_1 (\synchronizers[2].Inst_SYNCHRNZR_n_0 ),
        .\sreg_reg[1]_0 (\synchronizers[2].Inst_EDGEDTCTR_n_4 ));
  SYNCHRNZR_3 \synchronizers[2].Inst_SYNCHRNZR 
       (.Boton_IBUF(Boton_IBUF[2]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\sreg_reg[0]_0 (\synchronizers[2].Inst_SYNCHRNZR_n_0 ));
  EDGEDTCTR_4 \synchronizers[3].Inst_EDGEDTCTR 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(\synchronizers[3].Inst_EDGEDTCTR_n_1 ),
        .\current_state_reg[2] (\synchronizers[2].Inst_EDGEDTCTR_n_3 ),
        .\current_state_reg[2]_0 (Inst_fsm_n_26),
        .\sreg_reg[0]_0 (\synchronizers[3].Inst_SYNCHRNZR_n_0 ),
        .\sreg_reg[1]_0 (\synchronizers[3].Inst_EDGEDTCTR_n_0 ));
  SYNCHRNZR_5 \synchronizers[3].Inst_SYNCHRNZR 
       (.Boton_IBUF(Boton_IBUF[3]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\sreg_reg[0]_0 (\synchronizers[3].Inst_SYNCHRNZR_n_0 ));
  EDGEDTCTR_6 \synchronizers[4].Inst_EDGEDTCTR 
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q(current_state),
        .\sreg_reg[0]_0 (\synchronizers[4].Inst_SYNCHRNZR_n_0 ),
        .\sreg_reg[1]_0 (\synchronizers[4].Inst_EDGEDTCTR_n_0 ));
  SYNCHRNZR_7 \synchronizers[4].Inst_SYNCHRNZR 
       (.Boton_IBUF(Boton_IBUF[4]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .\sreg_reg[0]_0 (\synchronizers[4].Inst_SYNCHRNZR_n_0 ));
endmodule
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
