-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "04/18/2014 09:13:04"

-- 
-- Device: Altera EP1C6Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Controller IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	clock : IN std_logic;
	\in\ : IN std_logic;
	\out\ : OUT std_logic
	);
END Controller;

-- Design Ports Information
-- in	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- out	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_148,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_155,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA


ARCHITECTURE structure OF Controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL \ww_in\ : std_logic;
SIGNAL \ww_out\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \altera_reserved_tms~combout\ : std_logic;
SIGNAL \altera_reserved_tck~combout\ : std_logic;
SIGNAL \altera_reserved_tdi~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~15_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17COUT1_31\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2COUT1_33\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12COUT1_35\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~5_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7COUT1_37\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~20_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~8_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3COUT1_36\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5COUT1_38\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7COUT1_40\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11COUT1_42\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15COUT1_44\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17COUT1_46\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19COUT1_48\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21COUT1_50\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[10]~23\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7COUT1_18\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5COUT1_20\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1COUT1_22\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3COUT1_24\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7COUT1_24\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13COUT1_26\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5COUT1_28\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9COUT1_30\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~1_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \comb_4|count[1]~1\ : std_logic;
SIGNAL \comb_4|count[1]~1COUT1_33\ : std_logic;
SIGNAL \comb_4|count[2]~3\ : std_logic;
SIGNAL \comb_4|count[2]~3COUT1_35\ : std_logic;
SIGNAL \comb_4|count[3]~5\ : std_logic;
SIGNAL \comb_4|count[3]~5COUT1_37\ : std_logic;
SIGNAL \comb_4|count[4]~7\ : std_logic;
SIGNAL \comb_4|count[4]~7COUT1_39\ : std_logic;
SIGNAL \comb_4|count[5]~9\ : std_logic;
SIGNAL \comb_4|count[6]~11\ : std_logic;
SIGNAL \comb_4|count[6]~11COUT1_41\ : std_logic;
SIGNAL \comb_4|count[7]~13\ : std_logic;
SIGNAL \comb_4|count[7]~13COUT1_43\ : std_logic;
SIGNAL \comb_4|count[8]~15\ : std_logic;
SIGNAL \comb_4|count[8]~15COUT1_45\ : std_logic;
SIGNAL \comb_4|count[9]~17\ : std_logic;
SIGNAL \comb_4|count[9]~17COUT1_47\ : std_logic;
SIGNAL \comb_4|count[10]~19\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\ : std_logic;
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_4|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_clock <= clock;
\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(0) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(0) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(1) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(1) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(2) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(2) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(3) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(3) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(4) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(4) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(5) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(5) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(6) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(6) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(7) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(7) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(8) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(8) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(9) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(9) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(10) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(10) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(11) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(11) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(12) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(12) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(13) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(13) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(14) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(14) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAIN_bus\(0) <= \~GND~combout\;

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAIN_bus\(0) <= \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15);

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTAADDR_bus\ <= (\comb_4|count\(11) & \comb_4|count\(10) & \comb_4|count\(9) & \comb_4|count\(8) & \comb_4|count\(7) & \comb_4|count\(6) & \comb_4|count\(5) & 
\comb_4|count\(4) & \comb_4|count\(3) & \comb_4|count\(2) & \comb_4|count\(1) & \comb_4|count\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBADDR_bus\ <= (\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2) & \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1) & 
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0));

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_a\(15) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAOUT_bus\(0);

\comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(15) <= \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAOUT_bus\(0);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\;
\ALT_INV_altera_internal_jtag~TCKUTAP\ <= NOT \altera_internal_jtag~TCKUTAP\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_148,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tms~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tms,
	combout => \altera_reserved_tms~combout\);

-- Location: PIN_147,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tck~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tck,
	combout => \altera_reserved_tck~combout\);

-- Location: PIN_155,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\altera_reserved_tdi~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_altera_reserved_tdi,
	combout => \altera_reserved_tdi~combout\);

