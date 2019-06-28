// ============================================================================
// Copyright (c) 2013 by Terasic Technologies Inc.
// ============================================================================
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// ============================================================================
//           
//  Terasic Technologies Inc
//  9F., No.176, Sec.2, Gongdao 5th Rd, East Dist, Hsinchu City, 30070. Taiwan
//  
//  
//                     web: http://www.terasic.com/  
//                     email: support@terasic.com
//
// ============================================================================
//Date:  Mon Jul  1 14:21:10 2013
// ============================================================================

//`define ENABLE_DDR3
`define ENABLE_HPS
//`define ENABLE_HSMC

module Baseline_CV_SoCKit(

      ///////// AUD /////////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK,
      output             AUD_I2C_SCLK,
      inout              AUD_I2C_SDAT,
      output             AUD_MUTE,
      output             AUD_XCK,

`ifdef ENABLE_DDR3
      ///////// DDR3 /////////
      output      [14:0] DDR3_A,
      output      [2:0]  DDR3_BA,
      output             DDR3_CAS_n,
      output             DDR3_CKE,
      output             DDR3_CK_n,
      output             DDR3_CK_p,
      output             DDR3_CS_n,
      output      [3:0]  DDR3_DM,
      inout       [31:0] DDR3_DQ,
      inout       [3:0]  DDR3_DQS_n,
      inout       [3:0]  DDR3_DQS_p,
      output             DDR3_ODT,
      output             DDR3_RAS_n,
      output             DDR3_RESET_n,
      input              DDR3_RZQ,
      output             DDR3_WE_n,
`endif /*ENABLE_DDR3*/

      ///////// FAN /////////
      output             FAN_CTRL,

`ifdef ENABLE_HPS
      ///////// HPS /////////
      input              HPS_CONV_USB_n,
      output      [14:0] HPS_DDR3_A,
      output      [2:0]  HPS_DDR3_BA,
      output             HPS_DDR3_CAS_n,
      output             HPS_DDR3_CKE,
      output             HPS_DDR3_CK_n,
      output             HPS_DDR3_CK_p,
      output             HPS_DDR3_CS_n,
      output      [3:0]  HPS_DDR3_DM,
      inout       [31:0] HPS_DDR3_DQ,
      inout       [3:0]  HPS_DDR3_DQS_n,
      inout       [3:0]  HPS_DDR3_DQS_p,
      output             HPS_DDR3_ODT,
      output             HPS_DDR3_RAS_n,
      output             HPS_DDR3_RESET_n,
      input              HPS_DDR3_RZQ,
      output             HPS_DDR3_WE_n,
      output             HPS_ENET_GTX_CLK,
      inout              HPS_ENET_INT_n,
      output             HPS_ENET_MDC,
      inout              HPS_ENET_MDIO,
      input              HPS_ENET_RX_CLK,
      input       [3:0]  HPS_ENET_RX_DATA,
      input              HPS_ENET_RX_DV,
      output      [3:0]  HPS_ENET_TX_DATA,
      output             HPS_ENET_TX_EN,
      inout       [3:0]  HPS_FLASH_DATA,
      output             HPS_FLASH_DCLK,
      output             HPS_FLASH_NCSO,
      inout              HPS_GSENSOR_INT,
      inout              HPS_I2C_CLK,
      inout              HPS_I2C_SDA,
      inout       [3:0]  HPS_KEY,
      inout              HPS_LCM_BK,
      output             HPS_LCM_D_C,
      output             HPS_LCM_RST_N,
      input              HPS_LCM_SPIM_CLK,
      output             HPS_LCM_SPIM_MOSI,
      output             HPS_LCM_SPIM_SS,
      output      [3:0]  HPS_LED,
      inout              HPS_LTC_GPIO,
      output             HPS_SD_CLK,
      inout              HPS_SD_CMD,
      inout       [3:0]  HPS_SD_DATA,
      output             HPS_SPIM_CLK,
      input              HPS_SPIM_MISO,
      output             HPS_SPIM_MOSI,
      output             HPS_SPIM_SS,
      input       [3:0]  HPS_SW,
      input              HPS_UART_RX,
      output             HPS_UART_TX,
      input              HPS_USB_CLKOUT,
      inout       [7:0]  HPS_USB_DATA,
      input              HPS_USB_DIR,
      input              HPS_USB_NXT,
      output             HPS_USB_STP,
`endif /*ENABLE_HPS*/

`ifdef ENABLE_HSMC
      ///////// HSMC /////////
      input       [2:1]  HSMC_CLKIN_n,
      input       [2:1]  HSMC_CLKIN_p,
      output      [2:1]  HSMC_CLKOUT_n,
      output      [2:1]  HSMC_CLKOUT_p,
      output             HSMC_CLK_IN0,
      output             HSMC_CLK_OUT0,
      inout       [3:0]  HSMC_D,
      input       [7:0]  HSMC_GXB_RX_p,
      output      [7:0]  HSMC_GXB_TX_p,
      input              HSMC_REF_CLK_p,
      inout       [16:0] HSMC_RX_n,
      inout       [16:0] HSMC_RX_p,
      output             HSMC_SCL,
      inout              HSMC_SDA,
      inout       [16:0] HSMC_TX_n,
      inout       [16:0] HSMC_TX_p,
`endif /*ENABLE_HSMC*/

      ///////// IRDA /////////
      input              IRDA_RXD,

      ///////// KEY /////////
      input       [3:0]  KEY,

      ///////// LED /////////
      output      [3:0]  LED,

      ///////// OSC /////////
      input              OSC_50_B3B,
      input              OSC_50_B4A,
      input              OSC_50_B5B,
      input              OSC_50_B8A,

      ///////// PCIE /////////
      input              PCIE_PERST_n,
      output             PCIE_WAKE_n,

      ///////// RESET /////////
      input              RESET_n,

      ///////// SI5338 /////////
      inout              SI5338_SCL,
      inout              SI5338_SDA,

      ///////// SW /////////
      input       [3:0]  SW,

      ///////// TEMP /////////
      output             TEMP_CS_n,
      output             TEMP_DIN,
      input              TEMP_DOUT,
      output             TEMP_SCLK,

      ///////// USB /////////
      input              USB_B2_CLK,
      inout       [7:0]  USB_B2_DATA,
      output             USB_EMPTY,
      output             USB_FULL,
      input              USB_OE_n,
      input              USB_RD_n,
      input              USB_RESET_n,
      inout              USB_SCL,
      inout              USB_SDA,
      input              USB_WR_n,

      ///////// VGA /////////
      output      [7:0]  VGA_B,
      output             VGA_BLANK_n,
      output             VGA_CLK,
      output      [7:0]  VGA_G,
      output             VGA_HS,
      output      [7:0]  VGA_R,
      output             VGA_SYNC_n,
      output             VGA_VS
);


