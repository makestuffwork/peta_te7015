//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2.1 (lin64) Build 1957588 Wed Aug  9 16:32:10 MDT 2017
//Date        : Sun Oct 15 17:37:23 2017
//Host        : Mini running 64-bit unknown
//Command     : generate_target zsys.bd
//Design      : zsys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "zsys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zsys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "zsys.hwdef" *) 
module zsys
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    fclk,
    mgt_clk1_clk_n,
    mgt_clk1_clk_p);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [0:0]fclk;
  input mgt_clk1_clk_n;
  input mgt_clk1_clk_p;

  wire [0:0]BUFG_I_1;
  wire axi_gpio_0_ip2intc_irpt;
  wire axi_gpio_0_s_axi_arready;
  wire axi_gpio_0_s_axi_awready;
  wire [1:0]axi_gpio_0_s_axi_bresp;
  wire axi_gpio_0_s_axi_bvalid;
  wire [31:0]axi_gpio_0_s_axi_rdata;
  wire [1:0]axi_gpio_0_s_axi_rresp;
  wire axi_gpio_0_s_axi_rvalid;
  wire axi_gpio_0_s_axi_wready;
  wire [31:0]fm_fclk125;
  wire [31:0]fm_mgt1;
  wire labtools_fmeter_0_update;
  wire mgt_clk1_1_CLK_N;
  wire mgt_clk1_1_CLK_P;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK1;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]util_ds_buf_1_BUFG_O;
  wire [7:0]vio_0_probe_out0;
  wire [7:0]vio_0_probe_out1;
  wire [1:0]xlconcat_0_dout;

  assign BUFG_I_1 = fclk[0];
  assign mgt_clk1_1_CLK_N = mgt_clk1_clk_n;
  assign mgt_clk1_1_CLK_P = mgt_clk1_clk_p;
  zsys_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i(vio_0_probe_out1),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(processing_system7_0_FCLK_CLK1),
        .s_axi_araddr(processing_system7_0_M_AXI_GP0_ARADDR[8:0]),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(axi_gpio_0_s_axi_arready),
        .s_axi_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .s_axi_awaddr(processing_system7_0_M_AXI_GP0_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_0_s_axi_awready),
        .s_axi_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .s_axi_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .s_axi_bresp(axi_gpio_0_s_axi_bresp),
        .s_axi_bvalid(axi_gpio_0_s_axi_bvalid),
        .s_axi_rdata(axi_gpio_0_s_axi_rdata),
        .s_axi_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .s_axi_rresp(axi_gpio_0_s_axi_rresp),
        .s_axi_rvalid(axi_gpio_0_s_axi_rvalid),
        .s_axi_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .s_axi_wready(axi_gpio_0_s_axi_wready),
        .s_axi_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .s_axi_wvalid(processing_system7_0_M_AXI_GP0_WVALID));
  zsys_labtools_fmeter_0_0 labtools_fmeter_0
       (.F0(fm_fclk125),
        .F1(fm_mgt1),
        .fin(xlconcat_0_dout),
        .refclk(processing_system7_0_FCLK_CLK1),
        .update(labtools_fmeter_0_update));
  zsys_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK1(processing_system7_0_FCLK_CLK1),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .GPIO_I(vio_0_probe_out0),
        .I2C0_SCL_I(1'b0),
        .I2C0_SDA_I(1'b0),
        .IRQ_F2P(axi_gpio_0_ip2intc_irpt),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK1),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARREADY(axi_gpio_0_s_axi_arready),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWREADY(axi_gpio_0_s_axi_awready),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(axi_gpio_0_s_axi_bresp),
        .M_AXI_GP0_BVALID(axi_gpio_0_s_axi_bvalid),
        .M_AXI_GP0_RDATA(axi_gpio_0_s_axi_rdata),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(axi_gpio_0_s_axi_rresp),
        .M_AXI_GP0_RVALID(axi_gpio_0_s_axi_rvalid),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WREADY(axi_gpio_0_s_axi_wready),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
  zsys_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(mgt_clk1_1_CLK_N),
        .IBUF_DS_P(mgt_clk1_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  zsys_util_ds_buf_1_0 util_ds_buf_1
       (.BUFG_I(BUFG_I_1),
        .BUFG_O(util_ds_buf_1_BUFG_O));
  zsys_vio_0_0 vio_0
       (.clk(processing_system7_0_FCLK_CLK1),
        .probe_in0(fm_fclk125),
        .probe_in1(fm_mgt1),
        .probe_in2(labtools_fmeter_0_update),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1));
  zsys_xlconcat_0_0 xlconcat_0
       (.In0(util_ds_buf_1_BUFG_O),
        .In1(util_ds_buf_0_IBUF_OUT),
        .dout(xlconcat_0_dout));
endmodule