-- Location: JTAG_X1_Y10_N1
altera_internal_jtag : cyclone_jtag
PORT MAP (
	tms => \altera_reserved_tms~combout\,
	tck => \altera_reserved_tck~combout\,
	tdi => \altera_reserved_tdi~combout\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LC_X23_Y12_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LC_X23_Y9_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LC_X23_Y11_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LC_X23_Y11_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datac => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LC_X23_Y11_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LC_X23_Y9_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LC_X23_Y11_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LC_X23_Y9_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LC_X23_Y9_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LC_X23_Y9_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LC_X23_Y9_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "555d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: LC_X23_Y11_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LC_X23_Y11_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: LC_X23_Y12_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	aclr => GND,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LC_X23_Y12_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LC_X23_Y12_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LC_X23_Y11_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LC_X23_Y11_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	datac => \altera_internal_jtag~TMSUTAP\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LC_X23_Y11_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LC_X16_Y11_N2
\~GND\ : cyclone_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X21_Y11_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~1_combout\);

-- Location: LC_X23_Y9_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \altera_internal_jtag~TDIUTAP\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LC_X23_Y10_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LC_X23_Y9_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: LC_X23_Y10_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LC_X23_Y10_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LC_X23_Y10_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: LC_X23_Y10_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LC_X23_Y10_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LC_X23_Y10_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LC_X23_Y10_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LC_X23_Y10_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\);

-- Location: LC_X23_Y11_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\);

-- Location: LC_X21_Y10_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: LC_X21_Y10_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: LC_X19_Y10_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\);

-- Location: LC_X21_Y11_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LC_X21_Y11_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LC_X21_Y11_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: LC_X21_Y11_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "efa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LC_X23_Y12_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "df80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LC_X23_Y12_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LC_X23_Y10_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\);

-- Location: LC_X23_Y12_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LC_X23_Y12_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LC_X23_Y12_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\);

-- Location: LC_X20_Y9_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\);

-- Location: LC_X16_Y10_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	aclr => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	sload => VCC,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2));

-- Location: LC_X20_Y9_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\);

-- Location: LC_X21_Y10_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LC_X20_Y9_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~6_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LC_X21_Y10_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\);

-- Location: LC_X21_Y10_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\);

-- Location: LC_X20_Y9_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\);

-- Location: LC_X16_Y7_N0
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~15\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~15_combout\,
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17COUT1_31\);

-- Location: LC_X16_Y8_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\);

-- Location: LC_X21_Y10_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\);

-- Location: LC_X21_Y10_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\);

-- Location: LC_X20_Y9_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\);

-- Location: LC_X20_Y9_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\);

-- Location: LC_X16_Y7_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~15_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0));

-- Location: LC_X16_Y7_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~17COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2COUT1_33\);

-- Location: LC_X16_Y7_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~10\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~2COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\,
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12COUT1_35\);

-- Location: LC_X16_Y7_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~10_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2));

-- Location: LC_X16_Y7_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~5\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~5_combout\,
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7COUT1_37\);

-- Location: LC_X16_Y7_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~5_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3));

-- Location: LC_X16_Y7_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~20\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~20_combout\);

-- Location: LC_X16_Y7_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~20_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~1_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4));

-- Location: LC_X16_Y7_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(0),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(2),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(4),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\);

-- Location: LC_X16_Y8_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "7202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Add1~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1));

-- Location: LC_X21_Y9_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\);

-- Location: LC_X21_Y9_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~8\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~8_combout\);

-- Location: LC_X16_Y8_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\);

-- Location: LC_X16_Y9_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	cout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\);

-- Location: LC_X16_Y10_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(0),
	aclr => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	sload => VCC,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0));

-- Location: LC_X20_Y10_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: LC_X20_Y10_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LC_X21_Y11_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\);

-- Location: LC_X21_Y11_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\);

-- Location: LC_X21_Y11_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~regout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LC_X22_Y11_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\);

-- Location: LC_X22_Y11_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[5]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \~GND~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5));

-- Location: LC_X16_Y10_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	aclr => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3));

-- Location: LC_X20_Y10_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LC_X21_Y10_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\);

-- Location: LC_X19_Y10_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][4]~regout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\);

-- Location: LC_X20_Y10_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|is_in_use_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LC_X21_Y10_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\);

-- Location: LC_X16_Y9_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3COUT1_36\);

-- Location: LC_X16_Y9_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[1]~3COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(2),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5COUT1_38\);

-- Location: LC_X16_Y9_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[2]~5COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(3),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7COUT1_40\);

-- Location: LC_X16_Y9_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[3]~7COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(4),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11COUT1_42\);

-- Location: LC_X16_Y9_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[0]~1\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[4]~11COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(5),
	cout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\);

-- Location: LC_X16_Y8_N0
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(6),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15COUT1_44\);

