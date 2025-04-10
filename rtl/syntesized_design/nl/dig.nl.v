module dig (clk,
    trigger,
    counter_out);
 input clk;
 input trigger;
 output [7:0] counter_out;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire \counter[0] ;
 wire \counter[1] ;
 wire \counter[2] ;
 wire \counter[3] ;
 wire \counter[4] ;
 wire \counter[5] ;
 wire \counter[6] ;
 wire \counter[7] ;
 wire trigger_prev;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;

 sky130_fd_sc_hd__nand2b_2 _31_ (.A_N(net1),
    .B(trigger_prev),
    .Y(_16_));
 sky130_fd_sc_hd__and2b_1 _32_ (.A_N(\counter[0] ),
    .B(_16_),
    .X(_00_));
 sky130_fd_sc_hd__a21boi_1 _33_ (.A1(\counter[0] ),
    .A2(\counter[1] ),
    .B1_N(_16_),
    .Y(_17_));
 sky130_fd_sc_hd__o21a_1 _34_ (.A1(\counter[0] ),
    .A2(net28),
    .B1(_17_),
    .X(_01_));
 sky130_fd_sc_hd__a21o_1 _35_ (.A1(\counter[0] ),
    .A2(\counter[1] ),
    .B1(\counter[2] ),
    .X(_18_));
 sky130_fd_sc_hd__nand3_1 _36_ (.A(\counter[0] ),
    .B(\counter[1] ),
    .C(\counter[2] ),
    .Y(_19_));
 sky130_fd_sc_hd__and3_1 _37_ (.A(_16_),
    .B(_18_),
    .C(_19_),
    .X(_02_));
 sky130_fd_sc_hd__a31o_1 _38_ (.A1(\counter[0] ),
    .A2(\counter[1] ),
    .A3(\counter[2] ),
    .B1(\counter[3] ),
    .X(_20_));
 sky130_fd_sc_hd__and4_2 _39_ (.A(\counter[0] ),
    .B(\counter[1] ),
    .C(\counter[2] ),
    .D(\counter[3] ),
    .X(_21_));
 sky130_fd_sc_hd__inv_2 _40_ (.A(_21_),
    .Y(_22_));
 sky130_fd_sc_hd__and3_1 _41_ (.A(_16_),
    .B(_20_),
    .C(_22_),
    .X(_03_));
 sky130_fd_sc_hd__o21ai_1 _42_ (.A1(\counter[4] ),
    .A2(_21_),
    .B1(_16_),
    .Y(_23_));
 sky130_fd_sc_hd__a21oi_1 _43_ (.A1(net25),
    .A2(_21_),
    .B1(_23_),
    .Y(_04_));
 sky130_fd_sc_hd__a21o_1 _44_ (.A1(\counter[4] ),
    .A2(_21_),
    .B1(\counter[5] ),
    .X(_24_));
 sky130_fd_sc_hd__and3_1 _45_ (.A(\counter[4] ),
    .B(\counter[5] ),
    .C(_21_),
    .X(_25_));
 sky130_fd_sc_hd__nand2_1 _46_ (.A(_16_),
    .B(_24_),
    .Y(_26_));
 sky130_fd_sc_hd__nor2_1 _47_ (.A(_25_),
    .B(_26_),
    .Y(_05_));
 sky130_fd_sc_hd__and4_1 _48_ (.A(\counter[4] ),
    .B(\counter[5] ),
    .C(\counter[6] ),
    .D(_21_),
    .X(_27_));
 sky130_fd_sc_hd__o21ai_1 _49_ (.A1(net27),
    .A2(_25_),
    .B1(_16_),
    .Y(_28_));
 sky130_fd_sc_hd__nor2_1 _50_ (.A(_27_),
    .B(_28_),
    .Y(_06_));
 sky130_fd_sc_hd__a21boi_1 _51_ (.A1(net24),
    .A2(_27_),
    .B1_N(_16_),
    .Y(_29_));
 sky130_fd_sc_hd__o21a_1 _52_ (.A1(net24),
    .A2(_27_),
    .B1(_29_),
    .X(_07_));
 sky130_fd_sc_hd__nand2b_4 _53_ (.A_N(trigger_prev),
    .B(net1),
    .Y(_30_));
 sky130_fd_sc_hd__mux2_1 _54_ (.A0(\counter[0] ),
    .A1(net10),
    .S(_30_),
    .X(_08_));
 sky130_fd_sc_hd__mux2_1 _55_ (.A0(\counter[1] ),
    .A1(net23),
    .S(_30_),
    .X(_09_));
 sky130_fd_sc_hd__mux2_1 _56_ (.A0(\counter[2] ),
    .A1(net19),
    .S(_30_),
    .X(_10_));
 sky130_fd_sc_hd__mux2_1 _57_ (.A0(\counter[3] ),
    .A1(net11),
    .S(_30_),
    .X(_11_));
 sky130_fd_sc_hd__mux2_1 _58_ (.A0(\counter[4] ),
    .A1(net13),
    .S(_30_),
    .X(_12_));
 sky130_fd_sc_hd__mux2_1 _59_ (.A0(\counter[5] ),
    .A1(net21),
    .S(_30_),
    .X(_13_));
 sky130_fd_sc_hd__mux2_1 _60_ (.A0(\counter[6] ),
    .A1(net15),
    .S(_30_),
    .X(_14_));
 sky130_fd_sc_hd__mux2_1 _61_ (.A0(\counter[7] ),
    .A1(net17),
    .S(_30_),
    .X(_15_));
 sky130_fd_sc_hd__dfxtp_1 _62_ (.CLK(clknet_1_0__leaf_clk),
    .D(_00_),
    .Q(\counter[0] ));
 sky130_fd_sc_hd__dfxtp_1 _63_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .Q(\counter[1] ));
 sky130_fd_sc_hd__dfxtp_1 _64_ (.CLK(clknet_1_0__leaf_clk),
    .D(_02_),
    .Q(\counter[2] ));
 sky130_fd_sc_hd__dfxtp_1 _65_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .Q(\counter[3] ));
 sky130_fd_sc_hd__dfxtp_1 _66_ (.CLK(clknet_1_1__leaf_clk),
    .D(net26),
    .Q(\counter[4] ));
 sky130_fd_sc_hd__dfxtp_1 _67_ (.CLK(clknet_1_1__leaf_clk),
    .D(_05_),
    .Q(\counter[5] ));
 sky130_fd_sc_hd__dfxtp_1 _68_ (.CLK(clknet_1_1__leaf_clk),
    .D(_06_),
    .Q(\counter[6] ));
 sky130_fd_sc_hd__dfxtp_1 _69_ (.CLK(clknet_1_1__leaf_clk),
    .D(_07_),
    .Q(\counter[7] ));
 sky130_fd_sc_hd__dfxtp_1 _70_ (.CLK(clknet_1_0__leaf_clk),
    .D(_08_),
    .Q(net2));
 sky130_fd_sc_hd__dfxtp_1 _71_ (.CLK(clknet_1_0__leaf_clk),
    .D(_09_),
    .Q(net3));
 sky130_fd_sc_hd__dfxtp_1 _72_ (.CLK(clknet_1_0__leaf_clk),
    .D(net20),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_1 _73_ (.CLK(clknet_1_0__leaf_clk),
    .D(net12),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_1 _74_ (.CLK(clknet_1_1__leaf_clk),
    .D(net14),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _75_ (.CLK(clknet_1_1__leaf_clk),
    .D(net22),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _76_ (.CLK(clknet_1_1__leaf_clk),
    .D(net16),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _77_ (.CLK(clknet_1_1__leaf_clk),
    .D(net18),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _78_ (.CLK(clknet_1_1__leaf_clk),
    .D(net1),
    .Q(trigger_prev));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_40 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(trigger),
    .X(net1));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(counter_out[0]));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(counter_out[1]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(counter_out[2]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(counter_out[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(counter_out[4]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(counter_out[5]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(counter_out[6]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(counter_out[7]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(net2),
    .X(net10));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(net5),
    .X(net11));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(_11_),
    .X(net12));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(net6),
    .X(net13));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(_12_),
    .X(net14));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(net8),
    .X(net15));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(_14_),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(net9),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_15_),
    .X(net18));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(net4),
    .X(net19));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_10_),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(net7),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_13_),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(net3),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(\counter[7] ),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\counter[4] ),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(_04_),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\counter[6] ),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\counter[1] ),
    .X(net28));
 sky130_fd_sc_hd__decap_8 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_52 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_73 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_70 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_74 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_29 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_70 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_39 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_6 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_73 ();
endmodule
