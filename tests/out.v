module topunit (clk1, clk2, resetn, AC, done);
	input clk1;
	input clk2;
	input resetn;
	output [7:0] AC;
	output done;
	wire [7:0] AC_dup1;
	wire [7:0] data;
	wire [7:0] data_dup1;
	wire [7:0] data_dup2;
	wire [7:2] unit1_add_41_carry;
	wire [7:2] unit1_add_41_carry_dup1;
	wire [7:2] unit2_add_91_carry;
	wire [7:2] unit2_add_91_carry_dup1;
	wire ack;
	wire ack_dup1;
	wire ack_dup2;
	wire done_dup1;
	wire n10;
	wire n10_dup1;
	wire n11;
	wire n11_dup1;
	wire n12;
	wire n12_dup1;
	wire n13;
	wire n13_dup1;
	wire n14;
	wire n14_dup1;
	wire n15;
	wire n15_dup1;
	wire n16;
	wire n16_dup1;
	wire n17;
	wire n17_dup1;
	wire n18;
	wire n18_dup1;
	wire n19;
	wire n19_dup1;
	wire n1;
	wire n1_dup1;
	wire n20;
	wire n20_dup1;
	wire n21;
	wire n21_dup1;
	wire n22;
	wire n22_dup1;
	wire n23;
	wire n23_dup1;
	wire n24;
	wire n24_dup1;
	wire n25;
	wire n25_dup1;
	wire n26;
	wire n26_dup1;
	wire n27;
	wire n27_dup1;
	wire n28;
	wire n28_dup1;
	wire n29;
	wire n29_dup1;
	wire n2;
	wire n2_dup1;
	wire n30;
	wire n30_dup1;
	wire n31;
	wire n31_dup1;
	wire n32;
	wire n32_dup1;
	wire n33;
	wire n33_dup1;
	wire n34;
	wire n34_dup1;
	wire n35;
	wire n35_dup1;
	wire n36;
	wire n36_dup1;
	wire n37;
	wire n37_dup1;
	wire n38;
	wire n38_dup1;
	wire n39;
	wire n39_dup1;
	wire n3;
	wire n3_dup1;
	wire n40;
	wire n40_dup1;
	wire n41;
	wire n41_dup1;
	wire n42;
	wire n42_dup1;
	wire n43;
	wire n43_dup1;
	wire n44;
	wire n44_dup1;
	wire n45;
	wire n45_dup1;
	wire n46;
	wire n46_dup1;
	wire n47;
	wire n47_dup1;
	wire n48;
	wire n48_dup1;
	wire n49;
	wire n49_dup1;
	wire n4;
	wire n4_dup1;
	wire n50;
	wire n50_dup1;
	wire n51;
	wire n51_dup1;
	wire n52;
	wire n52_dup1;
	wire n53;
	wire n53_dup1;
	wire n54;
	wire n54_dup1;
	wire n55;
	wire n55_dup1;
	wire n56;
	wire n56_dup1;
	wire n57;
	wire n57_dup1;
	wire n58;
	wire n58_dup1;
	wire n59;
	wire n59_dup1;
	wire n5;
	wire n5_dup1;
	wire n60;
	wire n60_dup1;
	wire n61;
	wire n61_dup1;
	wire n62;
	wire n62_dup1;
	wire n63;
	wire n63_dup1;
	wire n64;
	wire n64_dup1;
	wire n65;
	wire n65_dup1;
	wire n66;
	wire n66_dup1;
	wire n67;
	wire n67_dup1;
	wire n68;
	wire n68_dup1;
	wire n69;
	wire n69_dup1;
	wire n6;
	wire n6_dup1;
	wire n70;
	wire n70_dup1;
	wire n71;
	wire n71_dup1;
	wire n71_dup2;
	wire n72;
	wire n72_dup1;
	wire n73;
	wire n73_dup1;
	wire n74;
	wire n74_dup1;
	wire n75;
	wire n75_dup1;
	wire n76;
	wire n76_dup1;
	wire n77;
	wire n77_dup1;
	wire n78;
	wire n78_dup1;
	wire n79;
	wire n79_dup1;
	wire n7;
	wire n7_dup1;
	wire n80;
	wire n80_dup1;
	wire n81;
	wire n81_dup1;
	wire n82;
	wire n82_dup1;
	wire n83;
	wire n83_dup1;
	wire n84;
	wire n84_dup1;
	wire n85;
	wire n85_dup1;
	wire n86;
	wire n86_dup1;
	wire n87;
	wire n87_dup1;
	wire n88;
	wire n88_dup1;
	wire n8;
	wire n8_dup1;
	wire n9;
	wire n9_dup1;
	wire stb;
	wire stb_dup1;
	wire stb_dup2;
	wire unit1_N4;
	wire unit1_N4_dup1;
	wire unit1_N5;
	wire unit1_N5_dup1;
	wire unit1_N6;
	wire unit1_N6_dup1;
	wire unit1_N7;
	wire unit1_N7_dup1;
	wire unit1_N8;
	wire unit1_N8_dup1;
	wire unit1_N9;
	wire unit1_N9_dup1;
	wire unit1_n20;
	wire unit1_n20_dup1;
	wire unit1_n22;
	wire unit1_n22_dup1;
	wire unit1_n24;
	wire unit1_n24_dup1;
	wire unit1_n26;
	wire unit1_n26_dup1;
	wire unit1_n28;
	wire unit1_n28_dup1;
	wire unit1_n30;
	wire unit1_n30_dup1;
	wire unit1_n32;
	wire unit1_n32_dup1;
	wire unit1_n34;
	wire unit1_n34_dup1;
	wire unit1_n35;
	wire unit2_N12;
	wire unit2_N12_dup1;
	wire unit2_N13;
	wire unit2_N13_dup1;
	wire unit2_N14;
	wire unit2_N14_dup1;
	wire unit2_N15;
	wire unit2_N15_dup1;
	wire unit2_N16;
	wire unit2_N16_dup1;
	wire unit2_N17;
	wire unit2_N17_dup1;
	wire unit2_counter_0_;
	wire unit2_counter_0__dup1;
	wire unit2_counter_1_;
	wire unit2_counter_1__dup1;
	wire unit2_counter_2_;
	wire unit2_counter_2__dup1;
	wire unit2_counter_3_;
	wire unit2_counter_3__dup1;
	wire unit2_counter_4_;
	wire unit2_counter_4__dup1;
	wire unit2_counter_5_;
	wire unit2_counter_5__dup1;
	wire unit2_counter_6_;
	wire unit2_counter_6__dup1;
	wire unit2_counter_7_;
	wire unit2_counter_7__dup1;
	wire unit2_n40;
	wire unit2_n40_dup1;
	wire unit2_n42;
	wire unit2_n42_dup1;
	wire unit2_n44;
	wire unit2_n44_dup1;
	wire unit2_n46;
	wire unit2_n46_dup1;
	wire unit2_n48;
	wire unit2_n48_dup1;
	wire unit2_n50;
	wire unit2_n50_dup1;
	wire unit2_n52;
	wire unit2_n52_dup1;
	wire unit2_n54;
	wire unit2_n54_dup1;
	wire unit2_n56;
	wire unit2_n56_dup1;
	wire unit2_n58;
	wire unit2_n58_dup1;
	wire unit2_n60;
	wire unit2_n60_dup1;
	wire unit2_n62;
	wire unit2_n62_dup1;
	wire unit2_n64;
	wire unit2_n64_dup1;
	wire unit2_n66;
	wire unit2_n66_dup1;
	wire unit2_n68;
	wire unit2_n68_dup1;
	wire unit2_n70;
	wire unit2_n70_dup1;
	wire unit2_n72;
	wire unit2_n72_dup1;
	wire unit2_n74;
	wire unit2_n74_dup1;
	AN2X1 U101 (.I1(unit1_N6), .I2(n74), .O(n81));
	AN2X1 U101_dup1 (.I1(unit1_N6_dup1), .I2(n74_dup1), .O(n81_dup1));
	AN2X1 U102 (.I1(data[3]), .I2(n77), .O(n80));
	AN2X1 U102_dup1 (.I1(data_dup2[3]), .I2(n77_dup1), .O(n80_dup1));
	AN2X1 U104 (.I1(unit1_N7), .I2(n74), .O(n83));
	AN2X1 U104_dup1 (.I1(unit1_N7_dup1), .I2(n74_dup1), .O(n83_dup1));
	AN2X1 U105 (.I1(data[4]), .I2(n77), .O(n82));
	AN2X1 U105_dup1 (.I1(data_dup2[4]), .I2(n77_dup1), .O(n82_dup1));
	AN2X1 U107 (.I1(unit1_N8), .I2(n74), .O(n85));
	AN2X1 U107_dup1 (.I1(unit1_N8_dup1), .I2(n74_dup1), .O(n85_dup1));
	AN2X1 U108 (.I1(data[5]), .I2(n77), .O(n84));
	AN2X1 U108_dup1 (.I1(data_dup2[5]), .I2(n77_dup1), .O(n84_dup1));
	AN2X1 U110 (.I1(unit1_N9), .I2(n74), .O(n87));
	AN2X1 U110_dup1 (.I1(unit1_N9_dup1), .I2(n74_dup1), .O(n87_dup1));
	AN2X1 U111 (.I1(data[6]), .I2(n77), .O(n86));
	AN2X1 U111_dup1 (.I1(data_dup2[6]), .I2(n77_dup1), .O(n86_dup1));
	AN2X1 U113 (.I1(n88), .I2(n71), .O(n74));
	AN2X1 U113_dup1 (.I1(n88_dup1), .I2(n71_dup2), .O(n74_dup1));
	AN2X1 U15 (.I1(n2), .I2(n14), .O(n13));
	AN2X1 U15_dup1 (.I1(n2_dup1), .I2(n14_dup1), .O(n13_dup1));
	AN2X1 U18 (.I1(n2), .I2(n17), .O(n16));
	AN2X1 U18_dup1 (.I1(n2_dup1), .I2(n17_dup1), .O(n16_dup1));
	AN2X1 U21 (.I1(n2), .I2(n20), .O(n19));
	AN2X1 U21_dup1 (.I1(n2_dup1), .I2(n20_dup1), .O(n19_dup1));
	AN2X1 U24 (.I1(n2), .I2(n23), .O(n22));
	AN2X1 U24_dup1 (.I1(n2_dup1), .I2(n23_dup1), .O(n22_dup1));
	AN2X1 U3 (.I1(stb), .I2(ack), .O(n1));
	AN2X1 U33 (.I1(n33), .I2(n34), .O(n32));
	AN2X1 U33_dup1 (.I1(n33_dup1), .I2(n34_dup1), .O(n32_dup1));
	AN2X1 U36 (.I1(n28), .I2(n25), .O(n35));
	AN2X1 U36_dup1 (.I1(n28_dup1), .I2(n25_dup1), .O(n35_dup1));
	AN2X1 U3_dup1 (.I1(stb_dup1), .I2(ack_dup1), .O(n1_dup1));
	AN2X1 U41 (.I1(AC[5]), .I2(n24), .O(n39));
	AN2X1 U41_dup1 (.I1(AC_dup1[5]), .I2(n24_dup1), .O(n39_dup1));
	AN2X1 U42 (.I1(data[5]), .I2(n40), .O(n38));
	AN2X1 U42_dup1 (.I1(data_dup1[5]), .I2(n40_dup1), .O(n38_dup1));
	AN2X1 U45 (.I1(AC[4]), .I2(n21), .O(n42));
	AN2X1 U45_dup1 (.I1(AC_dup1[4]), .I2(n21_dup1), .O(n42_dup1));
	AN2X1 U46 (.I1(data[4]), .I2(n43), .O(n41));
	AN2X1 U46_dup1 (.I1(data_dup1[4]), .I2(n43_dup1), .O(n41_dup1));
	AN2X1 U49 (.I1(AC[3]), .I2(n18), .O(n45));
	AN2X1 U49_dup1 (.I1(AC_dup1[3]), .I2(n18_dup1), .O(n45_dup1));
	AN2X1 U5 (.I1(AC[0]), .I2(n5), .O(n4));
	AN2X1 U50 (.I1(data[3]), .I2(n46), .O(n44));
	AN2X1 U50_dup1 (.I1(data_dup1[3]), .I2(n46_dup1), .O(n44_dup1));
	AN2X1 U53 (.I1(AC[2]), .I2(n15), .O(n48));
	AN2X1 U53_dup1 (.I1(AC_dup1[2]), .I2(n15_dup1), .O(n48_dup1));
	AN2X1 U54 (.I1(data[2]), .I2(n49), .O(n47));
	AN2X1 U54_dup1 (.I1(data_dup1[2]), .I2(n49_dup1), .O(n47_dup1));
	AN2X1 U57 (.I1(AC[1]), .I2(n12), .O(n51));
	AN2X1 U57_dup1 (.I1(AC_dup1[1]), .I2(n12_dup1), .O(n51_dup1));
	AN2X1 U58 (.I1(data[1]), .I2(n52), .O(n50));
	AN2X1 U58_dup1 (.I1(data_dup1[1]), .I2(n52_dup1), .O(n50_dup1));
	AN2X1 U5_dup1 (.I1(AC_dup1[0]), .I2(n5_dup1), .O(n4_dup1));
	AN2X1 U60 (.I1(AC[0]), .I2(data[0]), .O(n12));
	AN2X1 U60_dup1 (.I1(AC_dup1[0]), .I2(data_dup1[0]), .O(n12_dup1));
	AN2X1 U63 (.I1(unit2_N12), .I2(n2), .O(n54));
	AN2X1 U63_dup1 (.I1(unit2_N12_dup1), .I2(n2_dup1), .O(n54_dup1));
	AN2X1 U64 (.I1(unit2_counter_1_), .I2(n6), .O(n53));
	AN2X1 U64_dup1 (.I1(unit2_counter_1__dup1), .I2(n6_dup1), .O(n53_dup1));
	AN2X1 U66 (.I1(unit2_N13), .I2(n2), .O(n56));
	AN2X1 U66_dup1 (.I1(unit2_N13_dup1), .I2(n2_dup1), .O(n56_dup1));
	AN2X1 U67 (.I1(unit2_counter_2_), .I2(n6), .O(n55));
	AN2X1 U67_dup1 (.I1(unit2_counter_2__dup1), .I2(n6_dup1), .O(n55_dup1));
	AN2X1 U69 (.I1(unit2_N14), .I2(n2), .O(n58));
	AN2X1 U69_dup1 (.I1(unit2_N14_dup1), .I2(n2_dup1), .O(n58_dup1));
	AN2X1 U7 (.I1(n8), .I2(n2), .O(n3));
	AN2X1 U70 (.I1(unit2_counter_3_), .I2(n6), .O(n57));
	AN2X1 U70_dup1 (.I1(unit2_counter_3__dup1), .I2(n6_dup1), .O(n57_dup1));
	AN2X1 U72 (.I1(unit2_N15), .I2(n2), .O(n60));
	AN2X1 U72_dup1 (.I1(unit2_N15_dup1), .I2(n2_dup1), .O(n60_dup1));
	AN2X1 U73 (.I1(unit2_counter_4_), .I2(n6), .O(n59));
	AN2X1 U73_dup1 (.I1(unit2_counter_4__dup1), .I2(n6_dup1), .O(n59_dup1));
	AN2X1 U75 (.I1(unit2_N16), .I2(n2), .O(n62));
	AN2X1 U75_dup1 (.I1(unit2_N16_dup1), .I2(n2_dup1), .O(n62_dup1));
	AN2X1 U76 (.I1(unit2_counter_5_), .I2(n6), .O(n61));
	AN2X1 U76_dup1 (.I1(unit2_counter_5__dup1), .I2(n6_dup1), .O(n61_dup1));
	AN2X1 U78 (.I1(unit2_N17), .I2(n2), .O(n64));
	AN2X1 U78_dup1 (.I1(unit2_N17_dup1), .I2(n2_dup1), .O(n64_dup1));
	AN2X1 U79 (.I1(unit2_counter_6_), .I2(n6), .O(n63));
	AN2X1 U79_dup1 (.I1(unit2_counter_6__dup1), .I2(n6_dup1), .O(n63_dup1));
	AN2X1 U7_dup1 (.I1(n8_dup1), .I2(n2_dup1), .O(n3_dup1));
	AN2X1 U8 (.I1(data[0]), .I2(n7), .O(n8));
	AN2X1 U81 (.I1(unit2_add_91_carry[7]), .I2(n2), .O(n65));
	AN2X1 U81_dup1 (.I1(unit2_add_91_carry_dup1[7]), .I2(n2_dup1), .O(n65_dup1));
	AN2X1 U83 (.I1(n2), .I2(n67), .O(n66));
	AN2X1 U83_dup1 (.I1(n2_dup1), .I2(n67_dup1), .O(n66_dup1));
	AN2X1 U8_dup1 (.I1(data_dup1[0]), .I2(n7_dup1), .O(n8_dup1));
	AN2X1 U92 (.I1(unit1_add_41_carry[7]), .I2(n74), .O(n73));
	AN2X1 U92_dup1 (.I1(unit1_add_41_carry_dup1[7]), .I2(n74_dup1), .O(n73_dup1));
	AN2X1 U95 (.I1(unit1_N4), .I2(n74), .O(n76));
	AN2X1 U95_dup1 (.I1(unit1_N4_dup1), .I2(n74_dup1), .O(n76_dup1));
	AN2X1 U96 (.I1(data[1]), .I2(n77), .O(n75));
	AN2X1 U96_dup1 (.I1(data_dup2[1]), .I2(n77_dup1), .O(n75_dup1));
	AN2X1 U98 (.I1(unit1_N5), .I2(n74), .O(n79));
	AN2X1 U98_dup1 (.I1(unit1_N5_dup1), .I2(n74_dup1), .O(n79_dup1));
	AN2X1 U99 (.I1(data[2]), .I2(n77), .O(n78));
	AN2X1 U99_dup1 (.I1(data_dup2[2]), .I2(n77_dup1), .O(n78_dup1));
	DFFx unit1_data_reg_0_ (.CK(clk1), .D(unit1_n32), .M(data_dup2[0]), .Q(data[0]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[0]), .V(unit1_n32_dup1));
	DFFx unit1_data_reg_1_ (.CK(clk1), .D(unit1_n30), .M(data_dup2[1]), .Q(data[1]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[1]), .V(unit1_n30_dup1));
	DFFx unit1_data_reg_2_ (.CK(clk1), .D(unit1_n28), .M(data_dup2[2]), .Q(data[2]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[2]), .V(unit1_n28_dup1));
	DFFx unit1_data_reg_3_ (.CK(clk1), .D(unit1_n26), .M(data_dup2[3]), .Q(data[3]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[3]), .V(unit1_n26_dup1));
	DFFx unit1_data_reg_4_ (.CK(clk1), .D(unit1_n24), .M(data_dup2[4]), .Q(data[4]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[4]), .V(unit1_n24_dup1));
	DFFx unit1_data_reg_5_ (.CK(clk1), .D(unit1_n22), .M(data_dup2[5]), .Q(data[5]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[5]), .V(unit1_n22_dup1));
	DFFx unit1_data_reg_6_ (.CK(clk1), .D(unit1_n20), .M(data_dup2[6]), .Q(data[6]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[6]), .V(unit1_n20_dup1));
	DFFx unit1_data_reg_7_ (.CK(clk1), .D(unit1_n34), .M(data_dup2[7]), .Q(data[7]), .RB(resetn), .SB(unit1_n35), .T(data_dup1[7]), .V(unit1_n34_dup1));
	DFFx unit1_stb_reg (.CK(clk1), .D(n88), .M(stb_dup2), .Q(stb), .RB(resetn), .SB(unit1_n35), .T(stb_dup1), .V(n88_dup1));
	DFFx unit2_AC_reg_0_ (.CK(clk2), .D(unit2_n72), .M(AC_dup1[0]), .Q(AC[0]), .RB(resetn), .SB(unit1_n35), .V(unit2_n72_dup1));
	DFFx unit2_AC_reg_1_ (.CK(clk2), .D(unit2_n70), .M(AC_dup1[1]), .Q(AC[1]), .RB(resetn), .SB(unit1_n35), .V(unit2_n70_dup1));
	DFFx unit2_AC_reg_2_ (.CK(clk2), .D(unit2_n68), .M(AC_dup1[2]), .Q(AC[2]), .RB(resetn), .SB(unit1_n35), .V(unit2_n68_dup1));
	DFFx unit2_AC_reg_3_ (.CK(clk2), .D(unit2_n66), .M(AC_dup1[3]), .Q(AC[3]), .RB(resetn), .SB(unit1_n35), .V(unit2_n66_dup1));
	DFFx unit2_AC_reg_4_ (.CK(clk2), .D(unit2_n64), .M(AC_dup1[4]), .Q(AC[4]), .RB(resetn), .SB(unit1_n35), .V(unit2_n64_dup1));
	DFFx unit2_AC_reg_5_ (.CK(clk2), .D(unit2_n62), .M(AC_dup1[5]), .Q(AC[5]), .RB(resetn), .SB(unit1_n35), .V(unit2_n62_dup1));
	DFFx unit2_AC_reg_6_ (.CK(clk2), .D(unit2_n60), .M(AC_dup1[6]), .Q(AC[6]), .RB(resetn), .SB(unit1_n35), .V(unit2_n60_dup1));
	DFFx unit2_AC_reg_7_ (.CK(clk2), .D(unit2_n58), .M(AC_dup1[7]), .Q(AC[7]), .RB(resetn), .SB(unit1_n35), .V(unit2_n58_dup1));
	DFFx unit2_ack_reg (.CK(clk2), .D(unit2_n74), .M(ack_dup1), .Q(ack), .RB(resetn), .SB(unit1_n35), .T(ack_dup2), .V(unit2_n74_dup1));
	DFFx unit2_counter_reg_0_ (.CK(clk2), .D(unit2_n56), .M(unit2_counter_0__dup1), .Q(unit2_counter_0_), .RB(unit1_n35), .SB(resetn), .V(unit2_n56_dup1));
	DFFx unit2_counter_reg_1_ (.CK(clk2), .D(unit2_n54), .M(unit2_counter_1__dup1), .Q(unit2_counter_1_), .RB(resetn), .SB(unit1_n35), .V(unit2_n54_dup1));
	DFFx unit2_counter_reg_2_ (.CK(clk2), .D(unit2_n52), .M(unit2_counter_2__dup1), .Q(unit2_counter_2_), .RB(resetn), .SB(unit1_n35), .V(unit2_n52_dup1));
	DFFx unit2_counter_reg_3_ (.CK(clk2), .D(unit2_n50), .M(unit2_counter_3__dup1), .Q(unit2_counter_3_), .RB(resetn), .SB(unit1_n35), .V(unit2_n50_dup1));
	DFFx unit2_counter_reg_4_ (.CK(clk2), .D(unit2_n48), .M(unit2_counter_4__dup1), .Q(unit2_counter_4_), .RB(resetn), .SB(unit1_n35), .V(unit2_n48_dup1));
	DFFx unit2_counter_reg_5_ (.CK(clk2), .D(unit2_n46), .M(unit2_counter_5__dup1), .Q(unit2_counter_5_), .RB(resetn), .SB(unit1_n35), .V(unit2_n46_dup1));
	DFFx unit2_counter_reg_6_ (.CK(clk2), .D(unit2_n44), .M(unit2_counter_6__dup1), .Q(unit2_counter_6_), .RB(resetn), .SB(unit1_n35), .V(unit2_n44_dup1));
	DFFx unit2_counter_reg_7_ (.CK(clk2), .D(unit2_n42), .M(unit2_counter_7__dup1), .Q(unit2_counter_7_), .RB(resetn), .SB(unit1_n35), .V(unit2_n42_dup1));
	DFFx unit2_done_reg (.CK(clk2), .D(unit2_n40), .M(done_dup1), .Q(done), .RB(resetn), .SB(unit1_n35), .V(unit2_n40_dup1));
	HA1X1 U10 (.A(AC[1]), .B(n10), .S(n9));
	HA1X1 U10_dup1 (.A(AC_dup1[1]), .B(n10_dup1), .S(n9_dup1));
	HA1X1 U12 (.A(data[1]), .B(n7), .S(n11));
	HA1X1 U12_dup1 (.A(data_dup1[1]), .B(n7_dup1), .S(n11_dup1));
	HA1X1 U14 (.A(AC[2]), .B(n13), .S(unit2_n68));
	HA1X1 U14_dup1 (.A(AC_dup1[2]), .B(n13_dup1), .S(unit2_n68_dup1));
	HA1X1 U16 (.A(data[2]), .B(n15), .S(n14));
	HA1X1 U16_dup1 (.A(data_dup1[2]), .B(n15_dup1), .S(n14_dup1));
	HA1X1 U17 (.A(AC[3]), .B(n16), .S(unit2_n66));
	HA1X1 U17_dup1 (.A(AC_dup1[3]), .B(n16_dup1), .S(unit2_n66_dup1));
	HA1X1 U19 (.A(data[3]), .B(n18), .S(n17));
	HA1X1 U19_dup1 (.A(data_dup1[3]), .B(n18_dup1), .S(n17_dup1));
	HA1X1 U20 (.A(AC[4]), .B(n19), .S(unit2_n64));
	HA1X1 U20_dup1 (.A(AC_dup1[4]), .B(n19_dup1), .S(unit2_n64_dup1));
	HA1X1 U22 (.A(data[4]), .B(n21), .S(n20));
	HA1X1 U22_dup1 (.A(data_dup1[4]), .B(n21_dup1), .S(n20_dup1));
	HA1X1 U23 (.A(AC[5]), .B(n22), .S(unit2_n62));
	HA1X1 U23_dup1 (.A(AC_dup1[5]), .B(n22_dup1), .S(unit2_n62_dup1));
	HA1X1 U25 (.A(data[5]), .B(n24), .S(n23));
	HA1X1 U25_dup1 (.A(data_dup1[5]), .B(n24_dup1), .S(n23_dup1));
	HA1X1 U26 (.A(n25), .B(n26), .S(unit2_n60));
	HA1X1 U26_dup1 (.A(n25_dup1), .B(n26_dup1), .S(unit2_n60_dup1));
	HA1X1 U28 (.A(data[6]), .B(n28), .S(n27));
	HA1X1 U28_dup1 (.A(data_dup1[6]), .B(n28_dup1), .S(n27_dup1));
	HA1X1 U30 (.A(AC[7]), .B(n30), .S(n29));
	HA1X1 U30_dup1 (.A(AC_dup1[7]), .B(n30_dup1), .S(n29_dup1));
	HA1X1 U32 (.A(data[7]), .B(n32), .S(n31));
	HA1X1 U32_dup1 (.A(data_dup1[7]), .B(n32_dup1), .S(n31_dup1));
	HA1X1 U61 (.A(unit2_counter_0_), .B(n2), .S(unit2_n56));
	HA1X1 U61_dup1 (.A(unit2_counter_0__dup1), .B(n2_dup1), .S(unit2_n56_dup1));
	HA1X1 U80 (.A(unit2_counter_7_), .B(n65), .S(unit2_n42));
	HA1X1 U80_dup1 (.A(unit2_counter_7__dup1), .B(n65_dup1), .S(unit2_n42_dup1));
	HA1X1 U91 (.A(data[7]), .B(n73), .S(unit1_n34));
	HA1X1 U91_dup1 (.A(data_dup2[7]), .B(n73_dup1), .S(unit1_n34_dup1));
	HA1X1 U93 (.A(data[0]), .B(n74), .S(unit1_n32));
	HA1X1 U93_dup1 (.A(data_dup2[0]), .B(n74_dup1), .S(unit1_n32_dup1));
	HA1X1 unit1_add_41_U1_1_1 (.A(data[1]), .B(data[0]), .C(unit1_add_41_carry[2]), .S(unit1_N4));
	HA1X1 unit1_add_41_U1_1_1_dup1 (.A(data_dup2[1]), .B(data_dup2[0]), .C(unit1_add_41_carry_dup1[2]), .S(unit1_N4_dup1));
	HA1X1 unit1_add_41_U1_1_2 (.A(data[2]), .B(unit1_add_41_carry[2]), .C(unit1_add_41_carry[3]), .S(unit1_N5));
	HA1X1 unit1_add_41_U1_1_2_dup1 (.A(data_dup2[2]), .B(unit1_add_41_carry_dup1[2]), .C(unit1_add_41_carry_dup1[3]), .S(unit1_N5_dup1));
	HA1X1 unit1_add_41_U1_1_3 (.A(data[3]), .B(unit1_add_41_carry[3]), .C(unit1_add_41_carry[4]), .S(unit1_N6));
	HA1X1 unit1_add_41_U1_1_3_dup1 (.A(data_dup2[3]), .B(unit1_add_41_carry_dup1[3]), .C(unit1_add_41_carry_dup1[4]), .S(unit1_N6_dup1));
	HA1X1 unit1_add_41_U1_1_4 (.A(data[4]), .B(unit1_add_41_carry[4]), .C(unit1_add_41_carry[5]), .S(unit1_N7));
	HA1X1 unit1_add_41_U1_1_4_dup1 (.A(data_dup2[4]), .B(unit1_add_41_carry_dup1[4]), .C(unit1_add_41_carry_dup1[5]), .S(unit1_N7_dup1));
	HA1X1 unit1_add_41_U1_1_5 (.A(data[5]), .B(unit1_add_41_carry[5]), .C(unit1_add_41_carry[6]), .S(unit1_N8));
	HA1X1 unit1_add_41_U1_1_5_dup1 (.A(data_dup2[5]), .B(unit1_add_41_carry_dup1[5]), .C(unit1_add_41_carry_dup1[6]), .S(unit1_N8_dup1));
	HA1X1 unit1_add_41_U1_1_6 (.A(data[6]), .B(unit1_add_41_carry[6]), .C(unit1_add_41_carry[7]), .S(unit1_N9));
	HA1X1 unit1_add_41_U1_1_6_dup1 (.A(data_dup2[6]), .B(unit1_add_41_carry_dup1[6]), .C(unit1_add_41_carry_dup1[7]), .S(unit1_N9_dup1));
	HA1X1 unit2_add_91_U1_1_1 (.A(unit2_counter_1_), .B(unit2_counter_0_), .C(unit2_add_91_carry[2]), .S(unit2_N12));
	HA1X1 unit2_add_91_U1_1_1_dup1 (.A(unit2_counter_1__dup1), .B(unit2_counter_0__dup1), .C(unit2_add_91_carry_dup1[2]), .S(unit2_N12_dup1));
	HA1X1 unit2_add_91_U1_1_2 (.A(unit2_counter_2_), .B(unit2_add_91_carry[2]), .C(unit2_add_91_carry[3]), .S(unit2_N13));
	HA1X1 unit2_add_91_U1_1_2_dup1 (.A(unit2_counter_2__dup1), .B(unit2_add_91_carry_dup1[2]), .C(unit2_add_91_carry_dup1[3]), .S(unit2_N13_dup1));
	HA1X1 unit2_add_91_U1_1_3 (.A(unit2_counter_3_), .B(unit2_add_91_carry[3]), .C(unit2_add_91_carry[4]), .S(unit2_N14));
	HA1X1 unit2_add_91_U1_1_3_dup1 (.A(unit2_counter_3__dup1), .B(unit2_add_91_carry_dup1[3]), .C(unit2_add_91_carry_dup1[4]), .S(unit2_N14_dup1));
	HA1X1 unit2_add_91_U1_1_4 (.A(unit2_counter_4_), .B(unit2_add_91_carry[4]), .C(unit2_add_91_carry[5]), .S(unit2_N15));
	HA1X1 unit2_add_91_U1_1_4_dup1 (.A(unit2_counter_4__dup1), .B(unit2_add_91_carry_dup1[4]), .C(unit2_add_91_carry_dup1[5]), .S(unit2_N15_dup1));
	HA1X1 unit2_add_91_U1_1_5 (.A(unit2_counter_5_), .B(unit2_add_91_carry[5]), .C(unit2_add_91_carry[6]), .S(unit2_N16));
	HA1X1 unit2_add_91_U1_1_5_dup1 (.A(unit2_counter_5__dup1), .B(unit2_add_91_carry_dup1[5]), .C(unit2_add_91_carry_dup1[6]), .S(unit2_N16_dup1));
	HA1X1 unit2_add_91_U1_1_6 (.A(unit2_counter_6_), .B(unit2_add_91_carry[6]), .C(unit2_add_91_carry[7]), .S(unit2_N17));
	HA1X1 unit2_add_91_U1_1_6_dup1 (.A(unit2_counter_6__dup1), .B(unit2_add_91_carry_dup1[6]), .C(unit2_add_91_carry_dup1[7]), .S(unit2_N17_dup1));
	INVX1 U112 (.I(n74), .O(n77));
	INVX1 U112_dup1 (.I(n74_dup1), .O(n77_dup1));
	INVX1 U114 (.I(stb), .O(n71));
	INVX1 U114_dup1 (.I(stb_dup1), .O(n71_dup1));
	INVX1 U114_dup2 (.I(stb_dup2), .O(n71_dup2));
	INVX1 U115 (.I(ack), .O(n88));
	INVX1 U115_dup1 (.I(ack_dup2), .O(n88_dup1));
	INVX1 U13 (.I(n12), .O(n7));
	INVX1 U13_dup1 (.I(n12_dup1), .O(n7_dup1));
	INVX1 U29 (.I(n29), .O(unit2_n58));
	INVX1 U29_dup1 (.I(n29_dup1), .O(unit2_n58_dup1));
	INVX1 U35 (.I(data[6]), .O(n36));
	INVX1 U35_dup1 (.I(data_dup1[6]), .O(n36_dup1));
	INVX1 U38 (.I(AC[6]), .O(n25));
	INVX1 U38_dup1 (.I(AC_dup1[6]), .O(n25_dup1));
	INVX1 U39 (.I(n37), .O(n28));
	INVX1 U39_dup1 (.I(n37_dup1), .O(n28_dup1));
	INVX1 U88 (.I(n6), .O(n2));
	INVX1 U88_dup1 (.I(n6_dup1), .O(n2_dup1));
	INVX1 U9 (.I(n9), .O(unit2_n70));
	INVX1 U9_dup1 (.I(n9_dup1), .O(unit2_n70_dup1));
	OR2X1 U100 (.I1(n80), .I2(n81), .O(unit1_n26));
	OR2X1 U100_dup1 (.I1(n80_dup1), .I2(n81_dup1), .O(unit1_n26_dup1));
	OR2X1 U103 (.I1(n82), .I2(n83), .O(unit1_n24));
	OR2X1 U103_dup1 (.I1(n82_dup1), .I2(n83_dup1), .O(unit1_n24_dup1));
	OR2X1 U106 (.I1(n84), .I2(n85), .O(unit1_n22));
	OR2X1 U106_dup1 (.I1(n84_dup1), .I2(n85_dup1), .O(unit1_n22_dup1));
	OR2X1 U109 (.I1(n86), .I2(n87), .O(unit1_n20));
	OR2X1 U109_dup1 (.I1(n86_dup1), .I2(n87_dup1), .O(unit1_n20_dup1));
	OR2X1 U11 (.I1(n11), .I2(n6), .O(n10));
	OR2X1 U11_dup1 (.I1(n11_dup1), .I2(n6_dup1), .O(n10_dup1));
	OR2X1 U2 (.I1(n1), .I2(n2), .O(unit2_n74));
	OR2X1 U27 (.I1(n6), .I2(n27), .O(n26));
	OR2X1 U27_dup1 (.I1(n6_dup1), .I2(n27_dup1), .O(n26_dup1));
	OR2X1 U2_dup1 (.I1(n1_dup1), .I2(n2_dup1), .O(unit2_n74_dup1));
	OR2X1 U31 (.I1(n31), .I2(n6), .O(n30));
	OR2X1 U31_dup1 (.I1(n31_dup1), .I2(n6_dup1), .O(n30_dup1));
	OR2X1 U34 (.I1(n35), .I2(n36), .O(n34));
	OR2X1 U34_dup1 (.I1(n35_dup1), .I2(n36_dup1), .O(n34_dup1));
	OR2X1 U37 (.I1(n28), .I2(n25), .O(n33));
	OR2X1 U37_dup1 (.I1(n28_dup1), .I2(n25_dup1), .O(n33_dup1));
	OR2X1 U4 (.I1(n3), .I2(n4), .O(unit2_n72));
	OR2X1 U40 (.I1(n38), .I2(n39), .O(n37));
	OR2X1 U40_dup1 (.I1(n38_dup1), .I2(n39_dup1), .O(n37_dup1));
	OR2X1 U43 (.I1(AC[5]), .I2(n24), .O(n40));
	OR2X1 U43_dup1 (.I1(AC_dup1[5]), .I2(n24_dup1), .O(n40_dup1));
	OR2X1 U44 (.I1(n41), .I2(n42), .O(n24));
	OR2X1 U44_dup1 (.I1(n41_dup1), .I2(n42_dup1), .O(n24_dup1));
	OR2X1 U47 (.I1(AC[4]), .I2(n21), .O(n43));
	OR2X1 U47_dup1 (.I1(AC_dup1[4]), .I2(n21_dup1), .O(n43_dup1));
	OR2X1 U48 (.I1(n44), .I2(n45), .O(n21));
	OR2X1 U48_dup1 (.I1(n44_dup1), .I2(n45_dup1), .O(n21_dup1));
	OR2X1 U4_dup1 (.I1(n3_dup1), .I2(n4_dup1), .O(unit2_n72_dup1));
	OR2X1 U51 (.I1(AC[3]), .I2(n18), .O(n46));
	OR2X1 U51_dup1 (.I1(AC_dup1[3]), .I2(n18_dup1), .O(n46_dup1));
	OR2X1 U52 (.I1(n47), .I2(n48), .O(n18));
	OR2X1 U52_dup1 (.I1(n47_dup1), .I2(n48_dup1), .O(n18_dup1));
	OR2X1 U55 (.I1(AC[2]), .I2(n15), .O(n49));
	OR2X1 U55_dup1 (.I1(AC_dup1[2]), .I2(n15_dup1), .O(n49_dup1));
	OR2X1 U56 (.I1(n50), .I2(n51), .O(n15));
	OR2X1 U56_dup1 (.I1(n50_dup1), .I2(n51_dup1), .O(n15_dup1));
	OR2X1 U59 (.I1(n12), .I2(AC[1]), .O(n52));
	OR2X1 U59_dup1 (.I1(n12_dup1), .I2(AC_dup1[1]), .O(n52_dup1));
	OR2X1 U6 (.I1(n6), .I2(n7), .O(n5));
	OR2X1 U62 (.I1(n53), .I2(n54), .O(unit2_n54));
	OR2X1 U62_dup1 (.I1(n53_dup1), .I2(n54_dup1), .O(unit2_n54_dup1));
	OR2X1 U65 (.I1(n55), .I2(n56), .O(unit2_n52));
	OR2X1 U65_dup1 (.I1(n55_dup1), .I2(n56_dup1), .O(unit2_n52_dup1));
	OR2X1 U68 (.I1(n57), .I2(n58), .O(unit2_n50));
	OR2X1 U68_dup1 (.I1(n57_dup1), .I2(n58_dup1), .O(unit2_n50_dup1));
	OR2X1 U6_dup1 (.I1(n6_dup1), .I2(n7_dup1), .O(n5_dup1));
	OR2X1 U71 (.I1(n59), .I2(n60), .O(unit2_n48));
	OR2X1 U71_dup1 (.I1(n59_dup1), .I2(n60_dup1), .O(unit2_n48_dup1));
	OR2X1 U74 (.I1(n61), .I2(n62), .O(unit2_n46));
	OR2X1 U74_dup1 (.I1(n61_dup1), .I2(n62_dup1), .O(unit2_n46_dup1));
	OR2X1 U77 (.I1(n63), .I2(n64), .O(unit2_n44));
	OR2X1 U77_dup1 (.I1(n63_dup1), .I2(n64_dup1), .O(unit2_n44_dup1));
	OR2X1 U82 (.I1(n66), .I2(done), .O(unit2_n40));
	OR2X1 U82_dup1 (.I1(n66_dup1), .I2(done_dup1), .O(unit2_n40_dup1));
	OR2X1 U84 (.I1(n68), .I2(n69), .O(n67));
	OR2X1 U84_dup1 (.I1(n68_dup1), .I2(n69_dup1), .O(n67_dup1));
	OR2X1 U85 (.I1(unit2_counter_4_), .I2(unit2_counter_3_), .O(n69));
	OR2X1 U85_dup1 (.I1(unit2_counter_4__dup1), .I2(unit2_counter_3__dup1), .O(n69_dup1));
	OR2X1 U86 (.I1(unit2_counter_5_), .I2(n70), .O(n68));
	OR2X1 U86_dup1 (.I1(unit2_counter_5__dup1), .I2(n70_dup1), .O(n68_dup1));
	OR2X1 U87 (.I1(unit2_counter_7_), .I2(unit2_counter_6_), .O(n70));
	OR2X1 U87_dup1 (.I1(unit2_counter_7__dup1), .I2(unit2_counter_6__dup1), .O(n70_dup1));
	OR2X1 U89 (.I1(n71), .I2(n72), .O(n6));
	OR2X1 U89_dup1 (.I1(n71_dup1), .I2(n72_dup1), .O(n6_dup1));
	OR2X1 U90 (.I1(done), .I2(ack), .O(n72));
	OR2X1 U90_dup1 (.I1(done_dup1), .I2(ack_dup1), .O(n72_dup1));
	OR2X1 U94 (.I1(n75), .I2(n76), .O(unit1_n30));
	OR2X1 U94_dup1 (.I1(n75_dup1), .I2(n76_dup1), .O(unit1_n30_dup1));
	OR2X1 U97 (.I1(n78), .I2(n79), .O(unit1_n28));
	OR2X1 U97_dup1 (.I1(n78_dup1), .I2(n79_dup1), .O(unit1_n28_dup1));
	TIE1X1 U1 (.O(unit1_n35));
endmodule