-- Location: LC_X16_Y8_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[6]~15COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(7),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17COUT1_46\);

-- Location: LC_X16_Y8_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[7]~17COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(8),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19COUT1_48\);

-- Location: LC_X16_Y8_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~19COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(9),
	cout0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21\,
	cout1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21COUT1_50\);

-- Location: LC_X16_Y8_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[10]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[5]~13\,
	cin0 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21\,
	cin1 => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[9]~21COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(10),
	cout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[10]~23\);

-- Location: LC_X16_Y8_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[11]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	sload => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~4_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[8]~9_combout\,
	cin => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg[10]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(11));

-- Location: LC_X16_Y10_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_addr_reg\(1),
	aclr => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~1_combout\,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1));

-- Location: LC_X20_Y10_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ir_loaded_address_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LC_X21_Y11_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: LC_X23_Y12_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\);

-- Location: LC_X20_Y13_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => VCC,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7COUT1_18\);

-- Location: LC_X20_Y13_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => VCC,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5COUT1_20\);

-- Location: LC_X20_Y13_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => VCC,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1COUT1_22\);

-- Location: LC_X20_Y13_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => VCC,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3COUT1_24\);

-- Location: LC_X20_Y13_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~2_combout\);

-- Location: LC_X20_Y13_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => VCC,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~11_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LC_X20_Y13_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LC_X22_Y13_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LC_X20_Y13_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~10_combout\);

-- Location: LC_X20_Y12_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~3\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8af3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~3_combout\);

-- Location: LC_X20_Y12_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "05cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~3_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\);

-- Location: LC_X21_Y11_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LC_X21_Y12_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: LC_X21_Y12_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datad => \altera_internal_jtag~TDIUTAP\,
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: LC_X21_Y12_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LC_X21_Y12_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LC_X21_Y12_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LC_X21_Y12_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: LC_X21_Y12_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LC_X21_Y13_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LC_X21_Y13_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\);

-- Location: LC_X21_Y13_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\);

-- Location: LC_X21_Y13_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\);

-- Location: LC_X21_Y13_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LC_X21_Y12_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LC_X20_Y12_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LC_X21_Y12_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LC_X20_Y13_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\);

-- Location: LC_X21_Y13_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "4cc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\);

-- Location: LC_X20_Y13_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\);

-- Location: LC_X21_Y13_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\);

-- Location: LC_X20_Y12_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LC_X20_Y12_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: LC_X20_Y12_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~16_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: LC_X21_Y12_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	aclr => GND,
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LC_X20_Y12_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "9413",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LC_X20_Y12_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: LC_X20_Y12_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: LC_X20_Y12_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~17_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	aclr => GND,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LC_X20_Y11_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: LC_X20_Y11_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LC_X20_Y11_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LC_X20_Y11_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LC_X20_Y11_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LC_X20_Y11_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LC_X20_Y11_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\);

-- Location: LC_X22_Y13_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\);

-- Location: LC_X23_Y13_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	aclr => GND,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7COUT1_24\);

-- Location: LC_X23_Y13_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	aclr => GND,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~7COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13COUT1_26\);

-- Location: LC_X23_Y13_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\);

-- Location: LC_X23_Y13_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	aclr => GND,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5COUT1_28\);

-- Location: LC_X23_Y13_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	aclr => GND,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~5COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	cout0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9\,
	cout1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9COUT1_30\);

-- Location: LC_X23_Y13_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14_combout\);

-- Location: LC_X23_Y13_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	aclr => GND,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~17_combout\,
	cin0 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9\,
	cin1 => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~9COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: LC_X23_Y13_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~15_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~16_combout\);

-- Location: LC_X23_Y13_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8801",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: LC_X22_Y13_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: LC_X22_Y13_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\);

-- Location: LC_X22_Y13_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\);

-- Location: LC_X22_Y13_N5
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~13_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LC_X22_Y11_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0007",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LC_X23_Y13_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LC_X22_Y13_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LC_X22_Y13_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LC_X22_Y13_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a2a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LC_X22_Y13_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	aclr => GND,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LC_X20_Y11_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LC_X20_Y11_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LC_X20_Y9_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\);

-- Location: LC_X21_Y9_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\);

-- Location: LC_X21_Y9_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\);

-- Location: LC_X22_Y9_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "6600",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\,
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1));