//=======================================================
//  REG/WIRE declarations
//=======================================================




//=======================================================
//  Structural coding
//=======================================================
      
soc_system u0 (
	.clk_clk                     (OSC_50_B5B),      // clk.clk
	.reset_reset_n               (RESET_n),         // reset.reset_n
	.memory_mem_a                (HPS_DDR3_A),      // memory.mem_a
	.memory_mem_ba               (HPS_DDR3_BA),     //       .mem_ba
	.memory_mem_ck               (HPS_DDR3_CK_p),   //       .mem_ck
	.memory_mem_ck_n             (HPS_DDR3_CK_n),   //       .mem_ck_n
	.memory_mem_cke              (HPS_DDR3_CKE),    //       .mem_cke
	.memory_mem_cs_n             (HPS_DDR3_CS_n),   //       .mem_cs_n
	.memory_mem_ras_n            (HPS_DDR3_RAS_n),  //       .mem_ras_n
	.memory_mem_cas_n            (HPS_DDR3_CAS_n),  //       .mem_cas_n
	.memory_mem_we_n             (HPS_DDR3_WE_n),   //       .mem_we_n
	.memory_mem_reset_n          (HPS_DDR3_RESET_n),//       .mem_reset_n
	.memory_mem_dq               (HPS_DDR3_DQ),     //       .mem_dq
	.memory_mem_dqs              (HPS_DDR3_DQS_p),  //       .mem_dqs
	.memory_mem_dqs_n            (HPS_DDR3_DQS_n),  //       .mem_dqs_n
	.memory_mem_odt              (HPS_DDR3_ODT),    //       .mem_odt
	.memory_mem_dm               (HPS_DDR3_DM),     //       .mem_dm
	.memory_oct_rzqin            (HPS_DDR3_RZQ),    //       .oct_rzqin
	.hps_io_hps_io_sdio_inst_CMD (HPS_SD_CMD),      // hps_io.hps_io_sdio_inst_CMD
	.hps_io_hps_io_sdio_inst_D0  (HPS_SD_DATA[0]),  //       .hps_io_sdio_inst_D0
	.hps_io_hps_io_sdio_inst_D1  (HPS_SD_DATA[1]),  //       .hps_io_sdio_inst_D1
	.hps_io_hps_io_sdio_inst_CLK (HPS_SD_CLK),      //       .hps_io_sdio_inst_CLK
	.hps_io_hps_io_sdio_inst_D2  (HPS_SD_DATA[2]),  //       .hps_io_sdio_inst_D2
	.hps_io_hps_io_sdio_inst_D3  (HPS_SD_DATA[3]),  //       .hps_io_sdio_inst_D3
	.dipsw_pio_external_connection_export (SW), 		// dipsw_pio_external_connection.export
	.led_pio_external_connection_export   (LED),   	//   led_pio_external_connection.export
	.btn_pio_external_connection_export   (KEY),   	//   btn_pio_external_connection.export
  .spi_master_external_MISO                  (TEMP_DOUT),                  //                spi_0_external.MISO
  .spi_master_external_MOSI                  (TEMP_DIN),                  //                              .MOSI
  .spi_master_external_SCLK                  (TEMP_SCLK),                  //                              .SCLK
  .spi_master_external_SS_n                  (TEMP_CS_n)  
);

endmodule
