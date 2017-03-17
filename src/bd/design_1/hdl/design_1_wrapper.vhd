--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
--Date        : Fri Mar 17 13:31:02 2017
--Host        : WK117 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BCLK_O : out STD_LOGIC;
    LRCLK_O : out STD_LOGIC;
    MCLK_O : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    ddr3_sdram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_cas_n : out STD_LOGIC;
    ddr3_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr3_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ras_n : out STD_LOGIC;
    ddr3_sdram_reset_n : out STD_LOGIC;
    ddr3_sdram_we_n : out STD_LOGIC;
    iic_bus_scl_io : inout STD_LOGIC;
    iic_bus_sda_io : inout STD_LOGIC;
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    ddr3_sdram_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    ddr3_sdram_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ras_n : out STD_LOGIC;
    ddr3_sdram_cas_n : out STD_LOGIC;
    ddr3_sdram_we_n : out STD_LOGIC;
    ddr3_sdram_reset_n : out STD_LOGIC;
    ddr3_sdram_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_dm : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ddr3_sdram_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    iic_bus_scl_i : in STD_LOGIC;
    iic_bus_scl_o : out STD_LOGIC;
    iic_bus_scl_t : out STD_LOGIC;
    iic_bus_sda_i : in STD_LOGIC;
    iic_bus_sda_o : out STD_LOGIC;
    iic_bus_sda_t : out STD_LOGIC;
    push_buttons_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sys_diff_clock_clk_p : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    SDATA_I : in STD_LOGIC;
    BCLK_O : out STD_LOGIC;
    LRCLK_O : out STD_LOGIC;
    MCLK_O : out STD_LOGIC;
    SDATA_O : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_bus_scl_i : STD_LOGIC;
  signal iic_bus_scl_o : STD_LOGIC;
  signal iic_bus_scl_t : STD_LOGIC;
  signal iic_bus_sda_i : STD_LOGIC;
  signal iic_bus_sda_o : STD_LOGIC;
  signal iic_bus_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      BCLK_O => BCLK_O,
      LRCLK_O => LRCLK_O,
      MCLK_O => MCLK_O,
      SDATA_I => SDATA_I,
      SDATA_O => SDATA_O,
      ddr3_sdram_addr(14 downto 0) => ddr3_sdram_addr(14 downto 0),
      ddr3_sdram_ba(2 downto 0) => ddr3_sdram_ba(2 downto 0),
      ddr3_sdram_cas_n => ddr3_sdram_cas_n,
      ddr3_sdram_ck_n(0) => ddr3_sdram_ck_n(0),
      ddr3_sdram_ck_p(0) => ddr3_sdram_ck_p(0),
      ddr3_sdram_cke(0) => ddr3_sdram_cke(0),
      ddr3_sdram_cs_n(0) => ddr3_sdram_cs_n(0),
      ddr3_sdram_dm(3 downto 0) => ddr3_sdram_dm(3 downto 0),
      ddr3_sdram_dq(31 downto 0) => ddr3_sdram_dq(31 downto 0),
      ddr3_sdram_dqs_n(3 downto 0) => ddr3_sdram_dqs_n(3 downto 0),
      ddr3_sdram_dqs_p(3 downto 0) => ddr3_sdram_dqs_p(3 downto 0),
      ddr3_sdram_odt(0) => ddr3_sdram_odt(0),
      ddr3_sdram_ras_n => ddr3_sdram_ras_n,
      ddr3_sdram_reset_n => ddr3_sdram_reset_n,
      ddr3_sdram_we_n => ddr3_sdram_we_n,
      iic_bus_scl_i => iic_bus_scl_i,
      iic_bus_scl_o => iic_bus_scl_o,
      iic_bus_scl_t => iic_bus_scl_t,
      iic_bus_sda_i => iic_bus_sda_i,
      iic_bus_sda_o => iic_bus_sda_o,
      iic_bus_sda_t => iic_bus_sda_t,
      push_buttons_5bits_tri_i(4 downto 0) => push_buttons_5bits_tri_i(4 downto 0),
      reset => reset,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
iic_bus_scl_iobuf: component IOBUF
     port map (
      I => iic_bus_scl_o,
      IO => iic_bus_scl_io,
      O => iic_bus_scl_i,
      T => iic_bus_scl_t
    );
iic_bus_sda_iobuf: component IOBUF
     port map (
      I => iic_bus_sda_o,
      IO => iic_bus_sda_io,
      O => iic_bus_sda_i,
      T => iic_bus_sda_t
    );
end STRUCTURE;
