//
// Verilog description for cell fir, 
// Sat Jan 23 21:26:50 2016
//
// Precision RTL Synthesis, 2008a.47//


module fir ( clk, i_data, o_data ) ;

    input clk ;
    input [15:0]i_data ;
    output [15:0]o_data ;

    wire [15:0]o_data_dup0;
    wire tap1_15_, tap1_14_, tap1_13_, tap1_12_, tap1_11_, tap1_10_, tap1_9_, 
         tap1_8_, tap1_7_, tap1_6_, tap1_5_, tap1_4_, tap1_3_, tap1_2_, tap2_15_, 
         tap2_14_, tap2_13_, tap2_12_, tap2_11_, tap2_10_, tap2_9_, tap2_8_, 
         tap2_7_, tap2_6_, tap2_5_, tap2_4_, tap2_3_, tap2_2_;
    wire [15:0]tap3;
    wire tap4_15_, tap4_14_, tap4_13_, tap4_12_, tap4_11_, tap4_10_, tap4_9_, 
         tap4_8_, tap4_7_, tap4_6_, tap4_5_, tap4_4_, tap4_3_, tap4_2_;
    wire [15:0]prod3;
    wire [14:0]sum2;
    wire [15:0]sum3;
    wire nx14782z1, nx59173z1, nx13785z1, nx60170z1, clk_int;
    wire [816:0] xmplr_dummy ;




    mult_32_4 prod3_mults28_0 (.a ({tap3[15],xmplr_dummy [0],xmplr_dummy [1],
              xmplr_dummy [2],xmplr_dummy [3],xmplr_dummy [4],xmplr_dummy [5],
              xmplr_dummy [6],xmplr_dummy [7],xmplr_dummy [8],xmplr_dummy [9],
              xmplr_dummy [10],xmplr_dummy [11],xmplr_dummy [12],
              xmplr_dummy [13],xmplr_dummy [14],xmplr_dummy [15],tap3[14],
              tap3[13],tap3[12],tap3[11],tap3[10],tap3[9],tap3[8],tap3[7],
              tap3[6],tap3[5],tap3[4],tap3[3],tap3[2],tap3[1],tap3[0]}), .d ({
              xmplr_dummy [16],xmplr_dummy [17],xmplr_dummy [18],
              xmplr_dummy [19],prod3[15],prod3[14],prod3[13],prod3[12],prod3[11]
              ,prod3[10],prod3[9],prod3[8],prod3[7],prod3[6],prod3[5],prod3[4],
              prod3[3],prod3[2],prod3[1],prod3[0],xmplr_dummy [20],
              xmplr_dummy [21],xmplr_dummy [22],xmplr_dummy [23],
              xmplr_dummy [24],xmplr_dummy [25],xmplr_dummy [26],
              xmplr_dummy [27],xmplr_dummy [28],xmplr_dummy [29],
              xmplr_dummy [30],xmplr_dummy [31]})) ;
    add_16_0 sum3_add16_0 (.a ({sum2[14],xmplr_dummy [32],sum2[13],sum2[12],
             sum2[11],sum2[10],sum2[9],sum2[8],sum2[7],sum2[6],sum2[5],sum2[4],
             sum2[3],sum2[2],sum2[1],sum2[0]}), .b ({prod3[15],prod3[14],
             prod3[13],prod3[12],prod3[11],prod3[10],prod3[9],prod3[8],prod3[7],
             prod3[6],prod3[5],prod3[4],prod3[3],prod3[2],prod3[1],prod3[0]}), .d (
             {sum3[15],sum3[14],sum3[13],sum3[12],sum3[11],sum3[10],sum3[9],
             sum3[8],sum3[7],sum3[6],sum3[5],sum3[4],sum3[3],sum3[2],sum3[1],
             sum3[0]})) ;
    add_16_1 o_data_add16_1 (.a ({sum3[15],sum3[14],sum3[13],sum3[12],sum3[11],
             sum3[10],sum3[9],sum3[8],sum3[7],sum3[6],sum3[5],sum3[4],sum3[3],
             sum3[2],sum3[1],sum3[0]}), .b ({tap4_15_,xmplr_dummy [33],
             xmplr_dummy [34],tap4_14_,tap4_13_,tap4_12_,tap4_11_,tap4_10_,
             tap4_9_,tap4_8_,tap4_7_,tap4_6_,tap4_5_,tap4_4_,tap4_3_,tap4_2_}), 
             .d ({o_data_dup0[15],o_data_dup0[14],o_data_dup0[13],
             o_data_dup0[12],o_data_dup0[11],o_data_dup0[10],o_data_dup0[9],
             o_data_dup0[8],o_data_dup0[7],o_data_dup0[6],o_data_dup0[5],
             o_data_dup0[4],o_data_dup0[3],o_data_dup0[2],o_data_dup0[1],
             o_data_dup0[0]})) ;
    add_15_2 sum2_add15_2 (.a ({tap1_15_,xmplr_dummy [35],tap1_14_,tap1_13_,
             tap1_12_,tap1_11_,tap1_10_,tap1_9_,tap1_8_,tap1_7_,tap1_6_,tap1_5_,
             tap1_4_,tap1_3_,tap1_2_}), .b ({tap2_15_,xmplr_dummy [36],tap2_14_,
             tap2_13_,tap2_12_,tap2_11_,tap2_10_,tap2_9_,tap2_8_,tap2_7_,tap2_6_
             ,tap2_5_,tap2_4_,tap2_3_,tap2_2_}), .d ({sum2[14],sum2[13],sum2[12]
             ,sum2[11],sum2[10],sum2[9],sum2[8],sum2[7],sum2[6],sum2[5],sum2[4],
             sum2[3],sum2[2],sum2[1],sum2[0]})) ;
    cycloneii_lcell_ff reg_tap4_9_ (.regout (tap4_9_), .datain (tap3[9]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_8_ (.regout (tap4_8_), .datain (tap3[8]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_7_ (.regout (tap4_7_), .datain (tap3[7]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_6_ (.regout (tap4_6_), .datain (tap3[6]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_5_ (.regout (tap4_5_), .datain (tap3[5]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_4_ (.regout (tap4_4_), .datain (tap3[4]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_3_ (.regout (tap4_3_), .datain (tap3[3]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_2_ (.regout (tap4_2_), .datain (tap3[2]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_15_ (.regout (tap4_15_), .datain (tap3[15]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_14_ (.regout (tap4_14_), .datain (tap3[14]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_13_ (.regout (tap4_13_), .datain (tap3[13]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_12_ (.regout (tap4_12_), .datain (tap3[12]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_11_ (.regout (tap4_11_), .datain (tap3[11]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_10_ (.regout (tap4_10_), .datain (tap3[10]), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_9_ (.regout (tap3[9]), .datain (tap2_9_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_8_ (.regout (tap3[8]), .datain (tap2_8_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_7_ (.regout (tap3[7]), .datain (tap2_7_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_6_ (.regout (tap3[6]), .datain (tap2_6_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_5_ (.regout (tap3[5]), .datain (tap2_5_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_4_ (.regout (tap3[4]), .datain (tap2_4_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_3_ (.regout (tap3[3]), .datain (tap2_3_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_2_ (.regout (tap3[2]), .datain (tap2_2_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_15_ (.regout (tap3[15]), .datain (tap2_15_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_14_ (.regout (tap3[14]), .datain (tap2_14_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_13_ (.regout (tap3[13]), .datain (tap2_13_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_12_ (.regout (tap3[12]), .datain (tap2_12_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_11_ (.regout (tap3[11]), .datain (tap2_11_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_10_ (.regout (tap3[10]), .datain (tap2_10_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_9_ (.regout (tap2_9_), .datain (tap1_9_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_8_ (.regout (tap2_8_), .datain (tap1_8_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_7_ (.regout (tap2_7_), .datain (tap1_7_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_6_ (.regout (tap2_6_), .datain (tap1_6_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_5_ (.regout (tap2_5_), .datain (tap1_5_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_4_ (.regout (tap2_4_), .datain (tap1_4_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_3_ (.regout (tap2_3_), .datain (tap1_3_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_2_ (.regout (tap2_2_), .datain (tap1_2_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_15_ (.regout (tap2_15_), .datain (tap1_15_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_14_ (.regout (tap2_14_), .datain (tap1_14_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_13_ (.regout (tap2_13_), .datain (tap1_13_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_12_ (.regout (tap2_12_), .datain (tap1_12_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_11_ (.regout (tap2_11_), .datain (tap1_11_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_10_ (.regout (tap2_10_), .datain (tap1_10_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io o_data_obuf_9_ (.padio (o_data[9]), .datain (o_data_dup0[9]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_9_.operation_mode = "output";
                 
                 defparam o_data_obuf_9_.output_register_mode = "none";
                 
                 defparam o_data_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_9_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_9_.input_register_mode = "none";
    cycloneii_io o_data_obuf_8_ (.padio (o_data[8]), .datain (o_data_dup0[8]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_8_.operation_mode = "output";
                 
                 defparam o_data_obuf_8_.output_register_mode = "none";
                 
                 defparam o_data_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_8_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_8_.input_register_mode = "none";
    cycloneii_io o_data_obuf_7_ (.padio (o_data[7]), .datain (o_data_dup0[7]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_7_.operation_mode = "output";
                 
                 defparam o_data_obuf_7_.output_register_mode = "none";
                 
                 defparam o_data_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_7_.input_register_mode = "none";
    cycloneii_io o_data_obuf_6_ (.padio (o_data[6]), .datain (o_data_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_6_.operation_mode = "output";
                 
                 defparam o_data_obuf_6_.output_register_mode = "none";
                 
                 defparam o_data_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_6_.input_register_mode = "none";
    cycloneii_io o_data_obuf_5_ (.padio (o_data[5]), .datain (o_data_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_5_.operation_mode = "output";
                 
                 defparam o_data_obuf_5_.output_register_mode = "none";
                 
                 defparam o_data_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_5_.input_register_mode = "none";
    cycloneii_io o_data_obuf_4_ (.padio (o_data[4]), .datain (o_data_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_4_.operation_mode = "output";
                 
                 defparam o_data_obuf_4_.output_register_mode = "none";
                 
                 defparam o_data_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_4_.input_register_mode = "none";
    cycloneii_io o_data_obuf_3_ (.padio (o_data[3]), .datain (o_data_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_3_.operation_mode = "output";
                 
                 defparam o_data_obuf_3_.output_register_mode = "none";
                 
                 defparam o_data_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_3_.input_register_mode = "none";
    cycloneii_io o_data_obuf_2_ (.padio (o_data[2]), .datain (o_data_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_2_.operation_mode = "output";
                 
                 defparam o_data_obuf_2_.output_register_mode = "none";
                 
                 defparam o_data_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_2_.input_register_mode = "none";
    cycloneii_io o_data_obuf_15_ (.padio (o_data[15]), .datain (o_data_dup0[15])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_15_.operation_mode = "output";
                 
                 defparam o_data_obuf_15_.output_register_mode = "none";
                 
                 defparam o_data_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_15_.input_register_mode = "none";
    cycloneii_io o_data_obuf_14_ (.padio (o_data[14]), .datain (o_data_dup0[14])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_14_.operation_mode = "output";
                 
                 defparam o_data_obuf_14_.output_register_mode = "none";
                 
                 defparam o_data_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_14_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_14_.input_register_mode = "none";
    cycloneii_io o_data_obuf_13_ (.padio (o_data[13]), .datain (o_data_dup0[13])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_13_.operation_mode = "output";
                 
                 defparam o_data_obuf_13_.output_register_mode = "none";
                 
                 defparam o_data_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_13_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_13_.input_register_mode = "none";
    cycloneii_io o_data_obuf_12_ (.padio (o_data[12]), .datain (o_data_dup0[12])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_12_.operation_mode = "output";
                 
                 defparam o_data_obuf_12_.output_register_mode = "none";
                 
                 defparam o_data_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_12_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_12_.input_register_mode = "none";
    cycloneii_io o_data_obuf_11_ (.padio (o_data[11]), .datain (o_data_dup0[11])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_11_.operation_mode = "output";
                 
                 defparam o_data_obuf_11_.output_register_mode = "none";
                 
                 defparam o_data_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_11_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_11_.input_register_mode = "none";
    cycloneii_io o_data_obuf_10_ (.padio (o_data[10]), .datain (o_data_dup0[10])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_10_.operation_mode = "output";
                 
                 defparam o_data_obuf_10_.output_register_mode = "none";
                 
                 defparam o_data_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_10_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_10_.input_register_mode = "none";
    cycloneii_io o_data_obuf_1_ (.padio (o_data[1]), .datain (o_data_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_1_.operation_mode = "output";
                 
                 defparam o_data_obuf_1_.output_register_mode = "none";
                 
                 defparam o_data_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_1_.input_register_mode = "none";
    cycloneii_io o_data_obuf_0_ (.padio (o_data[0]), .datain (o_data_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_0_.operation_mode = "output";
                 
                 defparam o_data_obuf_0_.output_register_mode = "none";
                 
                 defparam o_data_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_0_.input_register_mode = "none";
    cycloneii_lcell_ff ix4_reg_tap3_1_ (.regout (tap3[1]), .datain (nx59173z1), 
                       .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix4_reg_tap3_0_ (.regout (tap3[0]), .datain (nx60170z1), 
                       .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0)
                       , .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix4_reg_tap2_1_ (.regout (nx59173z1), .datain (nx14782z1)
                       , .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff ix4_reg_tap2_0_ (.regout (nx60170z1), .datain (nx13785z1)
                       , .sdata (1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0
                       ), .sclr (1'b0), .sload (1'b0)) ;
    cycloneii_io i_data_ibuf_9_ (.regout (tap1_9_), .padio (i_data[9]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_9_.operation_mode = "input";
                 
                 defparam i_data_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_9_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_8_ (.regout (tap1_8_), .padio (i_data[8]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_8_.operation_mode = "input";
                 
                 defparam i_data_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_8_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_7_ (.regout (tap1_7_), .padio (i_data[7]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_7_.operation_mode = "input";
                 
                 defparam i_data_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_7_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_6_ (.regout (tap1_6_), .padio (i_data[6]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_6_.operation_mode = "input";
                 
                 defparam i_data_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_6_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_5_ (.regout (tap1_5_), .padio (i_data[5]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_5_.operation_mode = "input";
                 
                 defparam i_data_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_5_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_4_ (.regout (tap1_4_), .padio (i_data[4]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_4_.operation_mode = "input";
                 
                 defparam i_data_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_4_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_3_ (.regout (tap1_3_), .padio (i_data[3]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_3_.operation_mode = "input";
                 
                 defparam i_data_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_3_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_2_ (.regout (tap1_2_), .padio (i_data[2]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_2_.operation_mode = "input";
                 
                 defparam i_data_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_2_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_15_ (.regout (tap1_15_), .padio (i_data[15]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_15_.operation_mode = "input";
                 
                 defparam i_data_ibuf_15_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_15_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_15_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_14_ (.regout (tap1_14_), .padio (i_data[14]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_14_.operation_mode = "input";
                 
                 defparam i_data_ibuf_14_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_14_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_14_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_13_ (.regout (tap1_13_), .padio (i_data[13]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_13_.operation_mode = "input";
                 
                 defparam i_data_ibuf_13_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_13_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_13_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_12_ (.regout (tap1_12_), .padio (i_data[12]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_12_.operation_mode = "input";
                 
                 defparam i_data_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_12_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_11_ (.regout (tap1_11_), .padio (i_data[11]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_11_.operation_mode = "input";
                 
                 defparam i_data_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_11_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_10_ (.regout (tap1_10_), .padio (i_data[10]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_10_.operation_mode = "input";
                 
                 defparam i_data_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_10_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_1_ (.regout (nx14782z1), .padio (i_data[1]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_1_.operation_mode = "input";
                 
                 defparam i_data_ibuf_1_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_1_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_1_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_0_ (.regout (nx13785z1), .padio (i_data[0]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_0_.operation_mode = "input";
                 
                 defparam i_data_ibuf_0_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_0_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_0_.input_register_mode = "register";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
endmodule


module add_15_2 ( cin, a, b, d, cout ) ;

    input cin ;
    input [14:0]a ;
    input [14:0]b ;
    output [14:0]d ;
    output cout ;

    wire nx1250z41, nx1250z38, nx1250z35, nx1250z32, nx1250z29, nx1250z26, 
         nx1250z23, nx1250z20, nx1250z17, nx1250z14, nx1250z11, nx1250z8, 
         nx1250z5, nx1250z4, nx_add_15_2_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix1250z52927 (.combout (d[11]), .cout (nx1250z8), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z11)) ;
                         
                         defparam ix1250z52927.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52927.sum_lutc_input = "cin";
    assign nx_add_15_2_vcc_net = 1 ;
    cycloneii_lcell_comb ix1250z52928 (.combout (d[10]), .cout (nx1250z11), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z14)) ;
                         
                         defparam ix1250z52928.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52929 (.combout (d[9]), .cout (nx1250z14), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z17)) ;
                         
                         defparam ix1250z52929.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52930 (.combout (d[8]), .cout (nx1250z17), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z20)) ;
                         
                         defparam ix1250z52930.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52931 (.combout (d[7]), .cout (nx1250z20), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z23)) ;
                         
                         defparam ix1250z52931.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52932 (.combout (d[6]), .cout (nx1250z23), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z26)) ;
                         
                         defparam ix1250z52932.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52933 (.combout (d[5]), .cout (nx1250z26), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z29)) ;
                         
                         defparam ix1250z52933.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52934 (.combout (d[4]), .cout (nx1250z29), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z32)) ;
                         
                         defparam ix1250z52934.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52935 (.combout (d[3]), .cout (nx1250z32), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z35)) ;
                         
                         defparam ix1250z52935.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52936 (.combout (d[2]), .cout (nx1250z35), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z38)) ;
                         
                         defparam ix1250z52936.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52937 (.combout (d[1]), .cout (nx1250z38), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z41)) ;
                         
                         defparam ix1250z52937.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52938 (.combout (d[0]), .cout (nx1250z41), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix1250z52938.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix1250z52923 (.combout (d[14]), .dataa (b[14]), .datab (
                         a[14]), .datac (1'b1), .datad (nx_add_15_2_vcc_net), .cin (
                         nx1250z4)) ;
                         defparam ix1250z52923.lut_mask = 16'h9600;
                         
                         defparam ix1250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52925 (.combout (d[13]), .cout (nx1250z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z5)) ;
                         
                         defparam ix1250z52925.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52926 (.combout (d[12]), .cout (nx1250z5), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_15_2_vcc_net), .cin (nx1250z8)) ;
                         
                         defparam ix1250z52926.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52926.sum_lutc_input = "cin";
endmodule


module add_16_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z44, nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, 
         nx2247z26, nx2247z23, nx2247z20, nx2247z17, nx2247z14, nx2247z11, 
         nx2247z8, nx2247z6, nx2247z4, nx_add_16_1_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z14), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z17)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z17), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z20)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z20), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z23)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z23), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z26)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z26), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z29)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z29), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z32)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z32), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z35)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z35), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z38)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z38), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z41)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z41), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z44)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z44), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_1_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[15]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z8)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z8), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z11)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z11), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z14)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
         nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
         nx2247z9, nx2247z6, nx2247z4, nx_add_16_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z15), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z18)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z18), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z21)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z21), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z24)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z24), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z27)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z27), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z30)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z30), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z33)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z33), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z36)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z36), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z39)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z39), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z42)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z42), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z45)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z45), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_0_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[14]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[13]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z9)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z9), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z12)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z12), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z15)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module mult_32_4 ( a, b, d ) ;

    input [31:0]a ;
    input [31:0]b ;
    output [31:0]d ;

    wire a_20__rename150, a_19__rename151, a_18__rename152, a_17__rename153, 
         a_16__rename154, a_15__rename155, a_14__rename156, a_13__rename157, 
         a_12__rename158, a_11__rename159, a_10__rename160, a_9__rename161, 
         a_8__rename162, a_7__rename163, a_6__rename164, b_10__rename165, 
         b_9__rename166, b_8__rename167, b_7__rename168, b_6__rename169, 
         b_5__rename170, b_4__rename171, b_3__rename172, b_2__rename173, 
         b_1__rename174, b_0__rename175, a_21__rename191, b_11__rename192, 
         nx15210z2, nx15210z27, nx15210z26, nx15210z25, nx15210z24, nx15210z23, 
         nx15210z22, nx15210z20, nx15210z18, nx15210z16, nx15210z14, nx15210z12, 
         nx15210z10, nx15210z8, nx15210z6, nx15210z51, nx15210z50, nx15210z49, 
         nx15210z48, nx15210z47, nx15210z46, nx15210z45, nx15210z44, nx15210z43, 
         nx15210z42, nx15210z41, nx15210z40, nx15210z39, nx15210z38, nx15210z62, 
         nx15210z61, nx15210z60, nx15210z59, nx15210z58, nx15210z57, nx15210z56, 
         nx15210z55, nx15210z54, nx15210z53, nx15210z52, nx15210z36, nx15210z35, 
         nx15210z34, nx15210z33, nx15210z32, nx15210z31, nx15210z30, nx15210z29, 
         nx15210z28, nx15210z4, nx15210z37, nx15210z3, nx_mult_32_4_vcc_net;
    wire [82:0] xmplr_dummy ;




    cycloneii_lcell_comb modgen_add_2_ix15210z52925 (.combout (d[26]), .cout (
                         nx15210z2), .dataa (a[31]), .datab (nx15210z3), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         a_21__rename191)) ;
                         
                         defparam modgen_add_2_ix15210z52925.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52925.sum_lutc_input = "cin";
    assign nx_mult_32_4_vcc_net = 1 ;
    cycloneii_lcell_comb modgen_add_2_ix15210z52927 (.combout (d[25]), .cout (
                         nx15210z4), .dataa (a[31]), .datab (a_20__rename150), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z28)
                         ) ;
                         
                         defparam modgen_add_2_ix15210z52927.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52943 (.combout (d[24]), .cout (
                         nx15210z28), .dataa (a[31]), .datab (a_19__rename151), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z29)) ;
                         
                         defparam modgen_add_2_ix15210z52943.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52943.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52944 (.combout (d[23]), .cout (
                         nx15210z29), .dataa (a[31]), .datab (a_18__rename152), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z30)) ;
                         
                         defparam modgen_add_2_ix15210z52944.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52944.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52945 (.combout (d[22]), .cout (
                         nx15210z30), .dataa (a[31]), .datab (a_17__rename153), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z31)) ;
                         
                         defparam modgen_add_2_ix15210z52945.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52945.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52946 (.combout (d[21]), .cout (
                         nx15210z31), .dataa (a[31]), .datab (a_16__rename154), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z32)) ;
                         
                         defparam modgen_add_2_ix15210z52946.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52946.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52947 (.combout (d[20]), .cout (
                         nx15210z32), .dataa (a[31]), .datab (a_15__rename155), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z33)) ;
                         
                         defparam modgen_add_2_ix15210z52947.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52947.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52948 (.combout (d[19]), .cout (
                         nx15210z33), .dataa (a[31]), .datab (a_14__rename156), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z34)) ;
                         
                         defparam modgen_add_2_ix15210z52948.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52948.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52949 (.combout (d[18]), .cout (
                         nx15210z34), .dataa (a[31]), .datab (a_13__rename157), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z35)) ;
                         
                         defparam modgen_add_2_ix15210z52949.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52949.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52950 (.combout (d[17]), .cout (
                         nx15210z35), .dataa (a[31]), .datab (a_12__rename158), 
                         .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z36)) ;
                         
                         defparam modgen_add_2_ix15210z52950.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52950.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52951 (.combout (d[16]), .cout (
                         nx15210z36), .dataa (nx15210z37), .datab (
                         a_11__rename159), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z52)) ;
                         
                         defparam modgen_add_2_ix15210z52951.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52951.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52968 (.combout (d[15]), .cout (
                         nx15210z52), .dataa (b_10__rename165), .datab (
                         a_10__rename160), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z53)) ;
                         
                         defparam modgen_add_2_ix15210z52968.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52968.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52969 (.combout (d[14]), .cout (
                         nx15210z53), .dataa (b_9__rename166), .datab (
                         a_9__rename161), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z54)) ;
                         
                         defparam modgen_add_2_ix15210z52969.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52969.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52970 (.combout (d[13]), .cout (
                         nx15210z54), .dataa (b_8__rename167), .datab (
                         a_8__rename162), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z55)) ;
                         
                         defparam modgen_add_2_ix15210z52970.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52970.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52971 (.combout (d[12]), .cout (
                         nx15210z55), .dataa (b_7__rename168), .datab (
                         a_7__rename163), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z56)) ;
                         
                         defparam modgen_add_2_ix15210z52971.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_2_ix15210z52971.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52972 (.cout (nx15210z56), .dataa (
                         b_6__rename169), .datab (a_6__rename164), .datac (1'b1)
                         , .datad (nx_mult_32_4_vcc_net), .cin (nx15210z57)) ;
                         
                         defparam modgen_add_2_ix15210z52972.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52972.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52974 (.cout (nx15210z57), .dataa (
                         b_5__rename170), .datab (a[5]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z58)) ;
                         
                         defparam modgen_add_2_ix15210z52974.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52974.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52975 (.cout (nx15210z58), .dataa (
                         b_4__rename171), .datab (a[4]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z59)) ;
                         
                         defparam modgen_add_2_ix15210z52975.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52975.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52976 (.cout (nx15210z59), .dataa (
                         b_3__rename172), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z60)) ;
                         
                         defparam modgen_add_2_ix15210z52976.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52976.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52977 (.cout (nx15210z60), .dataa (
                         b_2__rename173), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z61)) ;
                         
                         defparam modgen_add_2_ix15210z52977.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52977.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52978 (.cout (nx15210z61), .dataa (
                         b_1__rename174), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z62)) ;
                         
                         defparam modgen_add_2_ix15210z52978.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_2_ix15210z52978.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_2_ix15210z52979 (.cout (nx15210z62), .dataa (
                         a[0]), .datab (b_0__rename175), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_2_ix15210z52979.lut_mask = 16'h0088;
    cycloneii_lcell_comb modgen_add_1_ix15210z52953 (.combout (b_10__rename165)
                         , .cout (b_11__rename192), .dataa (a[31]), .datab (
                         a[14]), .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z38)) ;
                         
                         defparam modgen_add_1_ix15210z52953.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52953.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52954 (.combout (b_9__rename166), 
                         .cout (nx15210z38), .dataa (a[14]), .datab (a[13]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z39)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52954.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52954.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52955 (.combout (b_8__rename167), 
                         .cout (nx15210z39), .dataa (a[13]), .datab (a[12]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z40)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52955.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52955.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52956 (.combout (b_7__rename168), 
                         .cout (nx15210z40), .dataa (a[12]), .datab (a[11]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z41)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52956.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52956.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52957 (.combout (b_6__rename169), 
                         .cout (nx15210z41), .dataa (a[11]), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z42)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52957.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52957.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52958 (.combout (b_5__rename170), 
                         .cout (nx15210z42), .dataa (a[10]), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z43)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52958.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52958.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52959 (.combout (b_4__rename171), 
                         .cout (nx15210z43), .dataa (a[9]), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z44)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52959.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52959.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52960 (.combout (b_3__rename172), 
                         .cout (nx15210z44), .dataa (a[8]), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z45)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52960.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52960.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52961 (.combout (b_2__rename173), 
                         .cout (nx15210z45), .dataa (a[7]), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z46)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52961.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52961.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52962 (.combout (b_1__rename174), 
                         .cout (nx15210z46), .dataa (a[6]), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z47)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52962.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52962.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52963 (.combout (b_0__rename175), 
                         .cout (nx15210z47), .dataa (a[5]), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z48)
                         ) ;
                         
                         defparam modgen_add_1_ix15210z52963.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_1_ix15210z52963.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52964 (.cout (nx15210z48), .dataa (
                         a[4]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z49)) ;
                         
                         defparam modgen_add_1_ix15210z52964.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix15210z52964.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52965 (.cout (nx15210z49), .dataa (
                         a[3]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z50)) ;
                         
                         defparam modgen_add_1_ix15210z52965.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix15210z52965.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52966 (.cout (nx15210z50), .dataa (
                         a[2]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (nx15210z51)) ;
                         
                         defparam modgen_add_1_ix15210z52966.lut_mask = 16'h00e8;
                         
                         defparam modgen_add_1_ix15210z52966.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_1_ix15210z52967 (.cout (nx15210z51), .dataa (
                         a[0]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_1_ix15210z52967.lut_mask = 16'h0088;
    cycloneii_lcell_comb modgen_add_0_ix15210z52928 (.combout (a_20__rename150)
                         , .cout (a_21__rename191), .dataa (a[31]), .datab (
                         a[14]), .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z6)) ;
                         
                         defparam modgen_add_0_ix15210z52928.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52929 (.combout (a_19__rename151)
                         , .cout (nx15210z6), .dataa (a[31]), .datab (a[13]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z8)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52929.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52930 (.combout (a_18__rename152)
                         , .cout (nx15210z8), .dataa (a[31]), .datab (a[12]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z10)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52930.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52931 (.combout (a_17__rename153)
                         , .cout (nx15210z10), .dataa (a[31]), .datab (a[11]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z12)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52931.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52932 (.combout (a_16__rename154)
                         , .cout (nx15210z12), .dataa (a[31]), .datab (a[10]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z14)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52932.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52933 (.combout (a_15__rename155)
                         , .cout (nx15210z14), .dataa (a[31]), .datab (a[9]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z16)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52933.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52934 (.combout (a_14__rename156)
                         , .cout (nx15210z16), .dataa (a[14]), .datab (a[8]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z18)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52934.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52935 (.combout (a_13__rename157)
                         , .cout (nx15210z18), .dataa (a[13]), .datab (a[7]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z20)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52935.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52936 (.combout (a_12__rename158)
                         , .cout (nx15210z20), .dataa (a[12]), .datab (a[6]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z22)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52936.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52937 (.combout (a_11__rename159)
                         , .cout (nx15210z22), .dataa (a[11]), .datab (a[5]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z23)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52937.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52938 (.combout (a_10__rename160)
                         , .cout (nx15210z23), .dataa (a[10]), .datab (a[4]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z24)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52938.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52939 (.combout (a_9__rename161), 
                         .cout (nx15210z24), .dataa (a[9]), .datab (a[3]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z25)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52939.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52939.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52940 (.combout (a_8__rename162), 
                         .cout (nx15210z25), .dataa (a[8]), .datab (a[2]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z26)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52940.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52940.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52941 (.combout (a_7__rename163), 
                         .cout (nx15210z26), .dataa (a[7]), .datab (a[1]), .datac (
                         1'b1), .datad (nx_mult_32_4_vcc_net), .cin (nx15210z27)
                         ) ;
                         
                         defparam modgen_add_0_ix15210z52941.lut_mask = 16'h96e8;
                         
                         defparam modgen_add_0_ix15210z52941.sum_lutc_input = "cin";
    cycloneii_lcell_comb modgen_add_0_ix15210z52942 (.cout (nx15210z27), .dataa (
                         a[0]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_mult_32_4_vcc_net), .cin (1'b0)) ;
                         
                         defparam modgen_add_0_ix15210z52942.lut_mask = 16'h0088;
    cycloneii_lcell_comb modgen_add_0_ix15210z52973 (.combout (a_6__rename164), 
                         .dataa (1'b1), .datab (1'b1), .datac (a[6]), .datad (
                         a[0]), .cin (1'b0)) ;
                         
                         defparam modgen_add_0_ix15210z52973.lut_mask = 16'h0ff0;
    cycloneii_lcell_comb ix15210z52923 (.combout (d[27]), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z2)) ;
                         
                         defparam ix15210z52923.lut_mask = 16'hf000;
                         
                         defparam ix15210z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix15210z52926 (.combout (nx15210z3), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         nx15210z4)) ;
                         
                         defparam ix15210z52926.lut_mask = 16'hf000;
                         
                         defparam ix15210z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix15210z52952 (.combout (nx15210z37), .dataa (1'b1), .datab (
                         1'b1), .datac (1'b1), .datad (nx_mult_32_4_vcc_net), .cin (
                         b_11__rename192)) ;
                         
                         defparam ix15210z52952.lut_mask = 16'hf000;
                         
                         defparam ix15210z52952.sum_lutc_input = "cin";
endmodule