-- Location: LC_X22_Y9_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|Add0~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|Add0~0_combout\);

-- Location: LC_X22_Y9_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "7800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\,
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2));

-- Location: LC_X22_Y9_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(3),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|Add0~0_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\,
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(3));

-- Location: LC_X22_Y9_N0
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(3),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\);

-- Location: LC_X22_Y9_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~2_combout\,
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0));

-- Location: LC_X22_Y9_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~4\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~4_combout\);

-- Location: LC_X22_Y9_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~0_combout\);

-- Location: LC_X22_Y9_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~5\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~4_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~5_combout\);

-- Location: LC_X21_Y9_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|sdr~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\);

-- Location: LC_X21_Y9_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(3));

-- Location: LC_X21_Y9_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(2));

-- Location: LC_X21_Y9_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~5_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(2),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(1));

-- Location: LC_X22_Y9_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "8020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(1),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(2),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~0_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|word_counter\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~1_combout\);

-- Location: LC_X21_Y9_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|clear_signal~combout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(1),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(0));

-- Location: LC_X16_Y8_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~regout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|Equal1~0_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\);

-- Location: LC_X20_Y9_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\);

-- Location: LC_X16_Y4_N4
\comb_4|count[0]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(0) = DFFEAS((((!\comb_4|count\(0)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datac => \comb_4|count\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(0));

-- Location: LC_X16_Y4_N5
\comb_4|count[1]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(1) = DFFEAS(\comb_4|count\(1) $ ((\comb_4|count\(0))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[1]~1\ = CARRY((\comb_4|count\(1) & (\comb_4|count\(0))))
-- \comb_4|count[1]~1COUT1_33\ = CARRY((\comb_4|count\(1) & (\comb_4|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(1),
	datab => \comb_4|count\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(1),
	cout0 => \comb_4|count[1]~1\,
	cout1 => \comb_4|count[1]~1COUT1_33\);

-- Location: LC_X16_Y4_N6
\comb_4|count[2]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(2) = DFFEAS(\comb_4|count\(2) $ ((((\comb_4|count[1]~1\)))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[2]~3\ = CARRY(((!\comb_4|count[1]~1\)) # (!\comb_4|count\(2)))
-- \comb_4|count[2]~3COUT1_35\ = CARRY(((!\comb_4|count[1]~1COUT1_33\)) # (!\comb_4|count\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(2),
	aclr => GND,
	cin0 => \comb_4|count[1]~1\,
	cin1 => \comb_4|count[1]~1COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(2),
	cout0 => \comb_4|count[2]~3\,
	cout1 => \comb_4|count[2]~3COUT1_35\);

-- Location: LC_X16_Y4_N7
\comb_4|count[3]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(3) = DFFEAS(\comb_4|count\(3) $ ((((!\comb_4|count[2]~3\)))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[3]~5\ = CARRY((\comb_4|count\(3) & ((!\comb_4|count[2]~3\))))
-- \comb_4|count[3]~5COUT1_37\ = CARRY((\comb_4|count\(3) & ((!\comb_4|count[2]~3COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(3),
	aclr => GND,
	cin0 => \comb_4|count[2]~3\,
	cin1 => \comb_4|count[2]~3COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(3),
	cout0 => \comb_4|count[3]~5\,
	cout1 => \comb_4|count[3]~5COUT1_37\);

-- Location: LC_X16_Y4_N8
\comb_4|count[4]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(4) = DFFEAS((\comb_4|count\(4) $ ((\comb_4|count[3]~5\))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[4]~7\ = CARRY(((!\comb_4|count[3]~5\) # (!\comb_4|count\(4))))
-- \comb_4|count[4]~7COUT1_39\ = CARRY(((!\comb_4|count[3]~5COUT1_37\) # (!\comb_4|count\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \comb_4|count\(4),
	aclr => GND,
	cin0 => \comb_4|count[3]~5\,
	cin1 => \comb_4|count[3]~5COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(4),
	cout0 => \comb_4|count[4]~7\,
	cout1 => \comb_4|count[4]~7COUT1_39\);

-- Location: LC_X16_Y4_N9
\comb_4|count[5]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(5) = DFFEAS(\comb_4|count\(5) $ ((((!\comb_4|count[4]~7\)))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[5]~9\ = CARRY((\comb_4|count\(5) & ((!\comb_4|count[4]~7COUT1_39\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(5),
	aclr => GND,
	cin0 => \comb_4|count[4]~7\,
	cin1 => \comb_4|count[4]~7COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(5),
	cout => \comb_4|count[5]~9\);

-- Location: LC_X16_Y3_N0
\comb_4|count[6]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(6) = DFFEAS((\comb_4|count\(6) $ ((\comb_4|count[5]~9\))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[6]~11\ = CARRY(((!\comb_4|count[5]~9\) # (!\comb_4|count\(6))))
-- \comb_4|count[6]~11COUT1_41\ = CARRY(((!\comb_4|count[5]~9\) # (!\comb_4|count\(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \comb_4|count\(6),
	aclr => GND,
	cin => \comb_4|count[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(6),
	cout0 => \comb_4|count[6]~11\,
	cout1 => \comb_4|count[6]~11COUT1_41\);

-- Location: LC_X16_Y3_N1
\comb_4|count[7]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(7) = DFFEAS(\comb_4|count\(7) $ ((((!(!\comb_4|count[5]~9\ & \comb_4|count[6]~11\) # (\comb_4|count[5]~9\ & \comb_4|count[6]~11COUT1_41\))))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[7]~13\ = CARRY((\comb_4|count\(7) & ((!\comb_4|count[6]~11\))))
-- \comb_4|count[7]~13COUT1_43\ = CARRY((\comb_4|count\(7) & ((!\comb_4|count[6]~11COUT1_41\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(7),
	aclr => GND,
	cin => \comb_4|count[5]~9\,
	cin0 => \comb_4|count[6]~11\,
	cin1 => \comb_4|count[6]~11COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(7),
	cout0 => \comb_4|count[7]~13\,
	cout1 => \comb_4|count[7]~13COUT1_43\);

-- Location: LC_X16_Y3_N2
\comb_4|count[8]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(8) = DFFEAS(\comb_4|count\(8) $ (((((!\comb_4|count[5]~9\ & \comb_4|count[7]~13\) # (\comb_4|count[5]~9\ & \comb_4|count[7]~13COUT1_43\))))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[8]~15\ = CARRY(((!\comb_4|count[7]~13\)) # (!\comb_4|count\(8)))
-- \comb_4|count[8]~15COUT1_45\ = CARRY(((!\comb_4|count[7]~13COUT1_43\)) # (!\comb_4|count\(8)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	dataa => \comb_4|count\(8),
	aclr => GND,
	cin => \comb_4|count[5]~9\,
	cin0 => \comb_4|count[7]~13\,
	cin1 => \comb_4|count[7]~13COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(8),
	cout0 => \comb_4|count[8]~15\,
	cout1 => \comb_4|count[8]~15COUT1_45\);

-- Location: LC_X16_Y3_N3
\comb_4|count[9]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(9) = DFFEAS((\comb_4|count\(9) $ ((!(!\comb_4|count[5]~9\ & \comb_4|count[8]~15\) # (\comb_4|count[5]~9\ & \comb_4|count[8]~15COUT1_45\)))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[9]~17\ = CARRY(((\comb_4|count\(9) & !\comb_4|count[8]~15\)))
-- \comb_4|count[9]~17COUT1_47\ = CARRY(((\comb_4|count\(9) & !\comb_4|count[8]~15COUT1_45\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \comb_4|count\(9),
	aclr => GND,
	cin => \comb_4|count[5]~9\,
	cin0 => \comb_4|count[8]~15\,
	cin1 => \comb_4|count[8]~15COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(9),
	cout0 => \comb_4|count[9]~17\,
	cout1 => \comb_4|count[9]~17COUT1_47\);

-- Location: LC_X16_Y3_N4
\comb_4|count[10]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(10) = DFFEAS((\comb_4|count\(10) $ (((!\comb_4|count[5]~9\ & \comb_4|count[9]~17\) # (\comb_4|count[5]~9\ & \comb_4|count[9]~17COUT1_47\)))), GLOBAL(\clock~combout\), VCC, , , , , , )
-- \comb_4|count[10]~19\ = CARRY(((!\comb_4|count[9]~17COUT1_47\) # (!\comb_4|count\(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datab => \comb_4|count\(10),
	aclr => GND,
	cin => \comb_4|count[5]~9\,
	cin0 => \comb_4|count[9]~17\,
	cin1 => \comb_4|count[9]~17COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(10),
	cout => \comb_4|count[10]~19\);

-- Location: LC_X16_Y3_N5
\comb_4|count[11]\ : cyclone_lcell
-- Equation(s):
-- \comb_4|count\(11) = DFFEAS(((\comb_4|count[10]~19\ $ (!\comb_4|count\(11)))), GLOBAL(\clock~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clock~combout\,
	datad => \comb_4|count\(11),
	aclr => GND,
	cin => \comb_4|count[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|count\(11));

-- Location: M4K_X17_Y4
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a1_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y10
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a2_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y2
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a3_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y7
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a4_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y1
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a5_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y8
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a6_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y3
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a7_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y14
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a8_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y6
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a9_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y11
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a10_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y13
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a11_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y9
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a13_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y15
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a14_PORTBDATAOUT_bus\);

-- Location: M4K_X17_Y16
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a15_PORTBDATAOUT_bus\);

-- Location: LC_X19_Y8_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_shift_cntr_reg[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\);

-- Location: LC_X19_Y12_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[15]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \altera_internal_jtag~TDIUTAP\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(15),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15));

-- Location: LC_X19_Y12_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[14]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(14),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(15),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14));

-- Location: LC_X19_Y12_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[13]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(13),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(14),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13));

-- Location: M4K_X17_Y12
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a12_PORTBDATAOUT_bus\);

-- Location: LC_X19_Y12_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[12]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(13),
	datad => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(12),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12));

-- Location: LC_X19_Y12_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[11]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(11),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(12),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11));

-- Location: LC_X19_Y12_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[10]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(10),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(11),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10));

-- Location: LC_X19_Y12_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[9]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(9),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(10),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9));

-- Location: LC_X19_Y8_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[8]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(8),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(9),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8));

-- Location: LC_X19_Y8_N6
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[7]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(7),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(8),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7));

-- Location: LC_X19_Y8_N5
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[6]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(6),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(7),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6));

-- Location: LC_X19_Y8_N1
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[5]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(5),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(6),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5));

-- Location: LC_X19_Y8_N7
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[4]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(4),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(5),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4));

-- Location: LC_X19_Y8_N0
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[3]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(3),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(4),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3));

-- Location: LC_X19_Y8_N4
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[2]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(2),
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(3),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2));

-- Location: LC_X19_Y8_N9
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[1]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datab => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(1),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(2),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1));

-- Location: M4K_X17_Y5
\comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0\ : cyclone_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "Memory:comb_5|altsyncram:altsyncram_component|altsyncram_m3d1:auto_generated|altsyncram_pi82:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 16,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \comb_5|altsyncram_component|auto_generated|mgl_prim2|enable_write~0_combout\,
	clk0 => VCC,
	clk1 => \altera_internal_jtag~TCKUTAP\,
	portadatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAIN_bus\,
	portbdatain => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAIN_bus\,
	portaaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTAADDR_bus\,
	portbaddr => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTADATAOUT_bus\,
	portbdataout => \comb_5|altsyncram_component|auto_generated|altsyncram1|ram_block3a0_PORTBDATAOUT_bus\);

-- Location: LC_X19_Y8_N8
\comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~3_combout\,
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(1),
	datad => \comb_5|altsyncram_component|auto_generated|altsyncram1|q_b\(0),
	aclr => GND,
	ena => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0));

-- Location: LC_X20_Y9_N2
\comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_logic_gen:no_name_gen:info_rom_sr|WORD_SR\(0),
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|ram_rom_data_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\);

-- Location: LC_X20_Y9_N3
\comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~1\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \comb_5|altsyncram_component|auto_generated|mgl_prim2|bypass_reg_out~regout\,
	datab => \comb_5|altsyncram_component|auto_generated|mgl_prim2|process_0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~regout\,
	datad => \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\);

-- Location: LC_X20_Y10_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datac => \comb_5|altsyncram_component|auto_generated|mgl_prim2|tdo~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LC_X20_Y10_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "01dd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAP\,
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~regout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	aclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\);

-- Location: LC_X20_Y10_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: LC_X4_Y17_N0
\auto_hub|~GND\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
;

-- Location: LC_X27_Y11_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LC_X24_Y10_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cyclone_lcell
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_in\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_out\);

-- Location: PIN_149,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\altera_reserved_tdo~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \altera_internal_jtag~TDO\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_altera_reserved_tdo);
END structure;


