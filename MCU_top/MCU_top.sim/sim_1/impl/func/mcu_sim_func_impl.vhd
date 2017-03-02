-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
-- Date        : Wed Mar 01 10:28:08 2017
-- Host        : DESKTOP-C4JKFA3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/kilvl/Vivado/CPE233/MCU_top/MCU_top.sim/sim_1/impl/func/mcu_sim_func_impl.vhd
-- Design      : RAT_wrapper
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    data2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[0]\ : out STD_LOGIC;
    \r_LEDS_reg[3]\ : out STD_LOGIC;
    \r_LEDS_reg[5]\ : out STD_LOGIC;
    s_z_reg : out STD_LOGIC;
    \r_LEDS_reg[4]\ : out STD_LOGIC;
    s_z_reg_0 : out STD_LOGIC;
    \r_LEDS_reg[6]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_clk_sig_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ps_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[9]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \0\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ps_reg[0]_0\ : in STD_LOGIC;
    \ps_reg[0]_1\ : in STD_LOGIC;
    s_clk_sig_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_clk_sig_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    data11 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end ALU;

architecture STRUCTURE of ALU is
  signal \_inferred__1__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_n_4\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_n_5\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_n_6\ : STD_LOGIC;
  signal \_inferred__1__0_carry__0_n_7\ : STD_LOGIC;
  signal \_inferred__1__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_n_4\ : STD_LOGIC;
  signal \_inferred__1__0_carry_n_5\ : STD_LOGIC;
  signal \_inferred__1__0_carry_n_7\ : STD_LOGIC;
  signal \^data2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \temp0_inferred__0_carry_n_0\ : STD_LOGIC;
  signal \NLW__inferred__1__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__1__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__1__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp0_inferred__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp0_inferred__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \temp0_inferred__0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \temp0_inferred__0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  data2(7 downto 0) <= \^data2\(7 downto 0);
\_inferred__1__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1__0_carry_n_0\,
      CO(2 downto 0) => \NLW__inferred__1__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => p_0_in(2),
      DI(2 downto 1) => \count_reg[9]_0\(1 downto 0),
      DI(0) => '1',
      O(3) => \_inferred__1__0_carry_n_4\,
      O(2) => \_inferred__1__0_carry_n_5\,
      O(1) => O(0),
      O(0) => \_inferred__1__0_carry_n_7\,
      S(3) => \_inferred__1__0_carry_i_4_n_0\,
      S(2) => \count_reg[9]_1\(1),
      S(1) => \_inferred__1__0_carry_i_6_n_0\,
      S(0) => \count_reg[9]_1\(0)
    );
\_inferred__1__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1__0_carry_n_0\,
      CO(3) => \_inferred__1__0_carry__0_n_0\,
      CO(2 downto 0) => \NLW__inferred__1__0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => p_0_in(6 downto 5),
      DI(1) => \count_reg[9]\(0),
      DI(0) => p_0_in(3),
      O(3) => \_inferred__1__0_carry__0_n_4\,
      O(2) => \_inferred__1__0_carry__0_n_5\,
      O(1) => \_inferred__1__0_carry__0_n_6\,
      O(0) => \_inferred__1__0_carry__0_n_7\,
      S(3) => \_inferred__1__0_carry__0_i_5_n_0\,
      S(2) => \_inferred__1__0_carry__0_i_6_n_0\,
      S(1) => \_inferred__1__0_carry__0_i_7_n_0\,
      S(0) => \_inferred__1__0_carry__0_i_8_n_0\
    );
\_inferred__1__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data2\(6),
      I1 => \0\,
      I2 => data0(6),
      O => p_0_in(6)
    );
\_inferred__1__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data2\(5),
      I1 => \0\,
      I2 => data0(5),
      O => p_0_in(5)
    );
\_inferred__1__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data2\(3),
      I1 => \0\,
      I2 => data0(3),
      O => p_0_in(3)
    );
\_inferred__1__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => data0(6),
      I1 => \^data2\(6),
      I2 => data0(7),
      I3 => \0\,
      I4 => \^data2\(7),
      O => \_inferred__1__0_carry__0_i_5_n_0\
    );
\_inferred__1__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => data0(5),
      I1 => \^data2\(5),
      I2 => data0(6),
      I3 => \0\,
      I4 => \^data2\(6),
      O => \_inferred__1__0_carry__0_i_6_n_0\
    );
\_inferred__1__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => data0(4),
      I1 => \^data2\(4),
      I2 => data0(5),
      I3 => \0\,
      I4 => \^data2\(5),
      O => \_inferred__1__0_carry__0_i_7_n_0\
    );
\_inferred__1__0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => data0(3),
      I1 => \^data2\(3),
      I2 => data0(4),
      I3 => \0\,
      I4 => \^data2\(4),
      O => \_inferred__1__0_carry__0_i_8_n_0\
    );
\_inferred__1__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1__0_carry__0_n_0\,
      CO(3 downto 0) => \NLW__inferred__1__0_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW__inferred__1__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => s_c_reg(0),
      S(3 downto 1) => B"000",
      S(0) => \_inferred__1__0_carry__1_i_1_n_0\
    );
\_inferred__1__0_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => data0(7),
      I1 => \^data2\(7),
      I2 => s_clk_sig_reg_0(0),
      I3 => \0\,
      I4 => s_clk_sig_reg_1(0),
      O => \_inferred__1__0_carry__1_i_1_n_0\
    );
\_inferred__1__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^data2\(2),
      I1 => \0\,
      I2 => data0(2),
      O => p_0_in(2)
    );
\_inferred__1__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => data0(2),
      I1 => \^data2\(2),
      I2 => data0(3),
      I3 => \0\,
      I4 => \^data2\(3),
      O => \_inferred__1__0_carry_i_4_n_0\
    );
\_inferred__1__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444C03FBBBBC03F"
    )
        port map (
      I0 => \^data2\(0),
      I1 => data11(0),
      I2 => data0(0),
      I3 => data0(1),
      I4 => \0\,
      I5 => \^data2\(1),
      O => \_inferred__1__0_carry_i_6_n_0\
    );
reg_reg_0_31_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000474700FF"
    )
        port map (
      I0 => \^data2\(0),
      I1 => \0\,
      I2 => data0(0),
      I3 => \_inferred__1__0_carry_n_7\,
      I4 => \ps_reg[0]_0\,
      I5 => \ps_reg[0]_1\,
      O => \r_LEDS_reg[0]\
    );
reg_reg_0_31_2_2_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^data2\(2),
      I1 => \0\,
      I2 => data0(2),
      I3 => \ps_reg[0]_0\,
      I4 => \_inferred__1__0_carry_n_5\,
      O => s_z_reg
    );
reg_reg_0_31_3_3_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8B8FF00"
    )
        port map (
      I0 => \^data2\(3),
      I1 => \0\,
      I2 => data0(3),
      I3 => \_inferred__1__0_carry_n_4\,
      I4 => \ps_reg[0]_0\,
      I5 => \ps_reg[0]_1\,
      O => \r_LEDS_reg[3]\
    );
reg_reg_0_31_4_4_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8B8FF00"
    )
        port map (
      I0 => \^data2\(4),
      I1 => \0\,
      I2 => data0(4),
      I3 => \_inferred__1__0_carry__0_n_7\,
      I4 => \ps_reg[0]_0\,
      I5 => \ps_reg[0]_1\,
      O => \r_LEDS_reg[4]\
    );
reg_reg_0_31_5_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB8B8FF00"
    )
        port map (
      I0 => \^data2\(5),
      I1 => \0\,
      I2 => data0(5),
      I3 => \_inferred__1__0_carry__0_n_6\,
      I4 => \ps_reg[0]_0\,
      I5 => \ps_reg[0]_1\,
      O => \r_LEDS_reg[5]\
    );
reg_reg_0_31_6_6_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^data2\(6),
      I1 => \0\,
      I2 => data0(6),
      I3 => \ps_reg[0]_0\,
      I4 => \_inferred__1__0_carry__0_n_5\,
      O => \r_LEDS_reg[6]\
    );
reg_reg_0_31_7_7_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^data2\(7),
      I1 => \0\,
      I2 => data0(7),
      I3 => \ps_reg[0]_0\,
      I4 => \_inferred__1__0_carry__0_n_4\,
      O => s_z_reg_0
    );
\temp0_inferred__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp0_inferred__0_carry_n_0\,
      CO(2 downto 0) => \NLW_temp0_inferred__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \^data2\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\temp0_inferred__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp0_inferred__0_carry_n_0\,
      CO(3) => CO(0),
      CO(2 downto 0) => \NLW_temp0_inferred__0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => s_clk_sig_reg(3 downto 0),
      O(3 downto 0) => \^data2\(7 downto 4),
      S(3 downto 0) => \ps_reg[0]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PC is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    SCR_DATA_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[4]_0\ : out STD_LOGIC;
    \count_reg[5]_0\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ps_reg[0]\ : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    \ps_reg[0]_1\ : in STD_LOGIC;
    \ps_reg[0]_2\ : in STD_LOGIC;
    \ps_reg[0]_3\ : in STD_LOGIC;
    \ps_reg[0]_4\ : in STD_LOGIC;
    \ps_reg[0]_5\ : in STD_LOGIC;
    \ps_reg[0]_6\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end PC;

architecture STRUCTURE of PC is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 1 );
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \ps_reg[0]\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \p_0_in__1\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \ps_reg[0]_1\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      O => \p_0_in__1\(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \ps_reg[0]_2\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \p_0_in__1\(3)
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      O => \count_reg[4]_0\
    );
\count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count_reg[5]_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \ps_reg[0]_3\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(6),
      I3 => \count[8]_i_3_n_0\,
      O => \p_0_in__1\(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \ps_reg[0]_4\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(7),
      I3 => \count[8]_i_3_n_0\,
      I4 => \^q\(6),
      O => \p_0_in__1\(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \ps_reg[0]_5\,
      I1 => \ps_reg[0]_0\,
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \count[8]_i_3_n_0\,
      I5 => \^q\(7),
      O => \p_0_in__1\(8)
    );
\count[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count[8]_i_3_n_0\
    );
\count[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \count[8]_i_3_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      O => \count_reg[9]_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => D(1),
      Q => \^q\(4),
      R => SR(0)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => D(2),
      Q => \^q\(5),
      R => SR(0)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(6),
      Q => \^q\(6),
      R => SR(0)
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(7),
      Q => \^q\(7),
      R => SR(0)
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => \p_0_in__1\(8),
      Q => \^q\(8),
      R => SR(0)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \ps_reg[0]_7\(0),
      D => D(3),
      Q => \^q\(9),
      R => SR(0)
    );
scratch_reg_0_255_8_8_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(8),
      I1 => \ps_reg[0]_6\,
      O => SCR_DATA_in(0)
    );
scratch_reg_0_255_9_9_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(9),
      I1 => \ps_reg[0]_6\,
      O => SCR_DATA_in(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Scratch_RAM is
  port (
    \r_LEDS_reg[7]\ : out STD_LOGIC;
    SCR_DATA_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DO : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    SCR_DATA_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    SCR_WR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Scratch_RAM;

architecture STRUCTURE of Scratch_RAM is
  signal \^scr_data_out\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  SCR_DATA_out(9 downto 0) <= \^scr_data_out\(9 downto 0);
reg_reg_0_31_7_7_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^scr_data_out\(7),
      I1 => DO(0),
      I2 => Q(0),
      O => \r_LEDS_reg[7]\
    );
scratch_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(0),
      O => \^scr_data_out\(0),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(1),
      O => \^scr_data_out\(1),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(2),
      O => \^scr_data_out\(2),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(3),
      O => \^scr_data_out\(3),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(4),
      O => \^scr_data_out\(4),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(5),
      O => \^scr_data_out\(5),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(6),
      O => \^scr_data_out\(6),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(7),
      O => \^scr_data_out\(7),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(8),
      O => \^scr_data_out\(8),
      WCLK => CLK,
      WE => SCR_WR
    );
scratch_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => A(7 downto 0),
      D => SCR_DATA_in(9),
      O => \^scr_data_out\(9),
      WCLK => CLK,
      WE => SCR_WR
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Sev_Seg is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CaBus[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC;
    \r_SEV_SEG_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Sev_Seg;

architecture STRUCTURE of Sev_Seg is
  signal \AnBus[0]_i_1_n_0\ : STD_LOGIC;
  signal \AnBus[1]_i_1_n_0\ : STD_LOGIC;
  signal \AnBus[2]_i_1_n_0\ : STD_LOGIC;
  signal \AnBus[3]_i_1_n_0\ : STD_LOGIC;
  signal Bbus : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Bbus[0]_i_2_n_0\ : STD_LOGIC;
  signal \Bbus[1]_i_2_n_0\ : STD_LOGIC;
  signal \Bbus[1]_i_3_n_0\ : STD_LOGIC;
  signal \Bbus[1]_i_4_n_0\ : STD_LOGIC;
  signal \Bbus[2]_i_2_n_0\ : STD_LOGIC;
  signal \Bbus[2]_i_3_n_0\ : STD_LOGIC;
  signal \Bbus[3]_i_2_n_0\ : STD_LOGIC;
  signal \Bbus[3]_i_3_n_0\ : STD_LOGIC;
  signal \Bbus_reg_n_0_[0]\ : STD_LOGIC;
  signal \Bbus_reg_n_0_[1]\ : STD_LOGIC;
  signal \Bbus_reg_n_0_[2]\ : STD_LOGIC;
  signal \Bbus_reg_n_0_[3]\ : STD_LOGIC;
  signal \CaBus[1]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[2]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[3]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[4]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[5]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[6]_i_1_n_0\ : STD_LOGIC;
  signal \CaBus[7]_i_1_n_0\ : STD_LOGIC;
  signal digit : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AnBus[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \AnBus[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \AnBus[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \AnBus[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Bbus[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Bbus[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \CaBus[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \CaBus[2]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \CaBus[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \CaBus[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \CaBus[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \CaBus[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \digit[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \digit[1]_i_1\ : label is "soft_lutpair39";
begin
\AnBus[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => digit(1),
      I1 => digit(0),
      O => \AnBus[0]_i_1_n_0\
    );
\AnBus[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit(1),
      I1 => digit(0),
      O => \AnBus[1]_i_1_n_0\
    );
\AnBus[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => digit(0),
      I1 => digit(1),
      O => \AnBus[2]_i_1_n_0\
    );
\AnBus[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit(1),
      I1 => digit(0),
      O => \AnBus[3]_i_1_n_0\
    );
\AnBus_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \AnBus[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\AnBus_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \AnBus[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\AnBus_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \AnBus[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\AnBus_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \AnBus[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\Bbus[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1310"
    )
        port map (
      I0 => \Bbus[0]_i_2_n_0\,
      I1 => digit(1),
      I2 => digit(0),
      I3 => \r_SEV_SEG_reg[7]\(0),
      O => Bbus(0)
    );
\Bbus[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005575555555555"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(4),
      I1 => \r_SEV_SEG_reg[7]\(0),
      I2 => \r_SEV_SEG_reg[7]\(1),
      I3 => \r_SEV_SEG_reg[7]\(2),
      I4 => \r_SEV_SEG_reg[7]\(3),
      I5 => \Bbus[3]_i_3_n_0\,
      O => \Bbus[0]_i_2_n_0\
    );
\Bbus[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA66A2A"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(1),
      I1 => \Bbus[3]_i_3_n_0\,
      I2 => \r_SEV_SEG_reg[7]\(3),
      I3 => \r_SEV_SEG_reg[7]\(2),
      I4 => \r_SEV_SEG_reg[7]\(4),
      I5 => digit(1),
      O => \Bbus[1]_i_2_n_0\
    );
\Bbus[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0400"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(0),
      I1 => \r_SEV_SEG_reg[7]\(4),
      I2 => \r_SEV_SEG_reg[7]\(3),
      I3 => \Bbus[1]_i_4_n_0\,
      I4 => \r_SEV_SEG_reg[7]\(5),
      I5 => digit(1),
      O => \Bbus[1]_i_3_n_0\
    );
\Bbus[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(5),
      I1 => \r_SEV_SEG_reg[7]\(7),
      I2 => \r_SEV_SEG_reg[7]\(6),
      I3 => \r_SEV_SEG_reg[7]\(2),
      I4 => \r_SEV_SEG_reg[7]\(1),
      O => \Bbus[1]_i_4_n_0\
    );
\Bbus[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080B080B080B0808"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(6),
      I1 => digit(0),
      I2 => digit(1),
      I3 => \Bbus[2]_i_2_n_0\,
      I4 => \r_SEV_SEG_reg[7]\(2),
      I5 => \Bbus[2]_i_3_n_0\,
      O => Bbus(2)
    );
\Bbus[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000004000"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(1),
      I1 => \r_SEV_SEG_reg[7]\(2),
      I2 => \Bbus[3]_i_3_n_0\,
      I3 => \r_SEV_SEG_reg[7]\(4),
      I4 => \r_SEV_SEG_reg[7]\(0),
      I5 => \r_SEV_SEG_reg[7]\(3),
      O => \Bbus[2]_i_2_n_0\
    );
\Bbus[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(5),
      I1 => \r_SEV_SEG_reg[7]\(7),
      I2 => \r_SEV_SEG_reg[7]\(6),
      I3 => \r_SEV_SEG_reg[7]\(4),
      I4 => \r_SEV_SEG_reg[7]\(3),
      I5 => \r_SEV_SEG_reg[7]\(1),
      O => \Bbus[2]_i_3_n_0\
    );
\Bbus[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2320"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(7),
      I1 => digit(1),
      I2 => digit(0),
      I3 => \Bbus[3]_i_2_n_0\,
      O => Bbus(3)
    );
\Bbus[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CE44CC4C"
    )
        port map (
      I0 => \Bbus[3]_i_3_n_0\,
      I1 => \r_SEV_SEG_reg[7]\(3),
      I2 => \r_SEV_SEG_reg[7]\(2),
      I3 => \r_SEV_SEG_reg[7]\(4),
      I4 => \r_SEV_SEG_reg[7]\(1),
      O => \Bbus[3]_i_2_n_0\
    );
\Bbus[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_SEV_SEG_reg[7]\(6),
      I1 => \r_SEV_SEG_reg[7]\(7),
      I2 => \r_SEV_SEG_reg[7]\(5),
      O => \Bbus[3]_i_3_n_0\
    );
\Bbus_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Bbus(0),
      Q => \Bbus_reg_n_0_[0]\,
      R => '0'
    );
\Bbus_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Bbus(1),
      Q => \Bbus_reg_n_0_[1]\,
      R => '0'
    );
\Bbus_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \Bbus[1]_i_2_n_0\,
      I1 => \Bbus[1]_i_3_n_0\,
      O => Bbus(1),
      S => digit(0)
    );
\Bbus_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Bbus(2),
      Q => \Bbus_reg_n_0_[2]\,
      R => '0'
    );
\Bbus_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => Bbus(3),
      Q => \Bbus_reg_n_0_[3]\,
      R => '0'
    );
\CaBus[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0285"
    )
        port map (
      I0 => \Bbus_reg_n_0_[2]\,
      I1 => \Bbus_reg_n_0_[0]\,
      I2 => \Bbus_reg_n_0_[1]\,
      I3 => \Bbus_reg_n_0_[3]\,
      O => \CaBus[1]_i_1_n_0\
    );
\CaBus[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"408E"
    )
        port map (
      I0 => \Bbus_reg_n_0_[1]\,
      I1 => \Bbus_reg_n_0_[0]\,
      I2 => \Bbus_reg_n_0_[2]\,
      I3 => \Bbus_reg_n_0_[3]\,
      O => \CaBus[2]_i_1_n_0\
    );
\CaBus[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"445C"
    )
        port map (
      I0 => \Bbus_reg_n_0_[3]\,
      I1 => \Bbus_reg_n_0_[0]\,
      I2 => \Bbus_reg_n_0_[2]\,
      I3 => \Bbus_reg_n_0_[1]\,
      O => \CaBus[3]_i_1_n_0\
    );
\CaBus[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9924"
    )
        port map (
      I0 => \Bbus_reg_n_0_[1]\,
      I1 => \Bbus_reg_n_0_[2]\,
      I2 => \Bbus_reg_n_0_[3]\,
      I3 => \Bbus_reg_n_0_[0]\,
      O => \CaBus[4]_i_1_n_0\
    );
\CaBus[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \Bbus_reg_n_0_[2]\,
      I1 => \Bbus_reg_n_0_[0]\,
      I2 => \Bbus_reg_n_0_[1]\,
      I3 => \Bbus_reg_n_0_[3]\,
      O => \CaBus[5]_i_1_n_0\
    );
\CaBus[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E448"
    )
        port map (
      I0 => \Bbus_reg_n_0_[0]\,
      I1 => \Bbus_reg_n_0_[2]\,
      I2 => \Bbus_reg_n_0_[1]\,
      I3 => \Bbus_reg_n_0_[3]\,
      O => \CaBus[6]_i_1_n_0\
    );
\CaBus[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2812"
    )
        port map (
      I0 => \Bbus_reg_n_0_[0]\,
      I1 => \Bbus_reg_n_0_[1]\,
      I2 => \Bbus_reg_n_0_[2]\,
      I3 => \Bbus_reg_n_0_[3]\,
      O => \CaBus[7]_i_1_n_0\
    );
\CaBus_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[1]_i_1_n_0\,
      Q => \CaBus[7]\(0),
      R => '0'
    );
\CaBus_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[2]_i_1_n_0\,
      Q => \CaBus[7]\(1),
      R => '0'
    );
\CaBus_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[3]_i_1_n_0\,
      Q => \CaBus[7]\(2),
      R => '0'
    );
\CaBus_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[4]_i_1_n_0\,
      Q => \CaBus[7]\(3),
      R => '0'
    );
\CaBus_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[5]_i_1_n_0\,
      Q => \CaBus[7]\(4),
      R => '0'
    );
\CaBus_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[6]_i_1_n_0\,
      Q => \CaBus[7]\(5),
      R => '0'
    );
\CaBus_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \CaBus[7]_i_1_n_0\,
      Q => \CaBus[7]\(6),
      R => '0'
    );
\digit[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => digit(0),
      O => plusOp(0)
    );
\digit[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => digit(1),
      I1 => digit(0),
      O => plusOp(1)
    );
\digit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(0),
      Q => digit(0),
      R => '0'
    );
\digit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(1),
      Q => digit(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_unit is
  port (
    s_c_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_z_reg : out STD_LOGIC;
    s_z_reg_0 : out STD_LOGIC;
    s_c_reg_0 : out STD_LOGIC;
    \r_LEDS_reg[6]\ : out STD_LOGIC;
    s_z_reg_1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]_0\ : out STD_LOGIC;
    \r_LEDS_reg[0]\ : out STD_LOGIC;
    s_c_reg_1 : out STD_LOGIC;
    s_c_reg_2 : out STD_LOGIC;
    s_flg_shad_ld : out STD_LOGIC;
    OPCODE_HI_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[9]_1\ : in STD_LOGIC;
    \count_reg[9]_2\ : in STD_LOGIC;
    s_out_reg : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    \count_reg[9]_3\ : in STD_LOGIC;
    \ps_reg[0]_1\ : in STD_LOGIC;
    \count_reg[9]_4\ : in STD_LOGIC;
    \ps_reg[0]_2\ : in STD_LOGIC;
    \count_reg[9]_5\ : in STD_LOGIC;
    \ps_reg[0]_3\ : in STD_LOGIC;
    \ps_reg[1]_0\ : in STD_LOGIC;
    s_clk_sig_reg : in STD_LOGIC;
    \ps_reg[0]_4\ : in STD_LOGIC;
    s_clk_sig_reg_0 : in STD_LOGIC;
    \ps_reg[0]_5\ : in STD_LOGIC;
    \count_reg[9]_6\ : in STD_LOGIC;
    \count_reg[9]_7\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end control_unit;

architecture STRUCTURE of control_unit is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ns : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_reg_0_31_2_2_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_6_6_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_6_6_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_7_7_i_5_n_0 : STD_LOGIC;
  signal \^s_c_reg_0\ : STD_LOGIC;
  signal \^s_z_reg_0\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  s_c_reg_0 <= \^s_c_reg_0\;
  s_z_reg_0 <= \^s_z_reg_0\;
\_inferred__1__0_carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => OPCODE_HI_5(1),
      I3 => OPCODE_HI_5(2),
      O => s_c_reg_1
    );
\count[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ps_reg[1]_0\,
      O => E(0)
    );
\count[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \ps_reg[1]_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \count_reg[9]\
    );
\ps[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => ns(0)
    );
\ps[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => s_out_reg,
      O => ns(1)
    );
\ps_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => ns(0),
      Q => \^q\(0)
    );
\ps_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => ns(1),
      Q => \^q\(1)
    );
reg_reg_0_31_0_0_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => OPCODE_HI_5(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \r_LEDS_reg[0]\
    );
reg_reg_0_31_0_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => OPCODE_HI_5(1),
      I3 => \count_reg[9]_7\,
      O => \^s_c_reg_0\
    );
reg_reg_0_31_0_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => OPCODE_HI_5(1),
      I3 => \count_reg[9]_6\,
      O => \^s_z_reg_0\
    );
reg_reg_0_31_2_2_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => reg_reg_0_31_2_2_i_5_n_0,
      I1 => reg_reg_0_31_2_2_i_6_n_0,
      O => s_z_reg_1,
      S => \^s_z_reg_0\
    );
reg_reg_0_31_2_2_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_reg[9]_5\,
      I1 => \ps_reg[0]_3\,
      O => reg_reg_0_31_2_2_i_5_n_0,
      S => \^s_c_reg_0\
    );
reg_reg_0_31_2_2_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => s_clk_sig_reg,
      I1 => \ps_reg[0]_4\,
      O => reg_reg_0_31_2_2_i_6_n_0,
      S => \^s_c_reg_0\
    );
reg_reg_0_31_6_6_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => reg_reg_0_31_6_6_i_5_n_0,
      I1 => reg_reg_0_31_6_6_i_6_n_0,
      O => \r_LEDS_reg[6]\,
      S => \^s_z_reg_0\
    );
reg_reg_0_31_6_6_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_reg[9]_4\,
      I1 => \ps_reg[0]_2\,
      O => reg_reg_0_31_6_6_i_5_n_0,
      S => \^s_c_reg_0\
    );
reg_reg_0_31_6_6_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => s_clk_sig_reg_0,
      I1 => \ps_reg[0]_5\,
      O => reg_reg_0_31_6_6_i_6_n_0,
      S => \^s_c_reg_0\
    );
reg_reg_0_31_7_7_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => reg_reg_0_31_7_7_i_5_n_0,
      I1 => \ps_reg[0]_0\,
      O => s_z_reg,
      S => \^s_z_reg_0\
    );
reg_reg_0_31_7_7_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_reg[9]_3\,
      I1 => \ps_reg[0]_1\,
      O => reg_reg_0_31_7_7_i_5_n_0,
      S => \^s_c_reg_0\
    );
s_c_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => s_c_reg_2
    );
s_c_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_reg[9]_1\,
      I1 => \count_reg[9]_2\,
      O => s_c_reg,
      S => OPCODE_HI_5(3)
    );
scratch_reg_0_255_0_0_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \count_reg[9]_0\
    );
scratch_reg_0_255_0_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => s_flg_shad_ld
    );
\temp[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter is
  port (
    s_out_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ps_reg[0]\ : in STD_LOGIC;
    INT_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end counter;

architecture STRUCTURE of counter is
  signal \FSM_sequential_PS[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PS[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PS[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PS[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PS[2]_i_3_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_count[7]_i_6_n_0\ : STD_LOGIC;
  signal s_count_inc : STD_LOGIC;
  signal s_count_inc0_out : STD_LOGIC;
  signal \s_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_count_rst : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_count[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_count[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_count[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_count[7]_i_3\ : label is "soft_lutpair29";
begin
\FSM_sequential_PS[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \out\(0),
      I1 => \out\(2),
      I2 => s_count_inc0_out,
      I3 => \FSM_sequential_PS[0]_i_3_n_0\,
      O => D(0)
    );
\FSM_sequential_PS[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA8AAA"
    )
        port map (
      I0 => INT_IBUF,
      I1 => \FSM_sequential_PS[0]_i_4_n_0\,
      I2 => \s_count_reg__0\(5),
      I3 => \s_count_reg__0\(4),
      I4 => \s_count_reg__0\(3),
      I5 => \s_count_reg__0\(2),
      O => s_count_inc0_out
    );
\FSM_sequential_PS[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0773F00C0743C"
    )
        port map (
      I0 => \FSM_sequential_PS[2]_i_2_n_0\,
      I1 => \out\(0),
      I2 => INT_IBUF,
      I3 => \out\(2),
      I4 => \out\(1),
      I5 => \FSM_sequential_PS[0]_i_5_n_0\,
      O => \FSM_sequential_PS[0]_i_3_n_0\
    );
\FSM_sequential_PS[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \s_count_reg__0\(1),
      I1 => \s_count_reg__0\(0),
      I2 => \s_count_reg__0\(7),
      I3 => \s_count_reg__0\(6),
      O => \FSM_sequential_PS[0]_i_4_n_0\
    );
\FSM_sequential_PS[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_sequential_PS[2]_i_3_n_0\,
      I1 => \s_count_reg__0\(5),
      I2 => \s_count_reg__0\(6),
      I3 => \s_count_reg__0\(4),
      I4 => \s_count_reg__0\(7),
      O => \FSM_sequential_PS[0]_i_5_n_0\
    );
\FSM_sequential_PS[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02044604"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(2),
      I2 => INT_IBUF,
      I3 => \out\(0),
      I4 => \FSM_sequential_PS[2]_i_2_n_0\,
      O => D(1)
    );
\FSM_sequential_PS[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_sequential_PS[2]_i_3_n_0\,
      I1 => \s_count_reg__0\(5),
      I2 => \s_count_reg__0\(6),
      I3 => \s_count_reg__0\(4),
      I4 => \s_count_reg__0\(7),
      O => \FSM_sequential_PS[2]_i_2_n_0\
    );
\FSM_sequential_PS[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \s_count_reg__0\(1),
      I1 => \s_count_reg__0\(0),
      I2 => \s_count_reg__0\(2),
      I3 => \s_count_reg__0\(3),
      O => \FSM_sequential_PS[2]_i_3_n_0\
    );
\ps[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => s_out,
      I1 => \out\(2),
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => \FSM_sequential_PS[2]_i_2_n_0\,
      I5 => \ps_reg[0]\,
      O => s_out_reg
    );
\s_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_count_reg__0\(0),
      O => \plusOp__0\(0)
    );
\s_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \s_count_reg__0\(0),
      I1 => \s_count_reg__0\(1),
      O => \plusOp__0\(1)
    );
\s_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \s_count_reg__0\(2),
      I1 => \s_count_reg__0\(1),
      I2 => \s_count_reg__0\(0),
      O => \plusOp__0\(2)
    );
\s_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_count_reg__0\(3),
      I1 => \s_count_reg__0\(0),
      I2 => \s_count_reg__0\(1),
      I3 => \s_count_reg__0\(2),
      O => \plusOp__0\(3)
    );
\s_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_count_reg__0\(4),
      I1 => \s_count_reg__0\(2),
      I2 => \s_count_reg__0\(1),
      I3 => \s_count_reg__0\(0),
      I4 => \s_count_reg__0\(3),
      O => \plusOp__0\(4)
    );
\s_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \s_count_reg__0\(5),
      I1 => \s_count_reg__0\(3),
      I2 => \s_count_reg__0\(0),
      I3 => \s_count_reg__0\(1),
      I4 => \s_count_reg__0\(2),
      I5 => \s_count_reg__0\(4),
      O => \plusOp__0\(5)
    );
\s_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \s_count_reg__0\(6),
      I1 => \s_count_reg__0\(4),
      I2 => \s_count_reg__0\(5),
      I3 => \s_count[7]_i_6_n_0\,
      O => \plusOp__0\(6)
    );
\s_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202FFFFF202F0000"
    )
        port map (
      I0 => \FSM_sequential_PS[2]_i_2_n_0\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => INT_IBUF,
      I4 => \out\(0),
      I5 => \s_count[7]_i_4_n_0\,
      O => s_count_rst
    );
\s_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002EFFFF002E0000"
    )
        port map (
      I0 => INT_IBUF,
      I1 => \out\(2),
      I2 => \FSM_sequential_PS[2]_i_2_n_0\,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => \s_count[7]_i_5_n_0\,
      O => s_count_inc
    );
\s_count[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \s_count_reg__0\(7),
      I1 => \s_count_reg__0\(5),
      I2 => \s_count_reg__0\(6),
      I3 => \s_count_reg__0\(4),
      I4 => \s_count[7]_i_6_n_0\,
      O => \plusOp__0\(7)
    );
\s_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1111FFF3"
    )
        port map (
      I0 => s_count_inc0_out,
      I1 => \out\(2),
      I2 => \FSM_sequential_PS[0]_i_5_n_0\,
      I3 => INT_IBUF,
      I4 => \out\(1),
      O => \s_count[7]_i_4_n_0\
    );
\s_count[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080838"
    )
        port map (
      I0 => s_count_inc0_out,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \FSM_sequential_PS[0]_i_5_n_0\,
      I4 => INT_IBUF,
      O => \s_count[7]_i_5_n_0\
    );
\s_count[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \s_count_reg__0\(3),
      I1 => \s_count_reg__0\(0),
      I2 => \s_count_reg__0\(1),
      I3 => \s_count_reg__0\(2),
      O => \s_count[7]_i_6_n_0\
    );
\s_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(0),
      Q => \s_count_reg__0\(0),
      R => s_count_rst
    );
\s_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(1),
      Q => \s_count_reg__0\(1),
      R => s_count_rst
    );
\s_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(2),
      Q => \s_count_reg__0\(2),
      R => s_count_rst
    );
\s_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(3),
      Q => \s_count_reg__0\(3),
      R => s_count_rst
    );
\s_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(4),
      Q => \s_count_reg__0\(4),
      R => s_count_rst
    );
\s_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(5),
      Q => \s_count_reg__0\(5),
      R => s_count_rst
    );
\s_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(6),
      Q => \s_count_reg__0\(6),
      R => s_count_rst
    );
\s_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => s_count_inc,
      D => \plusOp__0\(7),
      Q => \s_count_reg__0\(7),
      R => s_count_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity flags is
  port (
    s_z : out STD_LOGIC;
    data11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sh_c : out STD_LOGIC;
    sh_z : out STD_LOGIC;
    \r_LEDS_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sh_z_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    s_c_reg_0 : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \0\ : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end flags;

architecture STRUCTURE of flags is
  signal \^data11\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_z\ : STD_LOGIC;
  signal \^sh_c\ : STD_LOGIC;
  signal sh_c_i_1_n_0 : STD_LOGIC;
  signal \^sh_z\ : STD_LOGIC;
  signal sh_z_i_1_n_0 : STD_LOGIC;
begin
  data11(0) <= \^data11\(0);
  s_z <= \^s_z\;
  sh_c <= \^sh_c\;
  sh_z <= \^sh_z\;
\_inferred__1__0_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F838"
    )
        port map (
      I0 => data0(0),
      I1 => \^data11\(0),
      I2 => \0\,
      I3 => data2(0),
      O => \r_LEDS_reg[3]\(0)
    );
\_inferred__1__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^data11\(0),
      I1 => data0(0),
      I2 => \0\,
      I3 => data2(0),
      O => \r_LEDS_reg[3]_0\(0)
    );
s_c_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_c_reg_0,
      Q => \^data11\(0),
      R => '0'
    );
s_z_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sh_z_reg_0,
      Q => \^s_z\,
      R => '0'
    );
sh_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^data11\(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^sh_c\,
      O => sh_c_i_1_n_0
    );
sh_c_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sh_c_i_1_n_0,
      Q => \^sh_c\,
      R => '0'
    );
sh_z_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^s_z\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^sh_z\,
      O => sh_z_i_1_n_0
    );
sh_z_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sh_z_i_1_n_0,
      Q => \^sh_z\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity prog_rom is
  port (
    DO : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rf_wr : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_z_reg : out STD_LOGIC;
    s_c_reg : out STD_LOGIC;
    s_c_reg_0 : out STD_LOGIC;
    \r_LEDS_reg[6]\ : out STD_LOGIC;
    \r_LEDS_reg[6]_0\ : out STD_LOGIC;
    s_z_reg_0 : out STD_LOGIC;
    s_z_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]\ : out STD_LOGIC;
    s_z_reg_2 : out STD_LOGIC;
    \r_LEDS_reg[0]\ : out STD_LOGIC;
    s_z_reg_3 : out STD_LOGIC;
    \r_LEDS_reg[6]_1\ : out STD_LOGIC;
    \count_reg[1]\ : out STD_LOGIC;
    \count_reg[2]\ : out STD_LOGIC;
    \count_reg[3]\ : out STD_LOGIC;
    \count_reg[6]\ : out STD_LOGIC;
    \count_reg[7]\ : out STD_LOGIC;
    \count_reg[8]\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg[7]\ : out STD_LOGIC;
    s_sp_incr : out STD_LOGIC;
    \r_SEV_SEG_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    \count_reg[9]_1\ : out STD_LOGIC;
    \count_reg[9]_2\ : out STD_LOGIC;
    SCR_DATA_in : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    s_c_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_z_reg_4 : out STD_LOGIC;
    SCR_WR : out STD_LOGIC;
    s_c_reg_2 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_c_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_c_reg_4 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_LEDS_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_out_reg : out STD_LOGIC;
    s_c_reg_5 : out STD_LOGIC;
    s_z_reg_5 : out STD_LOGIC;
    \r_LEDS_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg_6 : out STD_LOGIC;
    s_c_reg_7 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \ps_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ps_reg[0]\ : in STD_LOGIC;
    \temp_reg[7]_0\ : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_clk_sig_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ps_reg[0]_1\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SCR_DATA_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_flg_shad_ld : in STD_LOGIC;
    \ps_reg[0]_2\ : in STD_LOGIC;
    \count_reg[4]\ : in STD_LOGIC;
    \count_reg[5]\ : in STD_LOGIC;
    \count_reg[9]_3\ : in STD_LOGIC;
    sh_c : in STD_LOGIC;
    \ps_reg[0]_3\ : in STD_LOGIC;
    \ps_reg[0]_4\ : in STD_LOGIC;
    s_clk_sig_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_clk_sig_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg_8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_5\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_6\ : in STD_LOGIC;
    \ps_reg[0]_7\ : in STD_LOGIC;
    \ps_reg[0]_8\ : in STD_LOGIC;
    data11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_9\ : in STD_LOGIC;
    \ps_reg[0]_10\ : in STD_LOGIC;
    \ps_reg[1]_0\ : in STD_LOGIC;
    \temp_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dy_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_z : in STD_LOGIC;
    \ps_reg[1]_1\ : in STD_LOGIC;
    \temp_reg[1]\ : in STD_LOGIC;
    \temp_reg[0]\ : in STD_LOGIC;
    \temp_reg[2]\ : in STD_LOGIC;
    s_clk_sig_reg_2 : in STD_LOGIC;
    \temp_reg[3]\ : in STD_LOGIC;
    \ps_reg[1]_2\ : in STD_LOGIC;
    SWITCHES_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_out_reg_0 : in STD_LOGIC;
    s_out : in STD_LOGIC;
    \count_reg[9]_4\ : in STD_LOGIC;
    sh_z : in STD_LOGIC;
    pwropt : in STD_LOGIC;
    pwropt_1 : in STD_LOGIC
  );
end prog_rom;

architecture STRUCTURE of prog_rom is
  signal B : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_1\ : STD_LOGIC;
  signal \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_2\ : STD_LOGIC;
  signal \^do\ : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \^dop\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal OPCODE_HI_5 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_inferred__1__0_carry_i_10_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_i_11_n_0\ : STD_LOGIC;
  signal \count[9]_i_4_n_0\ : STD_LOGIC;
  signal \count[9]_i_7_n_0\ : STD_LOGIC;
  signal \count[9]_i_8_n_0\ : STD_LOGIC;
  signal \^count_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg[9]\ : STD_LOGIC;
  signal \^count_reg[9]_0\ : STD_LOGIC;
  signal \^count_reg[9]_1\ : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal \g0_b0__2_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g1_b0__1_n_0\ : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal \^r_leds_reg[0]\ : STD_LOGIC;
  signal \^r_leds_reg[6]_0\ : STD_LOGIC;
  signal \r_SEV_SEG[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_SEV_SEG[7]_i_3_n_0\ : STD_LOGIC;
  signal ram_1024_x_18_ENARDEN_cooolgate_en_sig_3 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_12_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_13_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_15_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_18_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_19_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_20_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_21_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_23_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_0_0_i_7_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_2_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_7_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_8_n_0 : STD_LOGIC;
  signal reg_reg_0_31_1_1_i_9_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_7_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_8_n_0 : STD_LOGIC;
  signal reg_reg_0_31_2_2_i_9_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_2_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_8_n_0 : STD_LOGIC;
  signal reg_reg_0_31_3_3_i_9_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_2_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_8_n_0 : STD_LOGIC;
  signal reg_reg_0_31_4_4_i_9_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_2_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_5_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_6_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_8_n_0 : STD_LOGIC;
  signal reg_reg_0_31_5_5_i_9_n_0 : STD_LOGIC;
  signal reg_reg_0_31_6_6_i_3_n_0 : STD_LOGIC;
  signal reg_reg_0_31_6_6_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_7_7_i_10_n_0 : STD_LOGIC;
  signal reg_reg_0_31_7_7_i_12_n_0 : STD_LOGIC;
  signal reg_reg_0_31_7_7_i_4_n_0 : STD_LOGIC;
  signal reg_reg_0_31_7_7_i_9_n_0 : STD_LOGIC;
  signal s_c_i_2_n_0 : STD_LOGIC;
  signal s_c_i_3_n_0 : STD_LOGIC;
  signal s_c_i_6_n_0 : STD_LOGIC;
  signal s_c_i_7_n_0 : STD_LOGIC;
  signal s_c_i_9_n_0 : STD_LOGIC;
  signal \^s_c_reg\ : STD_LOGIC;
  signal \^s_c_reg_0\ : STD_LOGIC;
  signal s_flg_z_ld : STD_LOGIC;
  signal s_out_i_2_n_0 : STD_LOGIC;
  signal s_port_id : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_sp_incr\ : STD_LOGIC;
  signal s_z_i_2_n_0 : STD_LOGIC;
  signal s_z_i_3_n_0 : STD_LOGIC;
  signal s_z_i_4_n_0 : STD_LOGIC;
  signal \^s_z_reg_1\ : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_12_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_13_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_17_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_22_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_24_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_26_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_28_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_30_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_32_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_33_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_35_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_36_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_37_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_38_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_39_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_40_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_41_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_42_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_43_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_44_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_45_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_46_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_47_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_48_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_49_n_0 : STD_LOGIC;
  signal \temp0_inferred__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \temp0_inferred__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \temp0_inferred__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \temp[7]_i_4_n_0\ : STD_LOGIC;
  signal \temp[7]_i_7_n_0\ : STD_LOGIC;
  signal \temp[7]_i_8_n_0\ : STD_LOGIC;
  signal \^temp_reg[7]\ : STD_LOGIC;
  signal NLW_ram_1024_x_18_DIBDI_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_1024_x_18_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_1024_x_18_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_1024_x_18_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of ram_1024_x_18 : label is "INDEPENDENT";
  attribute IS_CLOCK_GATED : boolean;
  attribute IS_CLOCK_GATED of ram_1024_x_18 : label is std.standard.true;
  attribute POWER_OPTED_CE : string;
  attribute POWER_OPTED_CE of ram_1024_x_18 : label is "ENARDEN=NEW";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_1024_x_18 : label is "RAMB16_S18";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ram_1024_x_18 : label is "ADDR[0]:ADDRARDADDR[4] ADDR[1]:ADDRARDADDR[5] ADDR[2]:ADDRARDADDR[6] ADDR[3]:ADDRARDADDR[7] ADDR[4]:ADDRARDADDR[8] ADDR[5]:ADDRARDADDR[9] ADDR[6]:ADDRARDADDR[10] ADDR[7]:ADDRARDADDR[11] ADDR[8]:ADDRARDADDR[12] ADDR[9]:ADDRARDADDR[13] CLK:CLKARDCLK DI[0]:DIADI[0] DI[10]:DIADI[10] DI[11]:DIADI[11] DI[12]:DIADI[12] DI[13]:DIADI[13] DI[14]:DIADI[14] DI[15]:DIADI[15] DI[1]:DIADI[1] DI[2]:DIADI[2] DI[3]:DIADI[3] DI[4]:DIADI[4] DI[5]:DIADI[5] DI[6]:DIADI[6] DI[7]:DIADI[7] DI[8]:DIADI[8] DI[9]:DIADI[9] DIP[0]:DIPADIP[0] DIP[1]:DIPADIP[1] DO[0]:DOADO[0] DO[10]:DOADO[10] DO[11]:DOADO[11] DO[12]:DOADO[12] DO[13]:DOADO[13] DO[14]:DOADO[14] DO[15]:DOADO[15] DO[1]:DOADO[1] DO[2]:DOADO[2] DO[3]:DOADO[3] DO[4]:DOADO[4] DO[5]:DOADO[5] DO[6]:DOADO[6] DO[7]:DOADO[7] DO[8]:DOADO[8] DO[9]:DOADO[9] DOP[0]:DOPADOP[0] DOP[1]:DOPADOP[1] EN:ENARDEN SSR:RSTRAMARSTRAM WE:WEA[1],WEA[0]";
  attribute box_type : string;
  attribute box_type of ram_1024_x_18 : label is "PRIMITIVE";
begin
  DO(12 downto 0) <= \^do\(12 downto 0);
  DOP(1 downto 0) <= \^dop\(1 downto 0);
  \count_reg[0]_0\ <= \^count_reg[0]_0\;
  \count_reg[9]\ <= \^count_reg[9]\;
  \count_reg[9]_0\ <= \^count_reg[9]_0\;
  \count_reg[9]_1\ <= \^count_reg[9]_1\;
  \r_LEDS_reg[0]\ <= \^r_leds_reg[0]\;
  \r_LEDS_reg[6]_0\ <= \^r_leds_reg[6]_0\;
  s_c_reg <= \^s_c_reg\;
  s_c_reg_0 <= \^s_c_reg_0\;
  s_sp_incr <= \^s_sp_incr\;
  s_z_reg_1 <= \^s_z_reg_1\;
  \temp_reg[7]\ <= \^temp_reg[7]\;
\CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_gate_1_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => pwropt,
      Q => \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_1\
    );
\CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_gate_2_cooolDelFlop\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => '0',
      D => pwropt_1,
      Q => \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_2\
    );
\_inferred__1__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => s_clk_sig_reg(3),
      I1 => dy_out(7),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(5),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_4(3)
    );
\_inferred__1__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => s_clk_sig_reg(2),
      I1 => dy_out(6),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(4),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_4(2)
    );
\_inferred__1__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => s_clk_sig_reg(1),
      I1 => dy_out(5),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(3),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_4(1)
    );
\_inferred__1__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => s_clk_sig_reg(0),
      I1 => dy_out(4),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(2),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_4(0)
    );
\_inferred__1__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => data0(2),
      I1 => \^s_c_reg\,
      I2 => data2(4),
      O => s_c_reg_1(0)
    );
\_inferred__1__0_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006666FFFFFFEF"
    )
        port map (
      I0 => \^dop\(0),
      I1 => OPCODE_HI_5(0),
      I2 => s_port_id(0),
      I3 => \^do\(0),
      I4 => \^do\(12),
      I5 => \^dop\(1),
      O => \_inferred__1__0_carry_i_10_n_0\
    );
\_inferred__1__0_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF1FFF0FFF0"
    )
        port map (
      I0 => \^dop\(1),
      I1 => \^do\(0),
      I2 => \^do\(11),
      I3 => \^do\(12),
      I4 => \^dop\(0),
      I5 => OPCODE_HI_5(0),
      O => \_inferred__1__0_carry_i_11_n_0\
    );
\_inferred__1__0_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => DI(3),
      I1 => dy_out(3),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(1),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => \r_LEDS_reg[3]_0\(2)
    );
\_inferred__1__0_carry_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => DI(2),
      I1 => dy_out(2),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => s_port_id(2),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => \r_LEDS_reg[3]_0\(1)
    );
\_inferred__1__0_carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AA56A6666656A6"
    )
        port map (
      I0 => DI(1),
      I1 => dy_out(1),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(0),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => \r_LEDS_reg[3]_0\(0)
    );
\_inferred__1__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(0),
      I1 => \^s_c_reg\,
      O => \r_LEDS_reg[3]\(0)
    );
\_inferred__1__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"09F9"
    )
        port map (
      I0 => data0(0),
      I1 => data0(1),
      I2 => \^s_c_reg\,
      I3 => data2(2),
      O => \r_LEDS_reg[3]_1\(0)
    );
\_inferred__1__0_carry_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004444FFF4"
    )
        port map (
      I0 => \_inferred__1__0_carry_i_10_n_0\,
      I1 => \^do\(11),
      I2 => scratch_reg_0_255_0_0_i_48_n_0,
      I3 => OPCODE_HI_5(0),
      I4 => \_inferred__1__0_carry_i_11_n_0\,
      I5 => \ps_reg[1]_2\,
      O => \^s_c_reg\
    );
\count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8000033B8FFFF"
    )
        port map (
      I0 => SCR_DATA_out(0),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(1),
      I3 => s_flg_shad_ld,
      I4 => \ps_reg[0]_2\,
      I5 => Q(0),
      O => D(0)
    );
\count[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(1),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(2),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[1]\
    );
\count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(2),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(3),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[2]\
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(3),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(4),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[3]\
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => SCR_DATA_out(4),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(5),
      I3 => s_flg_shad_ld,
      I4 => \ps_reg[0]_2\,
      I5 => \count_reg[4]\,
      O => D(1)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => SCR_DATA_out(5),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(6),
      I3 => s_flg_shad_ld,
      I4 => \ps_reg[0]_2\,
      I5 => \count_reg[5]\,
      O => D(2)
    );
\count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(6),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(7),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[6]\
    );
\count[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(7),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(8),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[7]\
    );
\count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33B8B8B8"
    )
        port map (
      I0 => SCR_DATA_out(8),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(9),
      I3 => \ps_reg[1]\(0),
      I4 => \ps_reg[1]\(1),
      O => \count_reg[8]\
    );
\count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => SCR_DATA_out(9),
      I1 => \count[9]_i_4_n_0\,
      I2 => \^do\(10),
      I3 => s_flg_shad_ld,
      I4 => \ps_reg[0]_2\,
      I5 => \count_reg[9]_3\,
      O => D(3)
    );
\count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000002020200020"
    )
        port map (
      I0 => \count[9]_i_7_n_0\,
      I1 => \count[9]_i_8_n_0\,
      I2 => \ps_reg[1]\(1),
      I3 => \^dop\(0),
      I4 => \^do\(0),
      I5 => OPCODE_HI_5(0),
      O => \count_reg[0]\
    );
\count[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => s_out_i_2_n_0,
      I1 => \^do\(0),
      I2 => s_port_id(0),
      I3 => OPCODE_HI_5(0),
      O => \count[9]_i_4_n_0\
    );
\count[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF11EE05FAFFFF"
    )
        port map (
      I0 => \^dop\(0),
      I1 => data11(0),
      I2 => s_z,
      I3 => s_port_id(0),
      I4 => \^do\(0),
      I5 => OPCODE_HI_5(0),
      O => \count[9]_i_7_n_0\
    );
\count[9]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^do\(11),
      I1 => \^dop\(1),
      I2 => \^do\(12),
      O => \count[9]_i_8_n_0\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000025F000006F7"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000000001FF"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => \g0_b0__0_n_0\
    );
\g0_b0__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F000001F0"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => s_c_reg_6
    );
\g0_b0__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F000001FF"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => \g0_b0__2_n_0\
    );
g1_b0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1AF7"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^do\(11),
      I2 => \^do\(12),
      I3 => \^dop\(0),
      O => g1_b0_n_0
    );
\g1_b0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01F0"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^do\(11),
      I2 => \^do\(12),
      I3 => \^dop\(0),
      O => s_c_reg_7
    );
\g1_b0__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^do\(11),
      I2 => \^do\(12),
      I3 => \^dop\(0),
      O => \g1_b0__1_n_0\
    );
\r_LEDS[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \r_SEV_SEG[7]_i_2_n_0\,
      I1 => s_port_id(0),
      I2 => \^do\(0),
      I3 => \^do\(4),
      I4 => \^do\(5),
      I5 => \r_SEV_SEG[7]_i_3_n_0\,
      O => \r_LEDS_reg[0]_0\(0)
    );
\r_SEV_SEG[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \r_SEV_SEG[7]_i_2_n_0\,
      I1 => s_port_id(0),
      I2 => \^do\(0),
      I3 => \^do\(5),
      I4 => \^do\(4),
      I5 => \r_SEV_SEG[7]_i_3_n_0\,
      O => \r_SEV_SEG_reg[0]\(0)
    );
\r_SEV_SEG[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^dop\(1),
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(12),
      I3 => \^do\(11),
      I4 => \ps_reg[0]_10\,
      I5 => \^dop\(0),
      O => \r_SEV_SEG[7]_i_2_n_0\
    );
\r_SEV_SEG[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^do\(2),
      I1 => s_port_id(2),
      I2 => \^do\(3),
      I3 => \^do\(1),
      O => \r_SEV_SEG[7]_i_3_n_0\
    );
ram_1024_x_18: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"000000000000000000000000000001FD3E088BB8223FFEEE0F933F7F00000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"809881886BFF4340037FA001822A02FF81006BFF43406380A000418162006100",
      INIT_02 => X"81032B0081132C0081237FFF7FFF7FFF7FFF7FFF7FFFCD016DFFCC016CFFCB01",
      INIT_03 => X"820A0114418181018098818B2B00819B2C0081ABCD016DFFCC016CFFCB0180C0",
      INIT_04 => X"00000000000000000000000000000000000000008228A00262FF43406301A003",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"81E0000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => Q(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => CLK,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"0000000000000000",
      DIBDI(15 downto 0) => NLW_ram_1024_x_18_DIBDI_UNCONNECTED(15 downto 0),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => NLW_ram_1024_x_18_DIPBDIP_UNCONNECTED(1 downto 0),
      DOADO(15 downto 14) => \^do\(12 downto 11),
      DOADO(13) => OPCODE_HI_5(0),
      DOADO(12 downto 3) => \^do\(10 downto 1),
      DOADO(2) => s_port_id(2),
      DOADO(1) => \^do\(0),
      DOADO(0) => s_port_id(0),
      DOBDO(15 downto 0) => NLW_ram_1024_x_18_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => \^dop\(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_1024_x_18_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => ram_1024_x_18_ENARDEN_cooolgate_en_sig_3,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
ram_1024_x_18_ENARDEN_cooolgate_en_gate_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"e"
    )
        port map (
      I0 => \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_2\,
      I1 => \CPU/program_counter_part/prog_rom_part/ram_1024_x_18_cooolgate_en_sig_1\,
      O => ram_1024_x_18_ENARDEN_cooolgate_en_sig_3
    );
reg_reg_0_31_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_reg_0_31_0_0_i_3_n_0,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_0_0_i_5_n_0,
      O => din(0)
    );
reg_reg_0_31_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => DI(1),
      I1 => s_clk_sig_reg(3),
      I2 => \^s_c_reg\,
      I3 => reg_reg_0_31_0_0_i_15_n_0,
      I4 => \^s_c_reg_0\,
      I5 => data11(0),
      O => reg_reg_0_31_0_0_i_10_n_0
    );
reg_reg_0_31_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBBFFBBEBFF"
    )
        port map (
      I0 => \ps_reg[0]_10\,
      I1 => \^dop\(0),
      I2 => \^do\(0),
      I3 => \^do\(11),
      I4 => OPCODE_HI_5(0),
      I5 => \^do\(12),
      O => reg_reg_0_31_0_0_i_12_n_0
    );
reg_reg_0_31_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(0),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(0),
      I4 => reg_reg_0_31_2_2_i_9_n_0,
      I5 => \^do\(11),
      O => reg_reg_0_31_0_0_i_13_n_0
    );
reg_reg_0_31_0_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBFFFBFAABF"
    )
        port map (
      I0 => \ps_reg[0]_10\,
      I1 => reg_reg_0_31_0_0_i_18_n_0,
      I2 => reg_reg_0_31_0_0_i_19_n_0,
      I3 => \^dop\(1),
      I4 => reg_reg_0_31_0_0_i_20_n_0,
      I5 => \^dop\(0),
      O => \^s_c_reg_0\
    );
reg_reg_0_31_0_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88888880888888"
    )
        port map (
      I0 => DI(0),
      I1 => dy_out(0),
      I2 => reg_reg_0_31_0_0_i_21_n_0,
      I3 => \ps_reg[1]_1\,
      I4 => reg_reg_0_31_0_0_i_23_n_0,
      I5 => s_port_id(0),
      O => reg_reg_0_31_0_0_i_15_n_0
    );
reg_reg_0_31_0_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666FEFE8888BEE6"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^dop\(0),
      I2 => \^do\(0),
      I3 => s_port_id(0),
      I4 => \^dop\(1),
      I5 => \^do\(11),
      O => s_c_reg_2
    );
reg_reg_0_31_0_0_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555FFFBFFEFABBB"
    )
        port map (
      I0 => \^dop\(1),
      I1 => \^dop\(0),
      I2 => s_port_id(0),
      I3 => \^do\(0),
      I4 => \^do\(11),
      I5 => OPCODE_HI_5(0),
      O => s_z_reg_4
    );
reg_reg_0_31_0_0_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"340F"
    )
        port map (
      I0 => \^do\(0),
      I1 => \^dop\(0),
      I2 => s_port_id(0),
      I3 => OPCODE_HI_5(0),
      O => reg_reg_0_31_0_0_i_18_n_0
    );
reg_reg_0_31_0_0_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^do\(11),
      I1 => \^do\(12),
      O => reg_reg_0_31_0_0_i_19_n_0
    );
reg_reg_0_31_0_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => g0_b0_n_0,
      I1 => \^dop\(1),
      I2 => g1_b0_n_0,
      I3 => \ps_reg[1]\(1),
      I4 => \ps_reg[1]\(0),
      O => s_rf_wr
    );
reg_reg_0_31_0_0_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^do\(12),
      O => reg_reg_0_31_0_0_i_20_n_0
    );
reg_reg_0_31_0_0_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dop\(0),
      I1 => \^do\(12),
      O => reg_reg_0_31_0_0_i_21_n_0
    );
reg_reg_0_31_0_0_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D7"
    )
        port map (
      I0 => \^dop\(0),
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(11),
      O => reg_reg_0_31_0_0_i_23_n_0
    );
reg_reg_0_31_0_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202020202F2F202F"
    )
        port map (
      I0 => reg_reg_0_31_0_0_i_6_n_0,
      I1 => reg_reg_0_31_0_0_i_7_n_0,
      I2 => \ps_reg[0]_3\,
      I3 => \ps_reg[0]_5\,
      I4 => reg_reg_0_31_0_0_i_10_n_0,
      I5 => \ps_reg[0]_6\,
      O => reg_reg_0_31_0_0_i_3_n_0
    );
reg_reg_0_31_0_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDD9989DD"
    )
        port map (
      I0 => \^dop\(1),
      I1 => \^do\(11),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(0),
      I4 => s_port_id(0),
      I5 => reg_reg_0_31_0_0_i_12_n_0,
      O => reg_reg_0_31_0_0_i_4_n_0
    );
reg_reg_0_31_0_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => reg_reg_0_31_0_0_i_13_n_0,
      I1 => SCR_DATA_out(0),
      I2 => \^do\(0),
      I3 => \^do\(11),
      I4 => \temp_reg[6]\(0),
      O => reg_reg_0_31_0_0_i_5_n_0
    );
reg_reg_0_31_0_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF00B8B8"
    )
        port map (
      I0 => data2(0),
      I1 => \^s_c_reg_0\,
      I2 => reg_reg_0_31_0_0_i_15_n_0,
      I3 => DI(1),
      I4 => \ps_reg[0]_5\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_0_0_i_6_n_0
    );
reg_reg_0_31_0_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0D000E0"
    )
        port map (
      I0 => DI(0),
      I1 => \ps_reg[0]_5\,
      I2 => \^s_c_reg\,
      I3 => \^s_c_reg_0\,
      I4 => \^r_leds_reg[0]\,
      O => reg_reg_0_31_0_0_i_7_n_0
    );
reg_reg_0_31_1_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2E"
    )
        port map (
      I0 => reg_reg_0_31_1_1_i_2_n_0,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_1_1_i_3_n_0,
      O => din(1)
    );
reg_reg_0_31_1_1_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(0),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(1),
      O => reg_reg_0_31_1_1_i_10_n_0
    );
reg_reg_0_31_1_1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => SCR_DATA_out(1),
      I1 => \^do\(0),
      I2 => \temp_reg[6]\(1),
      I3 => \^do\(11),
      I4 => reg_reg_0_31_1_1_i_4_n_0,
      O => reg_reg_0_31_1_1_i_2_n_0
    );
reg_reg_0_31_1_1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EFEFEFE"
    )
        port map (
      I0 => reg_reg_0_31_1_1_i_5_n_0,
      I1 => reg_reg_0_31_1_1_i_6_n_0,
      I2 => \ps_reg[0]_3\,
      I3 => reg_reg_0_31_1_1_i_7_n_0,
      I4 => reg_reg_0_31_1_1_i_8_n_0,
      O => reg_reg_0_31_1_1_i_3_n_0
    );
reg_reg_0_31_1_1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FF40FF40FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(1),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(1),
      I4 => \^dop\(1),
      I5 => OPCODE_HI_5(0),
      O => reg_reg_0_31_1_1_i_4_n_0
    );
reg_reg_0_31_1_1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003101330331013"
    )
        port map (
      I0 => data0(0),
      I1 => \ps_reg[0]_5\,
      I2 => \^s_c_reg_0\,
      I3 => O(0),
      I4 => \^s_c_reg\,
      I5 => data2(1),
      O => reg_reg_0_31_1_1_i_5_n_0
    );
reg_reg_0_31_1_1_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03008B00CF008B00"
    )
        port map (
      I0 => reg_reg_0_31_1_1_i_9_n_0,
      I1 => \^s_c_reg_0\,
      I2 => DI(0),
      I3 => \ps_reg[0]_5\,
      I4 => \^s_c_reg\,
      I5 => DI(2),
      O => reg_reg_0_31_1_1_i_6_n_0
    );
reg_reg_0_31_1_1_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7755F5F7"
    )
        port map (
      I0 => \^s_c_reg\,
      I1 => \ps_reg[0]_5\,
      I2 => \^s_c_reg_0\,
      I3 => DI(1),
      I4 => reg_reg_0_31_1_1_i_10_n_0,
      O => reg_reg_0_31_1_1_i_7_n_0
    );
reg_reg_0_31_1_1_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF008B8B"
    )
        port map (
      I0 => data2(1),
      I1 => \^s_c_reg_0\,
      I2 => reg_reg_0_31_1_1_i_9_n_0,
      I3 => DI(2),
      I4 => \ps_reg[0]_5\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_1_1_i_8_n_0
    );
reg_reg_0_31_1_1_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1D551DFFFFFFFF"
    )
        port map (
      I0 => dy_out(1),
      I1 => \temp0_inferred__0_carry_i_6_n_0\,
      I2 => \^do\(0),
      I3 => OPCODE_HI_5(0),
      I4 => \temp0_inferred__0_carry_i_5_n_0\,
      I5 => DI(1),
      O => reg_reg_0_31_1_1_i_9_n_0
    );
reg_reg_0_31_2_2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \ps_reg[0]_1\,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_2_2_i_3_n_0,
      I3 => reg_reg_0_31_2_2_i_4_n_0,
      O => din(2)
    );
reg_reg_0_31_2_2_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC44B888FC77B888"
    )
        port map (
      I0 => B(2),
      I1 => \^s_c_reg\,
      I2 => data2(2),
      I3 => \^s_c_reg_0\,
      I4 => DI(2),
      I5 => \^s_z_reg_1\,
      O => s_z_reg_0
    );
reg_reg_0_31_2_2_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^s_c_reg_0\,
      I1 => \^s_z_reg_1\,
      I2 => \^s_c_reg\,
      I3 => DI(3),
      O => s_z_reg_3
    );
reg_reg_0_31_2_2_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => s_port_id(2),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(2),
      O => B(2)
    );
reg_reg_0_31_2_2_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => s_port_id(2),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(2),
      O => \^s_z_reg_1\
    );
reg_reg_0_31_2_2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(2),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(2),
      I4 => reg_reg_0_31_2_2_i_9_n_0,
      I5 => \^do\(11),
      O => reg_reg_0_31_2_2_i_3_n_0
    );
reg_reg_0_31_2_2_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04C4"
    )
        port map (
      I0 => \temp_reg[6]\(2),
      I1 => \^do\(11),
      I2 => \^do\(0),
      I3 => SCR_DATA_out(2),
      O => reg_reg_0_31_2_2_i_4_n_0
    );
reg_reg_0_31_2_2_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF5D"
    )
        port map (
      I0 => \^do\(3),
      I1 => \^do\(1),
      I2 => \^do\(2),
      I3 => \^do\(5),
      I4 => \^do\(4),
      O => reg_reg_0_31_2_2_i_7_n_0
    );
reg_reg_0_31_2_2_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \^do\(3),
      I1 => reg_reg_0_31_2_2_i_9_n_0,
      I2 => \^do\(2),
      I3 => s_port_id(2),
      I4 => \^do\(0),
      I5 => s_port_id(0),
      O => reg_reg_0_31_2_2_i_8_n_0
    );
reg_reg_0_31_2_2_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dop\(1),
      I1 => OPCODE_HI_5(0),
      O => reg_reg_0_31_2_2_i_9_n_0
    );
reg_reg_0_31_3_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_reg_0_31_3_3_i_2_n_0,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_3_3_i_3_n_0,
      O => din(3)
    );
reg_reg_0_31_3_3_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00A8088888A808"
    )
        port map (
      I0 => DI(3),
      I1 => dy_out(3),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(1),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => reg_reg_0_31_3_3_i_10_n_0
    );
reg_reg_0_31_3_3_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8080"
    )
        port map (
      I0 => reg_reg_0_31_3_3_i_4_n_0,
      I1 => reg_reg_0_31_3_3_i_5_n_0,
      I2 => \ps_reg[0]_3\,
      I3 => reg_reg_0_31_3_3_i_6_n_0,
      I4 => \ps_reg[0]_7\,
      O => reg_reg_0_31_3_3_i_2_n_0
    );
reg_reg_0_31_3_3_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => SCR_DATA_out(3),
      I1 => \^do\(0),
      I2 => \temp_reg[6]\(3),
      I3 => \^do\(11),
      I4 => reg_reg_0_31_3_3_i_8_n_0,
      O => reg_reg_0_31_3_3_i_3_n_0
    );
reg_reg_0_31_3_3_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7755F5F7"
    )
        port map (
      I0 => \^s_c_reg\,
      I1 => \ps_reg[0]_5\,
      I2 => \^s_c_reg_0\,
      I3 => DI(3),
      I4 => reg_reg_0_31_3_3_i_9_n_0,
      O => reg_reg_0_31_3_3_i_4_n_0
    );
reg_reg_0_31_3_3_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF00B8B8"
    )
        port map (
      I0 => data2(3),
      I1 => \^s_c_reg_0\,
      I2 => reg_reg_0_31_3_3_i_10_n_0,
      I3 => s_clk_sig_reg(0),
      I4 => \ps_reg[0]_5\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_3_3_i_5_n_0
    );
reg_reg_0_31_3_3_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440C0C00CC0C0C"
    )
        port map (
      I0 => s_clk_sig_reg(0),
      I1 => \ps_reg[0]_5\,
      I2 => DI(2),
      I3 => reg_reg_0_31_3_3_i_10_n_0,
      I4 => \^s_c_reg_0\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_3_3_i_6_n_0
    );
reg_reg_0_31_3_3_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FFFFFF40404040"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(3),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => \^dop\(1),
      I4 => OPCODE_HI_5(0),
      I5 => SCR_DATA_out(3),
      O => reg_reg_0_31_3_3_i_8_n_0
    );
reg_reg_0_31_3_3_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(1),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(3),
      O => reg_reg_0_31_3_3_i_9_n_0
    );
reg_reg_0_31_4_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_reg_0_31_4_4_i_2_n_0,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_4_4_i_3_n_0,
      O => din(4)
    );
reg_reg_0_31_4_4_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1D551DFFFFFFFF"
    )
        port map (
      I0 => dy_out(4),
      I1 => \temp0_inferred__0_carry_i_6_n_0\,
      I2 => \^do\(2),
      I3 => OPCODE_HI_5(0),
      I4 => \temp0_inferred__0_carry_i_5_n_0\,
      I5 => s_clk_sig_reg(0),
      O => reg_reg_0_31_4_4_i_10_n_0
    );
reg_reg_0_31_4_4_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"404F4040"
    )
        port map (
      I0 => reg_reg_0_31_4_4_i_4_n_0,
      I1 => reg_reg_0_31_4_4_i_5_n_0,
      I2 => \ps_reg[0]_3\,
      I3 => reg_reg_0_31_4_4_i_6_n_0,
      I4 => \ps_reg[0]_9\,
      O => reg_reg_0_31_4_4_i_2_n_0
    );
reg_reg_0_31_4_4_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => SCR_DATA_out(4),
      I1 => \^do\(0),
      I2 => \temp_reg[6]\(4),
      I3 => \^do\(11),
      I4 => reg_reg_0_31_4_4_i_8_n_0,
      O => reg_reg_0_31_4_4_i_3_n_0
    );
reg_reg_0_31_4_4_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA220A20"
    )
        port map (
      I0 => \^s_c_reg\,
      I1 => \^s_c_reg_0\,
      I2 => s_clk_sig_reg(0),
      I3 => reg_reg_0_31_4_4_i_9_n_0,
      I4 => \ps_reg[0]_5\,
      O => reg_reg_0_31_4_4_i_4_n_0
    );
reg_reg_0_31_4_4_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF008B8B"
    )
        port map (
      I0 => data2(4),
      I1 => \^s_c_reg_0\,
      I2 => reg_reg_0_31_4_4_i_10_n_0,
      I3 => s_clk_sig_reg(1),
      I4 => \ps_reg[0]_5\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_4_4_i_5_n_0
    );
reg_reg_0_31_4_4_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03008B00CF008B00"
    )
        port map (
      I0 => reg_reg_0_31_4_4_i_10_n_0,
      I1 => \^s_c_reg_0\,
      I2 => DI(3),
      I3 => \ps_reg[0]_5\,
      I4 => \^s_c_reg\,
      I5 => s_clk_sig_reg(1),
      O => reg_reg_0_31_4_4_i_6_n_0
    );
reg_reg_0_31_4_4_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FF40FF40FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(4),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(4),
      I4 => \^dop\(1),
      I5 => OPCODE_HI_5(0),
      O => reg_reg_0_31_4_4_i_8_n_0
    );
reg_reg_0_31_4_4_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(2),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(4),
      O => reg_reg_0_31_4_4_i_9_n_0
    );
reg_reg_0_31_5_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg_reg_0_31_5_5_i_2_n_0,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_5_5_i_3_n_0,
      O => din(5)
    );
reg_reg_0_31_5_5_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00A8088888A808"
    )
        port map (
      I0 => s_clk_sig_reg(1),
      I1 => dy_out(5),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(3),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => reg_reg_0_31_5_5_i_10_n_0
    );
reg_reg_0_31_5_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808F8080"
    )
        port map (
      I0 => reg_reg_0_31_5_5_i_4_n_0,
      I1 => reg_reg_0_31_5_5_i_5_n_0,
      I2 => \ps_reg[0]_3\,
      I3 => reg_reg_0_31_5_5_i_6_n_0,
      I4 => \ps_reg[0]_8\,
      O => reg_reg_0_31_5_5_i_2_n_0
    );
reg_reg_0_31_5_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => reg_reg_0_31_5_5_i_8_n_0,
      I1 => SCR_DATA_out(5),
      I2 => \^do\(0),
      I3 => \^do\(11),
      I4 => \temp_reg[6]\(5),
      O => reg_reg_0_31_5_5_i_3_n_0
    );
reg_reg_0_31_5_5_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7755F5F7"
    )
        port map (
      I0 => \^s_c_reg\,
      I1 => \ps_reg[0]_5\,
      I2 => \^s_c_reg_0\,
      I3 => s_clk_sig_reg(1),
      I4 => reg_reg_0_31_5_5_i_9_n_0,
      O => reg_reg_0_31_5_5_i_4_n_0
    );
reg_reg_0_31_5_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF00B8B8"
    )
        port map (
      I0 => data2(5),
      I1 => \^s_c_reg_0\,
      I2 => reg_reg_0_31_5_5_i_10_n_0,
      I3 => s_clk_sig_reg(2),
      I4 => \ps_reg[0]_5\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_5_5_i_5_n_0
    );
reg_reg_0_31_5_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440C0C00CC0C0C"
    )
        port map (
      I0 => s_clk_sig_reg(2),
      I1 => \ps_reg[0]_5\,
      I2 => s_clk_sig_reg(0),
      I3 => reg_reg_0_31_5_5_i_10_n_0,
      I4 => \^s_c_reg_0\,
      I5 => \^s_c_reg\,
      O => reg_reg_0_31_5_5_i_6_n_0
    );
reg_reg_0_31_5_5_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(5),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(5),
      I4 => reg_reg_0_31_2_2_i_9_n_0,
      I5 => \^do\(11),
      O => reg_reg_0_31_5_5_i_8_n_0
    );
reg_reg_0_31_5_5_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(3),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(5),
      O => reg_reg_0_31_5_5_i_9_n_0
    );
reg_reg_0_31_6_6_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \ps_reg[0]_0\,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => reg_reg_0_31_6_6_i_3_n_0,
      I3 => reg_reg_0_31_6_6_i_4_n_0,
      O => din(6)
    );
reg_reg_0_31_6_6_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^s_c_reg_0\,
      I1 => \^r_leds_reg[6]_0\,
      I2 => \^s_c_reg\,
      I3 => s_clk_sig_reg(3),
      O => \r_LEDS_reg[6]_1\
    );
reg_reg_0_31_6_6_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(4),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(6),
      O => B(6)
    );
reg_reg_0_31_6_6_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(4),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(6),
      O => \^r_leds_reg[6]_0\
    );
reg_reg_0_31_6_6_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4040FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(6),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(6),
      I4 => reg_reg_0_31_2_2_i_9_n_0,
      I5 => \^do\(11),
      O => reg_reg_0_31_6_6_i_3_n_0
    );
reg_reg_0_31_6_6_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04C4"
    )
        port map (
      I0 => \temp_reg[6]\(6),
      I1 => \^do\(11),
      I2 => \^do\(0),
      I3 => SCR_DATA_out(6),
      O => reg_reg_0_31_6_6_i_4_n_0
    );
reg_reg_0_31_6_6_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC44B888FC77B888"
    )
        port map (
      I0 => B(6),
      I1 => \^s_c_reg\,
      I2 => data2(6),
      I3 => \^s_c_reg_0\,
      I4 => s_clk_sig_reg(2),
      I5 => \^r_leds_reg[6]_0\,
      O => \r_LEDS_reg[6]\
    );
reg_reg_0_31_7_7_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \ps_reg[0]\,
      I1 => reg_reg_0_31_0_0_i_4_n_0,
      I2 => \temp_reg[7]_0\,
      I3 => \^do\(11),
      I4 => reg_reg_0_31_7_7_i_4_n_0,
      O => din(7)
    );
reg_reg_0_31_7_7_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74743300"
    )
        port map (
      I0 => reg_reg_0_31_7_7_i_12_n_0,
      I1 => \^s_c_reg\,
      I2 => DI(0),
      I3 => s_clk_sig_reg(3),
      I4 => \^s_c_reg_0\,
      O => reg_reg_0_31_7_7_i_10_n_0
    );
reg_reg_0_31_7_7_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F7B080"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(5),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(7),
      O => B(7)
    );
reg_reg_0_31_7_7_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(5),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(7),
      O => reg_reg_0_31_7_7_i_12_n_0
    );
reg_reg_0_31_7_7_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FF40FF40FF40"
    )
        port map (
      I0 => reg_reg_0_31_2_2_i_7_n_0,
      I1 => SWITCHES_IBUF(7),
      I2 => reg_reg_0_31_2_2_i_8_n_0,
      I3 => SCR_DATA_out(7),
      I4 => \^dop\(1),
      I5 => OPCODE_HI_5(0),
      O => reg_reg_0_31_7_7_i_4_n_0
    );
reg_reg_0_31_7_7_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => reg_reg_0_31_7_7_i_9_n_0,
      I1 => reg_reg_0_31_7_7_i_10_n_0,
      O => s_z_reg_2,
      S => \ps_reg[0]_3\
    );
reg_reg_0_31_7_7_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC44B888FC77B888"
    )
        port map (
      I0 => B(7),
      I1 => \^s_c_reg\,
      I2 => data2(7),
      I3 => \^s_c_reg_0\,
      I4 => s_clk_sig_reg(3),
      I5 => reg_reg_0_31_7_7_i_12_n_0,
      O => s_z_reg
    );
reg_reg_0_31_7_7_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F2F2FF0002020"
    )
        port map (
      I0 => s_clk_sig_reg(3),
      I1 => reg_reg_0_31_7_7_i_12_n_0,
      I2 => \^s_c_reg_0\,
      I3 => data11(0),
      I4 => \^s_c_reg\,
      I5 => s_clk_sig_reg(2),
      O => reg_reg_0_31_7_7_i_9_n_0
    );
s_c_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCACFFAFCCACCCAC"
    )
        port map (
      I0 => s_c_i_2_n_0,
      I1 => s_c_i_3_n_0,
      I2 => \count_reg[9]_4\,
      I3 => \ps_reg[0]_10\,
      I4 => s_c_i_6_n_0,
      I5 => data11(0),
      O => s_c_reg_5
    );
s_c_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBB8BBB888"
    )
        port map (
      I0 => sh_c,
      I1 => s_z_i_2_n_0,
      I2 => s_c_i_7_n_0,
      I3 => \ps_reg[0]_3\,
      I4 => \ps_reg[0]_4\,
      I5 => s_c_i_9_n_0,
      O => s_c_i_2_n_0
    );
s_c_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \temp[7]_i_8_n_0\,
      I1 => s_port_id(0),
      I2 => \^do\(0),
      I3 => \^do\(12),
      I4 => OPCODE_HI_5(0),
      I5 => \^dop\(1),
      O => s_c_i_3_n_0
    );
s_c_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \g0_b0__0_n_0\,
      I1 => \^dop\(1),
      I2 => \g1_b0__1_n_0\,
      I3 => \ps_reg[1]\(1),
      I4 => \ps_reg[1]\(0),
      O => s_c_i_6_n_0
    );
s_c_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000CC0FCC00"
    )
        port map (
      I0 => data11(0),
      I1 => DI(0),
      I2 => s_clk_sig_reg_0(0),
      I3 => \ps_reg[0]_5\,
      I4 => \^s_c_reg_0\,
      I5 => \^s_c_reg\,
      O => s_c_i_7_n_0
    );
s_c_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047FF4700"
    )
        port map (
      I0 => s_clk_sig_reg_0(0),
      I1 => \^s_c_reg\,
      I2 => s_clk_sig_reg_1(0),
      I3 => \^s_c_reg_0\,
      I4 => s_c_reg_8(0),
      I5 => \ps_reg[0]_5\,
      O => s_c_i_9_n_0
    );
s_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F44404440444F444"
    )
        port map (
      I0 => s_out_reg_0,
      I1 => s_out,
      I2 => OPCODE_HI_5(0),
      I3 => s_out_i_2_n_0,
      I4 => \^do\(0),
      I5 => s_port_id(0),
      O => s_out_reg
    );
s_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^do\(12),
      I1 => \^dop\(1),
      I2 => \^do\(11),
      I3 => \^dop\(0),
      I4 => \ps_reg[1]\(0),
      I5 => \ps_reg[1]\(1),
      O => s_out_i_2_n_0
    );
s_z_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => sh_z,
      I1 => s_z_i_2_n_0,
      I2 => s_z_i_3_n_0,
      I3 => s_z_i_4_n_0,
      I4 => s_flg_z_ld,
      I5 => s_z,
      O => s_z_reg_5
    );
s_z_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^do\(0),
      I1 => OPCODE_HI_5(0),
      I2 => s_out_i_2_n_0,
      O => s_z_i_2_n_0
    );
s_z_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => reg_reg_0_31_0_0_i_3_n_0,
      I1 => reg_reg_0_31_1_1_i_3_n_0,
      I2 => reg_reg_0_31_3_3_i_2_n_0,
      I3 => \ps_reg[0]_1\,
      O => s_z_i_3_n_0
    );
s_z_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => reg_reg_0_31_5_5_i_2_n_0,
      I1 => reg_reg_0_31_4_4_i_2_n_0,
      I2 => \ps_reg[0]_0\,
      I3 => \ps_reg[0]\,
      O => s_z_i_4_n_0
    );
s_z_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
        port map (
      I0 => \g0_b0__2_n_0\,
      I1 => \^dop\(1),
      I2 => \g1_b0__1_n_0\,
      I3 => \ps_reg[1]\(1),
      I4 => \ps_reg[1]\(0),
      O => s_flg_z_ld
    );
scratch_reg_0_255_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DI(0),
      I1 => \^count_reg[0]_0\,
      I2 => Q(0),
      O => SCR_DATA_in(0)
    );
scratch_reg_0_255_0_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF40FFFFFF50"
    )
        port map (
      I0 => \ps_reg[1]_0\,
      I1 => \^dop\(0),
      I2 => scratch_reg_0_255_0_0_i_32_n_0,
      I3 => scratch_reg_0_255_0_0_i_33_n_0,
      I4 => s_flg_shad_ld,
      I5 => \temp_reg[6]\(0),
      O => A(0)
    );
scratch_reg_0_255_0_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAABA"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_35_n_0,
      I1 => \ps_reg[0]_10\,
      I2 => \^dop\(1),
      I3 => \^do\(11),
      I4 => scratch_reg_0_255_0_0_i_36_n_0,
      I5 => scratch_reg_0_255_0_0_i_37_n_0,
      O => \^count_reg[0]_0\
    );
scratch_reg_0_255_0_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFEFFFFBFF"
    )
        port map (
      I0 => \^dop\(0),
      I1 => \^do\(12),
      I2 => \^do\(11),
      I3 => s_port_id(0),
      I4 => \^do\(0),
      I5 => OPCODE_HI_5(0),
      O => scratch_reg_0_255_0_0_i_12_n_0
    );
scratch_reg_0_255_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555555555555"
    )
        port map (
      I0 => \ps_reg[1]\(0),
      I1 => \^do\(11),
      I2 => OPCODE_HI_5(0),
      I3 => \^dop\(1),
      I4 => \^dop\(0),
      I5 => \^do\(12),
      O => scratch_reg_0_255_0_0_i_13_n_0
    );
scratch_reg_0_255_0_0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FF4040"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => \^do\(5),
      I2 => \^dop\(0),
      I3 => \^count_reg[9]\,
      I4 => dy_out(7),
      O => \count_reg[9]_2\
    );
scratch_reg_0_255_0_0_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FF4040"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => \^do\(4),
      I2 => \^dop\(0),
      I3 => \^count_reg[9]\,
      I4 => dy_out(6),
      O => scratch_reg_0_255_0_0_i_17_n_0
    );
scratch_reg_0_255_0_0_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \ps_reg[0]_10\,
      I1 => \^do\(11),
      I2 => \^do\(0),
      I3 => \^dop\(0),
      I4 => scratch_reg_0_255_0_0_i_39_n_0,
      I5 => scratch_reg_0_255_0_0_i_40_n_0,
      O => \^count_reg[9]_1\
    );
scratch_reg_0_255_0_0_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008FFFF"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_35_n_0,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(0),
      I3 => \^dop\(1),
      I4 => \^count_reg[0]_0\,
      O => \^count_reg[9]_0\
    );
scratch_reg_0_255_0_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02AA"
    )
        port map (
      I0 => \ps_reg[1]\(1),
      I1 => \^dop\(1),
      I2 => scratch_reg_0_255_0_0_i_12_n_0,
      I3 => scratch_reg_0_255_0_0_i_13_n_0,
      O => SCR_WR
    );
scratch_reg_0_255_0_0_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF3500FF0035"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_37_n_0,
      I1 => scratch_reg_0_255_0_0_i_39_n_0,
      I2 => scratch_reg_0_255_0_0_i_36_n_0,
      I3 => scratch_reg_0_255_0_0_i_35_n_0,
      I4 => scratch_reg_0_255_0_0_i_41_n_0,
      I5 => scratch_reg_0_255_0_0_i_42_n_0,
      O => \^count_reg[9]\
    );
scratch_reg_0_255_0_0_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => \^do\(3),
      I2 => \^dop\(0),
      I3 => dy_out(5),
      I4 => \temp_reg[6]\(5),
      I5 => \^count_reg[9]_1\,
      O => scratch_reg_0_255_0_0_i_22_n_0
    );
scratch_reg_0_255_0_0_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => dy_out(4),
      I1 => \^dop\(0),
      I2 => \^do\(2),
      I3 => scratch_reg_0_255_0_0_i_38_n_0,
      O => scratch_reg_0_255_0_0_i_24_n_0
    );
scratch_reg_0_255_0_0_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => \^do\(1),
      I2 => \^dop\(0),
      I3 => dy_out(3),
      I4 => \temp_reg[6]\(3),
      I5 => \^count_reg[9]_1\,
      O => scratch_reg_0_255_0_0_i_26_n_0
    );
scratch_reg_0_255_0_0_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => s_port_id(2),
      I2 => \^dop\(0),
      I3 => dy_out(2),
      I4 => \temp_reg[6]\(2),
      I5 => \^count_reg[9]_1\,
      O => scratch_reg_0_255_0_0_i_28_n_0
    );
scratch_reg_0_255_0_0_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF454045404540"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_38_n_0,
      I1 => \^do\(0),
      I2 => \^dop\(0),
      I3 => dy_out(1),
      I4 => \temp_reg[6]\(1),
      I5 => \^count_reg[9]_1\,
      O => scratch_reg_0_255_0_0_i_30_n_0
    );
scratch_reg_0_255_0_0_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8ABA8A8A"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_43_n_0,
      I1 => \^do\(12),
      I2 => scratch_reg_0_255_0_0_i_44_n_0,
      I3 => \temp_reg[6]\(0),
      I4 => scratch_reg_0_255_0_0_i_45_n_0,
      I5 => scratch_reg_0_255_0_0_i_46_n_0,
      O => scratch_reg_0_255_0_0_i_32_n_0
    );
scratch_reg_0_255_0_0_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABBB0000"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_47_n_0,
      I1 => \^do\(12),
      I2 => OPCODE_HI_5(0),
      I3 => scratch_reg_0_255_0_0_i_48_n_0,
      I4 => dy_out(0),
      I5 => s_flg_shad_ld,
      O => scratch_reg_0_255_0_0_i_33_n_0
    );
scratch_reg_0_255_0_0_i_35: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABBA0BB"
    )
        port map (
      I0 => \temp[7]_i_8_n_0\,
      I1 => \ps_reg[1]\(0),
      I2 => \^dop\(1),
      I3 => OPCODE_HI_5(0),
      I4 => s_port_id(0),
      I5 => \^do\(12),
      O => scratch_reg_0_255_0_0_i_35_n_0
    );
scratch_reg_0_255_0_0_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000101010001000"
    )
        port map (
      I0 => \ps_reg[0]_10\,
      I1 => \^do\(11),
      I2 => \^do\(0),
      I3 => \^dop\(0),
      I4 => OPCODE_HI_5(0),
      I5 => s_port_id(0),
      O => scratch_reg_0_255_0_0_i_36_n_0
    );
scratch_reg_0_255_0_0_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFBFFFFFFFF"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => s_port_id(0),
      I2 => \^dop\(0),
      I3 => \^do\(11),
      I4 => \ps_reg[1]\(0),
      I5 => \ps_reg[1]\(1),
      O => scratch_reg_0_255_0_0_i_37_n_0
    );
scratch_reg_0_255_0_0_i_38: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_35_n_0,
      I1 => \ps_reg[1]\(0),
      I2 => \ps_reg[1]\(1),
      I3 => \^dop\(1),
      I4 => \^do\(11),
      O => scratch_reg_0_255_0_0_i_38_n_0
    );
scratch_reg_0_255_0_0_i_39: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_port_id(0),
      I1 => OPCODE_HI_5(0),
      O => scratch_reg_0_255_0_0_i_39_n_0
    );
scratch_reg_0_255_0_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAEEEAFBEAEEEA"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_17_n_0,
      I1 => \temp_reg[6]\(6),
      I2 => \^count_reg[9]_1\,
      I3 => \^count_reg[9]_0\,
      I4 => \temp_reg[3]\,
      I5 => \temp_reg[6]\(5),
      O => A(6)
    );
scratch_reg_0_255_0_0_i_40: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABAAA"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_35_n_0,
      I1 => \ps_reg[1]\(0),
      I2 => \ps_reg[1]\(1),
      I3 => \^dop\(1),
      I4 => \^do\(11),
      O => scratch_reg_0_255_0_0_i_40_n_0
    );
scratch_reg_0_255_0_0_i_41: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^do\(11),
      I1 => \^dop\(1),
      I2 => \ps_reg[1]\(1),
      I3 => \ps_reg[1]\(0),
      O => scratch_reg_0_255_0_0_i_41_n_0
    );
scratch_reg_0_255_0_0_i_42: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => OPCODE_HI_5(0),
      I1 => \^do\(0),
      I2 => \^dop\(1),
      O => scratch_reg_0_255_0_0_i_42_n_0
    );
scratch_reg_0_255_0_0_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08AF00000000030"
    )
        port map (
      I0 => \temp_reg[6]\(0),
      I1 => OPCODE_HI_5(0),
      I2 => s_port_id(0),
      I3 => \^dop\(1),
      I4 => \^do\(0),
      I5 => \^dop\(0),
      O => scratch_reg_0_255_0_0_i_43_n_0
    );
scratch_reg_0_255_0_0_i_44: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_port_id(0),
      I1 => OPCODE_HI_5(0),
      O => scratch_reg_0_255_0_0_i_44_n_0
    );
scratch_reg_0_255_0_0_i_45: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^dop\(0),
      I1 => OPCODE_HI_5(0),
      O => scratch_reg_0_255_0_0_i_45_n_0
    );
scratch_reg_0_255_0_0_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^dop\(1),
      I1 => \^do\(0),
      O => scratch_reg_0_255_0_0_i_46_n_0
    );
scratch_reg_0_255_0_0_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBFBBB"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_49_n_0,
      I1 => \ps_reg[1]\(1),
      I2 => s_port_id(0),
      I3 => \^do\(0),
      I4 => OPCODE_HI_5(0),
      O => scratch_reg_0_255_0_0_i_47_n_0
    );
scratch_reg_0_255_0_0_i_48: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => \^dop\(1),
      O => scratch_reg_0_255_0_0_i_48_n_0
    );
scratch_reg_0_255_0_0_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000CFF55"
    )
        port map (
      I0 => scratch_reg_0_255_0_0_i_39_n_0,
      I1 => \^do\(12),
      I2 => \^do\(0),
      I3 => \^dop\(1),
      I4 => \^dop\(0),
      I5 => \^do\(11),
      O => scratch_reg_0_255_0_0_i_49_n_0
    );
scratch_reg_0_255_0_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FFF4F4F4"
    )
        port map (
      I0 => \^count_reg[9]\,
      I1 => dy_out(5),
      I2 => scratch_reg_0_255_0_0_i_22_n_0,
      I3 => \^count_reg[9]_0\,
      I4 => \temp_reg[3]\,
      I5 => \temp_reg[6]\(5),
      O => A(5)
    );
scratch_reg_0_255_0_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBCA0"
    )
        port map (
      I0 => \^count_reg[9]_1\,
      I1 => \temp_reg[2]\,
      I2 => \temp_reg[6]\(4),
      I3 => \^count_reg[9]_0\,
      I4 => scratch_reg_0_255_0_0_i_24_n_0,
      I5 => s_clk_sig_reg_2,
      O => A(4)
    );
scratch_reg_0_255_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FFF4F4F4"
    )
        port map (
      I0 => \^count_reg[9]\,
      I1 => dy_out(3),
      I2 => scratch_reg_0_255_0_0_i_26_n_0,
      I3 => \^count_reg[9]_0\,
      I4 => \temp_reg[0]\,
      I5 => \temp_reg[6]\(3),
      O => A(3)
    );
scratch_reg_0_255_0_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FFF4F4F4"
    )
        port map (
      I0 => \^count_reg[9]\,
      I1 => dy_out(2),
      I2 => scratch_reg_0_255_0_0_i_28_n_0,
      I3 => \^count_reg[9]_0\,
      I4 => \temp_reg[1]\,
      I5 => \temp_reg[6]\(2),
      O => A(2)
    );
scratch_reg_0_255_0_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F4F4F4F4FFF4"
    )
        port map (
      I0 => \^count_reg[9]\,
      I1 => dy_out(1),
      I2 => scratch_reg_0_255_0_0_i_30_n_0,
      I3 => \^count_reg[9]_0\,
      I4 => \temp_reg[6]\(0),
      I5 => \temp_reg[6]\(1),
      O => A(1)
    );
scratch_reg_0_255_1_1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DI(1),
      I1 => \^count_reg[0]_0\,
      I2 => Q(1),
      O => SCR_DATA_in(1)
    );
scratch_reg_0_255_2_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DI(2),
      I1 => \^count_reg[0]_0\,
      I2 => Q(2),
      O => SCR_DATA_in(2)
    );
scratch_reg_0_255_3_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DI(3),
      I1 => \^count_reg[0]_0\,
      I2 => Q(3),
      O => SCR_DATA_in(3)
    );
scratch_reg_0_255_4_4_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_clk_sig_reg(0),
      I1 => \^count_reg[0]_0\,
      I2 => Q(4),
      O => SCR_DATA_in(4)
    );
scratch_reg_0_255_5_5_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_clk_sig_reg(1),
      I1 => \^count_reg[0]_0\,
      I2 => Q(5),
      O => SCR_DATA_in(5)
    );
scratch_reg_0_255_6_6_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_clk_sig_reg(2),
      I1 => \^count_reg[0]_0\,
      I2 => Q(6),
      O => SCR_DATA_in(6)
    );
scratch_reg_0_255_7_7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_clk_sig_reg(3),
      I1 => \^count_reg[0]_0\,
      I2 => Q(7),
      O => SCR_DATA_in(7)
    );
\temp0_inferred__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55A9599999A959"
    )
        port map (
      I0 => s_clk_sig_reg(3),
      I1 => dy_out(7),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(5),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_3(3)
    );
\temp0_inferred__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55A9599999A959"
    )
        port map (
      I0 => s_clk_sig_reg(2),
      I1 => dy_out(6),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => \^do\(4),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => s_c_reg_3(2)
    );
\temp0_inferred__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7B0800B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(3),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(5),
      I5 => s_clk_sig_reg(1),
      O => s_c_reg_3(1)
    );
\temp0_inferred__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7B0800B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(2),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(4),
      I5 => s_clk_sig_reg(0),
      O => s_c_reg_3(0)
    );
\temp0_inferred__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7B0800B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(1),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(3),
      I5 => DI(3),
      O => S(2)
    );
\temp0_inferred__0_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55A9599999A959"
    )
        port map (
      I0 => DI(2),
      I1 => dy_out(2),
      I2 => \temp0_inferred__0_carry_i_6_n_0\,
      I3 => s_port_id(2),
      I4 => OPCODE_HI_5(0),
      I5 => \temp0_inferred__0_carry_i_5_n_0\,
      O => S(1)
    );
\temp0_inferred__0_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F7B0800B084F7F"
    )
        port map (
      I0 => \temp0_inferred__0_carry_i_5_n_0\,
      I1 => OPCODE_HI_5(0),
      I2 => \^do\(0),
      I3 => \temp0_inferred__0_carry_i_6_n_0\,
      I4 => dy_out(1),
      I5 => DI(1),
      O => S(0)
    );
\temp0_inferred__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400040404040"
    )
        port map (
      I0 => \ps_reg[1]\(0),
      I1 => \ps_reg[1]\(1),
      I2 => \^dop\(1),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => \temp0_inferred__0_carry_i_5_n_0\
    );
\temp0_inferred__0_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004040404040"
    )
        port map (
      I0 => \ps_reg[1]\(0),
      I1 => \ps_reg[1]\(1),
      I2 => \^dop\(1),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => \^dop\(0),
      O => \temp0_inferred__0_carry_i_6_n_0\
    );
\temp0_inferred__0_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004155FFFF7D55"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(11),
      I2 => OPCODE_HI_5(0),
      I3 => \^dop\(0),
      I4 => \temp0_inferred__0_carry_i_8_n_0\,
      I5 => dy_out(0),
      O => \^r_leds_reg[0]\
    );
\temp0_inferred__0_carry_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFFFFF"
    )
        port map (
      I0 => \^do\(12),
      I1 => \^dop\(0),
      I2 => \ps_reg[1]\(0),
      I3 => \ps_reg[1]\(1),
      I4 => \^dop\(1),
      O => \temp0_inferred__0_carry_i_8_n_0\
    );
\temp[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF100"
    )
        port map (
      I0 => \temp[7]_i_4_n_0\,
      I1 => \^dop\(1),
      I2 => \ps_reg[1]\(0),
      I3 => \ps_reg[1]\(1),
      I4 => \^temp_reg[7]\,
      I5 => \^s_sp_incr\,
      O => E(0)
    );
\temp[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDFFFFFFDFF"
    )
        port map (
      I0 => s_port_id(0),
      I1 => \^do\(0),
      I2 => OPCODE_HI_5(0),
      I3 => \^do\(12),
      I4 => \^do\(11),
      I5 => \^dop\(0),
      O => \temp[7]_i_4_n_0\
    );
\temp[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^do\(0),
      I1 => s_port_id(0),
      I2 => \^dop\(1),
      I3 => \temp[7]_i_7_n_0\,
      O => \^temp_reg[7]\
    );
\temp[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000060000000000"
    )
        port map (
      I0 => \^do\(12),
      I1 => OPCODE_HI_5(0),
      I2 => \^dop\(1),
      I3 => \^do\(0),
      I4 => s_port_id(0),
      I5 => \temp[7]_i_8_n_0\,
      O => \^s_sp_incr\
    );
\temp[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
        port map (
      I0 => \^dop\(0),
      I1 => \ps_reg[1]\(0),
      I2 => \ps_reg[1]\(1),
      I3 => \^do\(11),
      I4 => \^do\(12),
      I5 => OPCODE_HI_5(0),
      O => \temp[7]_i_7_n_0\
    );
\temp[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^do\(11),
      I1 => \^dop\(0),
      I2 => \ps_reg[1]\(1),
      I3 => \ps_reg[1]\(0),
      O => \temp[7]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_file is
  port (
    dy_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_LEDS_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_z_reg : out STD_LOGIC;
    s_c_reg : out STD_LOGIC;
    \r_LEDS_reg[6]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[9]\ : out STD_LOGIC;
    s_z_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_c_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_rf_wr : in STD_LOGIC;
    DO : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \0\ : in STD_LOGIC;
    \ps_reg[0]\ : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    \ps_reg[0]_1\ : in STD_LOGIC;
    \ps_reg[0]_2\ : in STD_LOGIC;
    \count_reg[9]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ps_reg[0]_3\ : in STD_LOGIC;
    \ps_reg[0]_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ps_reg[0]_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]_1\ : in STD_LOGIC
  );
end register_file;

architecture STRUCTURE of register_file is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \_inferred__1__0_carry_i_16_n_0\ : STD_LOGIC;
  signal \_inferred__1__0_carry_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \^dy_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^r_leds_reg[7]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1__0_carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__1__0_carry__1_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1__0_carry__1_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1__0_carry__1_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW__inferred__1__0_carry__1_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__inferred__1__0_carry_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry__0_i_9\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry__1_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__1__0_carry_i_9\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \temp[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \temp[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \temp[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \temp[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \temp[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \temp[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \temp[7]_i_3\ : label is "soft_lutpair25";
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  dy_out(7 downto 0) <= \^dy_out\(7 downto 0);
  \r_LEDS_reg[7]\(3 downto 0) <= \^r_leds_reg[7]\(3 downto 0);
\_inferred__1__0_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__1__0_carry_i_9_n_0\,
      CO(3) => data0(8),
      CO(2 downto 0) => \NLW__inferred__1__0_carry__0_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^r_leds_reg[7]\(3 downto 0),
      O(3 downto 0) => s_z_reg_0(7 downto 4),
      S(3 downto 0) => \ps_reg[0]_5\(3 downto 0)
    );
\_inferred__1__0_carry__1_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => data0(8),
      CO(3 downto 0) => \NLW__inferred__1__0_carry__1_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW__inferred__1__0_carry__1_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => s_c_reg_0(0),
      S(3 downto 0) => B"0001"
    );
\_inferred__1__0_carry__1_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 1) => \NLW__inferred__1__0_carry__1_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => s_c_reg_1(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW__inferred__1__0_carry__1_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\_inferred__1__0_carry_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(0),
      I1 => \count_reg[9]_1\,
      O => \_inferred__1__0_carry_i_16_n_0\
    );
\_inferred__1__0_carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__1__0_carry_i_9_n_0\,
      CO(2 downto 0) => \NLW__inferred__1__0_carry_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \^di\(3 downto 0),
      O(3 downto 0) => s_z_reg_0(3 downto 0),
      S(3 downto 1) => \ps_reg[0]_4\(2 downto 0),
      S(0) => \_inferred__1__0_carry_i_16_n_0\
    );
reg_reg_0_31_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(0),
      DPO => \^dy_out\(0),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^di\(0),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(1),
      DPO => \^dy_out\(1),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^di\(1),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_2_2: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(2),
      DPO => \^dy_out\(2),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^di\(2),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_2_2_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
        port map (
      I0 => \^di\(3),
      I1 => \0\,
      I2 => \^di\(2),
      I3 => \ps_reg[0]\,
      I4 => \ps_reg[0]_0\,
      I5 => \^di\(1),
      O => s_z_reg
    );
reg_reg_0_31_3_3: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(3),
      DPO => \^dy_out\(3),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^di\(3),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_4_4: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(4),
      DPO => \^dy_out\(4),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^r_leds_reg[7]\(0),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_5_5: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(5),
      DPO => \^dy_out\(5),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^r_leds_reg[7]\(1),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_6_6: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(6),
      DPO => \^dy_out\(6),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^r_leds_reg[7]\(2),
      WCLK => CLK,
      WE => s_rf_wr
    );
reg_reg_0_31_6_6_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF022F000F022F0"
    )
        port map (
      I0 => \^r_leds_reg[7]\(2),
      I1 => \ps_reg[0]_2\,
      I2 => \^r_leds_reg[7]\(1),
      I3 => \ps_reg[0]_0\,
      I4 => \0\,
      I5 => \^r_leds_reg[7]\(3),
      O => \r_LEDS_reg[6]\
    );
reg_reg_0_31_7_7: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => DO(5),
      A1 => DO(6),
      A2 => DO(7),
      A3 => DO(8),
      A4 => DO(9),
      D => din(7),
      DPO => \^dy_out\(7),
      DPRA0 => DO(0),
      DPRA1 => DO(1),
      DPRA2 => DO(2),
      DPRA3 => DO(3),
      DPRA4 => DO(4),
      SPO => \^r_leds_reg[7]\(3),
      WCLK => CLK,
      WE => s_rf_wr
    );
s_c_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80CC8000"
    )
        port map (
      I0 => \^di\(0),
      I1 => \ps_reg[0]_1\,
      I2 => \0\,
      I3 => \ps_reg[0]_0\,
      I4 => \^r_leds_reg[7]\(3),
      O => s_c_reg
    );
scratch_reg_0_255_0_0_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^dy_out\(4),
      I1 => \ps_reg[0]_3\,
      O => \count_reg[9]\
    );
\temp0_inferred__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \count_reg[9]_1\,
      O => S(0)
    );
\temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^di\(0),
      I1 => \count_reg[9]_0\,
      I2 => Q(0),
      O => D(0)
    );
\temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^di\(1),
      I1 => \count_reg[9]_0\,
      I2 => O(0),
      O => D(1)
    );
\temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^di\(2),
      I1 => \count_reg[9]_0\,
      I2 => O(1),
      O => D(2)
    );
\temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^di\(3),
      I1 => \count_reg[9]_0\,
      I2 => O(2),
      O => D(3)
    );
\temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_leds_reg[7]\(0),
      I1 => \count_reg[9]_0\,
      I2 => O(3),
      O => D(4)
    );
\temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_leds_reg[7]\(1),
      I1 => \count_reg[9]_0\,
      I2 => \temp_reg[5]\(0),
      O => D(5)
    );
\temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_leds_reg[7]\(2),
      I1 => \count_reg[9]_0\,
      I2 => \temp_reg[5]\(1),
      O => D(6)
    );
\temp[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r_leds_reg[7]\(3),
      I1 => \count_reg[9]_0\,
      I2 => \temp_reg[5]\(2),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stack_pointer is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \temp_reg[7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    A : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    \count_reg[9]_1\ : out STD_LOGIC;
    \count_reg[9]_2\ : out STD_LOGIC;
    \ps_reg[0]\ : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    \ps_reg[0]_1\ : in STD_LOGIC;
    s_sp_incr : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end stack_pointer;

architecture STRUCTURE of stack_pointer is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^count_reg[9]\ : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_14_n_0 : STD_LOGIC;
  signal scratch_reg_0_255_0_0_i_16_n_0 : STD_LOGIC;
  signal \temp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal temp0_carry_i_1_n_0 : STD_LOGIC;
  signal temp0_carry_i_2_n_0 : STD_LOGIC;
  signal temp0_carry_i_3_n_0 : STD_LOGIC;
  signal temp0_carry_i_4_n_0 : STD_LOGIC;
  signal temp0_carry_i_5_n_0 : STD_LOGIC;
  signal temp0_carry_n_0 : STD_LOGIC;
  signal NLW_temp0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of temp0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \temp0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \count_reg[9]\ <= \^count_reg[9]\;
scratch_reg_0_255_0_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \ps_reg[0]_0\,
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => scratch_reg_0_255_0_0_i_14_n_0
    );
scratch_reg_0_255_0_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004F"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^count_reg[9]\,
      I2 => \ps_reg[0]_0\,
      I3 => \ps_reg[0]_1\,
      O => scratch_reg_0_255_0_0_i_16_n_0
    );
scratch_reg_0_255_0_0_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \^count_reg[9]\
    );
scratch_reg_0_255_0_0_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \count_reg[9]_0\
    );
scratch_reg_0_255_0_0_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_reg[9]_1\
    );
scratch_reg_0_255_0_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \count_reg[9]_2\
    );
scratch_reg_0_255_0_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF40FF04FFFFFF04"
    )
        port map (
      I0 => \^q\(5),
      I1 => scratch_reg_0_255_0_0_i_14_n_0,
      I2 => \^q\(6),
      I3 => \ps_reg[0]\,
      I4 => \^q\(7),
      I5 => scratch_reg_0_255_0_0_i_16_n_0,
      O => A(0)
    );
temp0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp0_carry_n_0,
      CO(2 downto 0) => NLW_temp0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \^q\(0),
      DI(3 downto 1) => \^q\(3 downto 1),
      DI(0) => temp0_carry_i_1_n_0,
      O(3 downto 0) => O(3 downto 0),
      S(3) => temp0_carry_i_2_n_0,
      S(2) => temp0_carry_i_3_n_0,
      S(1) => temp0_carry_i_4_n_0,
      S(0) => temp0_carry_i_5_n_0
    );
\temp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp0_carry_n_0,
      CO(3 downto 0) => \NLW_temp0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \^q\(5 downto 4),
      O(3) => \NLW_temp0_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => \temp_reg[7]_0\(2 downto 0),
      S(3) => '0',
      S(2) => \temp0_carry__0_i_1_n_0\,
      S(1) => \temp0_carry__0_i_2_n_0\,
      S(0) => \temp0_carry__0_i_3_n_0\
    );
\temp0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \temp0_carry__0_i_1_n_0\
    );
\temp0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \temp0_carry__0_i_2_n_0\
    );
\temp0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \temp0_carry__0_i_3_n_0\
    );
temp0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => temp0_carry_i_1_n_0
    );
temp0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => temp0_carry_i_2_n_0
    );
temp0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => temp0_carry_i_3_n_0
    );
temp0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => temp0_carry_i_4_n_0
    );
temp0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_sp_incr,
      O => temp0_carry_i_5_n_0
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => SR(0)
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => SR(0)
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => SR(0)
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => SR(0)
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => SR(0)
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Program_counter_top is
  port (
    DO : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \temp_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_rf_wr : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_z_reg : out STD_LOGIC;
    \0\ : out STD_LOGIC;
    s_c_reg : out STD_LOGIC;
    \r_LEDS_reg[6]\ : out STD_LOGIC;
    \r_LEDS_reg[6]_0\ : out STD_LOGIC;
    s_z_reg_0 : out STD_LOGIC;
    s_z_reg_1 : out STD_LOGIC;
    \count_reg[0]\ : out STD_LOGIC;
    s_z_reg_2 : out STD_LOGIC;
    \r_LEDS_reg[0]\ : out STD_LOGIC;
    s_z_reg_3 : out STD_LOGIC;
    \r_LEDS_reg[6]_1\ : out STD_LOGIC;
    A : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_reg[7]_0\ : out STD_LOGIC;
    s_sp_incr : out STD_LOGIC;
    \r_SEV_SEG_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[9]\ : out STD_LOGIC;
    \count_reg[9]_0\ : out STD_LOGIC;
    \count_reg[9]_1\ : out STD_LOGIC;
    \count_reg[9]_2\ : out STD_LOGIC;
    SCR_DATA_in : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_c_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_z_reg_4 : out STD_LOGIC;
    SCR_WR : out STD_LOGIC;
    s_c_reg_1 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_c_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_c_reg_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_LEDS_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_out_reg : out STD_LOGIC;
    s_c_reg_4 : out STD_LOGIC;
    s_z_reg_5 : out STD_LOGIC;
    \r_LEDS_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg_5 : out STD_LOGIC;
    s_c_reg_6 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ps_reg[0]\ : in STD_LOGIC;
    \temp_reg[7]_1\ : in STD_LOGIC;
    \ps_reg[0]_0\ : in STD_LOGIC;
    data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_clk_sig_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ps_reg[0]_1\ : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SCR_DATA_out : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_flg_shad_ld : in STD_LOGIC;
    \ps_reg[0]_2\ : in STD_LOGIC;
    sh_c : in STD_LOGIC;
    \ps_reg[0]_3\ : in STD_LOGIC;
    \ps_reg[0]_4\ : in STD_LOGIC;
    s_clk_sig_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_clk_sig_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_c_reg_7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_5\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_6\ : in STD_LOGIC;
    \ps_reg[0]_7\ : in STD_LOGIC;
    \ps_reg[0]_8\ : in STD_LOGIC;
    data11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_9\ : in STD_LOGIC;
    \ps_reg[0]_10\ : in STD_LOGIC;
    \ps_reg[1]\ : in STD_LOGIC;
    \temp_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dy_out : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_z : in STD_LOGIC;
    \ps_reg[1]_0\ : in STD_LOGIC;
    \temp_reg[1]\ : in STD_LOGIC;
    \temp_reg[0]\ : in STD_LOGIC;
    \temp_reg[2]\ : in STD_LOGIC;
    s_clk_sig_reg_2 : in STD_LOGIC;
    \temp_reg[3]\ : in STD_LOGIC;
    \ps_reg[1]_1\ : in STD_LOGIC;
    SWITCHES_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_out_reg_0 : in STD_LOGIC;
    s_out : in STD_LOGIC;
    \count_reg[9]_3\ : in STD_LOGIC;
    sh_z : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ps_reg[0]_11\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Program_counter_top;

architecture STRUCTURE of Program_counter_top is
  signal PC_COUNT_INSIDE : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal PC_part_n_12 : STD_LOGIC;
  signal PC_part_n_13 : STD_LOGIC;
  signal PC_part_n_14 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal prog_rom_part_n_40 : STD_LOGIC;
  signal prog_rom_part_n_41 : STD_LOGIC;
  signal prog_rom_part_n_42 : STD_LOGIC;
  signal prog_rom_part_n_43 : STD_LOGIC;
  signal prog_rom_part_n_44 : STD_LOGIC;
  signal prog_rom_part_n_45 : STD_LOGIC;
  signal prog_rom_part_n_70 : STD_LOGIC;
begin
PC_part: entity work.PC
     port map (
      CLK => CLK,
      D(3) => \p_0_in__1\(9),
      D(2 downto 1) => \p_0_in__1\(5 downto 4),
      D(0) => \p_0_in__1\(0),
      Q(9 downto 0) => PC_COUNT_INSIDE(9 downto 0),
      SCR_DATA_in(1 downto 0) => SCR_DATA_in(9 downto 8),
      SR(0) => SR(0),
      \count_reg[4]_0\ => PC_part_n_12,
      \count_reg[5]_0\ => PC_part_n_13,
      \count_reg[9]_0\ => PC_part_n_14,
      \ps_reg[0]\ => prog_rom_part_n_40,
      \ps_reg[0]_0\ => \ps_reg[0]_2\,
      \ps_reg[0]_1\ => prog_rom_part_n_41,
      \ps_reg[0]_2\ => prog_rom_part_n_42,
      \ps_reg[0]_3\ => prog_rom_part_n_43,
      \ps_reg[0]_4\ => prog_rom_part_n_44,
      \ps_reg[0]_5\ => prog_rom_part_n_45,
      \ps_reg[0]_6\ => prog_rom_part_n_70,
      \ps_reg[0]_7\(0) => \ps_reg[0]_11\(0)
    );
prog_rom_part: entity work.prog_rom
     port map (
      A(6 downto 0) => A(6 downto 0),
      CLK => CLK,
      D(3) => \p_0_in__1\(9),
      D(2 downto 1) => \p_0_in__1\(5 downto 4),
      D(0) => \p_0_in__1\(0),
      DI(3 downto 0) => DI(3 downto 0),
      DO(12 downto 0) => DO(12 downto 0),
      DOP(1 downto 0) => \temp_reg[7]\(1 downto 0),
      E(0) => E(0),
      O(0) => O(0),
      Q(9 downto 0) => PC_COUNT_INSIDE(9 downto 0),
      S(2 downto 0) => S(2 downto 0),
      SCR_DATA_in(7 downto 0) => SCR_DATA_in(7 downto 0),
      SCR_DATA_out(9 downto 0) => SCR_DATA_out(9 downto 0),
      SCR_WR => SCR_WR,
      SWITCHES_IBUF(7 downto 0) => SWITCHES_IBUF(7 downto 0),
      \count_reg[0]\ => \count_reg[0]\,
      \count_reg[0]_0\ => prog_rom_part_n_70,
      \count_reg[1]\ => prog_rom_part_n_40,
      \count_reg[2]\ => prog_rom_part_n_41,
      \count_reg[3]\ => prog_rom_part_n_42,
      \count_reg[4]\ => PC_part_n_12,
      \count_reg[5]\ => PC_part_n_13,
      \count_reg[6]\ => prog_rom_part_n_43,
      \count_reg[7]\ => prog_rom_part_n_44,
      \count_reg[8]\ => prog_rom_part_n_45,
      \count_reg[9]\ => \count_reg[9]\,
      \count_reg[9]_0\ => \count_reg[9]_0\,
      \count_reg[9]_1\ => \count_reg[9]_1\,
      \count_reg[9]_2\ => \count_reg[9]_2\,
      \count_reg[9]_3\ => PC_part_n_14,
      \count_reg[9]_4\ => \count_reg[9]_3\,
      data0(2 downto 0) => data0(2 downto 0),
      data11(0) => data11(0),
      data2(7 downto 0) => data2(7 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dy_out(7 downto 0) => dy_out(7 downto 0),
      \ps_reg[0]\ => \ps_reg[0]\,
      \ps_reg[0]_0\ => \ps_reg[0]_0\,
      \ps_reg[0]_1\ => \ps_reg[0]_1\,
      \ps_reg[0]_10\ => \ps_reg[0]_10\,
      \ps_reg[0]_2\ => \ps_reg[0]_2\,
      \ps_reg[0]_3\ => \ps_reg[0]_3\,
      \ps_reg[0]_4\ => \ps_reg[0]_4\,
      \ps_reg[0]_5\ => \ps_reg[0]_5\,
      \ps_reg[0]_6\ => \ps_reg[0]_6\,
      \ps_reg[0]_7\ => \ps_reg[0]_7\,
      \ps_reg[0]_8\ => \ps_reg[0]_8\,
      \ps_reg[0]_9\ => \ps_reg[0]_9\,
      \ps_reg[1]\(1 downto 0) => Q(1 downto 0),
      \ps_reg[1]_0\ => \ps_reg[1]\,
      \ps_reg[1]_1\ => \ps_reg[1]_0\,
      \ps_reg[1]_2\ => \ps_reg[1]_1\,
      pwropt => \ps_reg[0]_11\(0),
      pwropt_1 => SR(0),
      \r_LEDS_reg[0]\ => \r_LEDS_reg[0]\,
      \r_LEDS_reg[0]_0\(0) => \r_LEDS_reg[0]_0\(0),
      \r_LEDS_reg[3]\(0) => \r_LEDS_reg[3]\(0),
      \r_LEDS_reg[3]_0\(2 downto 0) => \r_LEDS_reg[3]_0\(2 downto 0),
      \r_LEDS_reg[3]_1\(0) => \r_LEDS_reg[3]_1\(0),
      \r_LEDS_reg[6]\ => \r_LEDS_reg[6]\,
      \r_LEDS_reg[6]_0\ => \r_LEDS_reg[6]_0\,
      \r_LEDS_reg[6]_1\ => \r_LEDS_reg[6]_1\,
      \r_SEV_SEG_reg[0]\(0) => \r_SEV_SEG_reg[0]\(0),
      s_c_reg => \0\,
      s_c_reg_0 => s_c_reg,
      s_c_reg_1(0) => s_c_reg_0(0),
      s_c_reg_2 => s_c_reg_1,
      s_c_reg_3(3 downto 0) => s_c_reg_2(3 downto 0),
      s_c_reg_4(3 downto 0) => s_c_reg_3(3 downto 0),
      s_c_reg_5 => s_c_reg_4,
      s_c_reg_6 => s_c_reg_5,
      s_c_reg_7 => s_c_reg_6,
      s_c_reg_8(0) => s_c_reg_7(0),
      s_clk_sig_reg(3 downto 0) => s_clk_sig_reg(3 downto 0),
      s_clk_sig_reg_0(0) => s_clk_sig_reg_0(0),
      s_clk_sig_reg_1(0) => s_clk_sig_reg_1(0),
      s_clk_sig_reg_2 => s_clk_sig_reg_2,
      s_flg_shad_ld => s_flg_shad_ld,
      s_out => s_out,
      s_out_reg => s_out_reg,
      s_out_reg_0 => s_out_reg_0,
      s_rf_wr => s_rf_wr,
      s_sp_incr => s_sp_incr,
      s_z => s_z,
      s_z_reg => s_z_reg,
      s_z_reg_0 => s_z_reg_0,
      s_z_reg_1 => s_z_reg_1,
      s_z_reg_2 => s_z_reg_2,
      s_z_reg_3 => s_z_reg_3,
      s_z_reg_4 => s_z_reg_4,
      s_z_reg_5 => s_z_reg_5,
      sh_c => sh_c,
      sh_z => sh_z,
      \temp_reg[0]\ => \temp_reg[0]\,
      \temp_reg[1]\ => \temp_reg[1]\,
      \temp_reg[2]\ => \temp_reg[2]\,
      \temp_reg[3]\ => \temp_reg[3]\,
      \temp_reg[6]\(6 downto 0) => \temp_reg[6]\(6 downto 0),
      \temp_reg[7]\ => \temp_reg[7]_0\,
      \temp_reg[7]_0\ => \temp_reg[7]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity db_1shot_FSM is
  port (
    s_out_reg : out STD_LOGIC;
    s_out : in STD_LOGIC;
    \ps_reg[0]\ : in STD_LOGIC;
    INT_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end db_1shot_FSM;

architecture STRUCTURE of db_1shot_FSM is
  signal \FSM_sequential_PS[1]_i_1_n_0\ : STD_LOGIC;
  signal PS : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of PS : signal is "yes";
  signal bounce_counter_n_1 : STD_LOGIC;
  signal bounce_counter_n_2 : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_PS_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_PS_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_PS_reg[2]\ : label is "yes";
begin
\FSM_sequential_PS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2228"
    )
        port map (
      I0 => INT_IBUF,
      I1 => PS(2),
      I2 => PS(1),
      I3 => PS(0),
      O => \FSM_sequential_PS[1]_i_1_n_0\
    );
\FSM_sequential_PS_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bounce_counter_n_2,
      Q => PS(0),
      R => '0'
    );
\FSM_sequential_PS_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_sequential_PS[1]_i_1_n_0\,
      Q => PS(1),
      R => '0'
    );
\FSM_sequential_PS_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => bounce_counter_n_1,
      Q => PS(2),
      R => '0'
    );
bounce_counter: entity work.counter
     port map (
      CLK => CLK,
      D(1) => bounce_counter_n_1,
      D(0) => bounce_counter_n_2,
      INT_IBUF => INT_IBUF,
      \out\(2 downto 0) => PS(2 downto 0),
      \ps_reg[0]\ => \ps_reg[0]\,
      s_out => s_out,
      s_out_reg => s_out_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rat_cpu is
  port (
    s_output_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_out : out STD_LOGIC;
    s_c_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_LEDS_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    s_out_reg_0 : in STD_LOGIC;
    SWITCHES_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end rat_cpu;

architecture STRUCTURE of rat_cpu is
  signal \0\ : STD_LOGIC;
  signal OPCODE_HI_5 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal SCR_ADDR : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SCR_DATA_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal SCR_DATA_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal SCR_WR : STD_LOGIC;
  signal adrx : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal alu_part_n_10 : STD_LOGIC;
  signal alu_part_n_11 : STD_LOGIC;
  signal alu_part_n_12 : STD_LOGIC;
  signal alu_part_n_13 : STD_LOGIC;
  signal alu_part_n_14 : STD_LOGIC;
  signal alu_part_n_15 : STD_LOGIC;
  signal alu_part_n_16 : STD_LOGIC;
  signal alu_part_n_17 : STD_LOGIC;
  signal alu_part_n_8 : STD_LOGIC;
  signal alu_part_n_9 : STD_LOGIC;
  signal control_unit_part_n_0 : STD_LOGIC;
  signal control_unit_part_n_10 : STD_LOGIC;
  signal control_unit_part_n_11 : STD_LOGIC;
  signal control_unit_part_n_12 : STD_LOGIC;
  signal control_unit_part_n_13 : STD_LOGIC;
  signal control_unit_part_n_3 : STD_LOGIC;
  signal control_unit_part_n_4 : STD_LOGIC;
  signal control_unit_part_n_5 : STD_LOGIC;
  signal control_unit_part_n_6 : STD_LOGIC;
  signal control_unit_part_n_7 : STD_LOGIC;
  signal control_unit_part_n_9 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data11 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal din : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dy_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal flags_part_n_4 : STD_LOGIC;
  signal flags_part_n_5 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal program_counter_part_n_24 : STD_LOGIC;
  signal program_counter_part_n_26 : STD_LOGIC;
  signal program_counter_part_n_27 : STD_LOGIC;
  signal program_counter_part_n_28 : STD_LOGIC;
  signal program_counter_part_n_29 : STD_LOGIC;
  signal program_counter_part_n_30 : STD_LOGIC;
  signal program_counter_part_n_31 : STD_LOGIC;
  signal program_counter_part_n_32 : STD_LOGIC;
  signal program_counter_part_n_33 : STD_LOGIC;
  signal program_counter_part_n_34 : STD_LOGIC;
  signal program_counter_part_n_35 : STD_LOGIC;
  signal program_counter_part_n_43 : STD_LOGIC;
  signal program_counter_part_n_44 : STD_LOGIC;
  signal program_counter_part_n_48 : STD_LOGIC;
  signal program_counter_part_n_49 : STD_LOGIC;
  signal program_counter_part_n_50 : STD_LOGIC;
  signal program_counter_part_n_51 : STD_LOGIC;
  signal program_counter_part_n_63 : STD_LOGIC;
  signal program_counter_part_n_64 : STD_LOGIC;
  signal program_counter_part_n_66 : STD_LOGIC;
  signal program_counter_part_n_67 : STD_LOGIC;
  signal program_counter_part_n_68 : STD_LOGIC;
  signal program_counter_part_n_69 : STD_LOGIC;
  signal program_counter_part_n_70 : STD_LOGIC;
  signal program_counter_part_n_71 : STD_LOGIC;
  signal program_counter_part_n_72 : STD_LOGIC;
  signal program_counter_part_n_73 : STD_LOGIC;
  signal program_counter_part_n_74 : STD_LOGIC;
  signal program_counter_part_n_75 : STD_LOGIC;
  signal program_counter_part_n_76 : STD_LOGIC;
  signal program_counter_part_n_77 : STD_LOGIC;
  signal program_counter_part_n_78 : STD_LOGIC;
  signal program_counter_part_n_79 : STD_LOGIC;
  signal program_counter_part_n_80 : STD_LOGIC;
  signal program_counter_part_n_81 : STD_LOGIC;
  signal program_counter_part_n_82 : STD_LOGIC;
  signal program_counter_part_n_83 : STD_LOGIC;
  signal program_counter_part_n_84 : STD_LOGIC;
  signal program_counter_part_n_85 : STD_LOGIC;
  signal program_counter_part_n_86 : STD_LOGIC;
  signal ps : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal register_file_part_n_16 : STD_LOGIC;
  signal register_file_part_n_17 : STD_LOGIC;
  signal register_file_part_n_18 : STD_LOGIC;
  signal register_file_part_n_27 : STD_LOGIC;
  signal register_file_part_n_36 : STD_LOGIC;
  signal register_file_part_n_37 : STD_LOGIC;
  signal register_file_part_n_38 : STD_LOGIC;
  signal \^s_c_reg\ : STD_LOGIC;
  signal s_flg_shad_ld : STD_LOGIC;
  signal \^s_out\ : STD_LOGIC;
  signal \^s_output_port\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_port_id : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal s_rf_wr : STD_LOGIC;
  signal s_rst : STD_LOGIC;
  signal s_sp_incr : STD_LOGIC;
  signal s_z : STD_LOGIC;
  signal scratch_memory_part_n_0 : STD_LOGIC;
  signal sh_c : STD_LOGIC;
  signal sh_z : STD_LOGIC;
  signal stack_pointer_part_n_0 : STD_LOGIC;
  signal stack_pointer_part_n_1 : STD_LOGIC;
  signal stack_pointer_part_n_12 : STD_LOGIC;
  signal stack_pointer_part_n_13 : STD_LOGIC;
  signal stack_pointer_part_n_14 : STD_LOGIC;
  signal stack_pointer_part_n_16 : STD_LOGIC;
  signal stack_pointer_part_n_17 : STD_LOGIC;
  signal stack_pointer_part_n_18 : STD_LOGIC;
  signal stack_pointer_part_n_19 : STD_LOGIC;
  signal stack_pointer_part_n_2 : STD_LOGIC;
  signal stack_pointer_part_n_3 : STD_LOGIC;
  signal \temp_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  s_c_reg <= \^s_c_reg\;
  s_out <= \^s_out\;
  s_output_port(7 downto 0) <= \^s_output_port\(7 downto 0);
alu_part: entity work.ALU
     port map (
      \0\ => \0\,
      CO(0) => alu_part_n_8,
      DI(3 downto 0) => \^s_output_port\(3 downto 0),
      O(0) => alu_part_n_9,
      S(3) => program_counter_part_n_67,
      S(2) => program_counter_part_n_68,
      S(1) => program_counter_part_n_69,
      S(0) => register_file_part_n_38,
      \count_reg[9]\(0) => p_0_in(4),
      \count_reg[9]_0\(1) => program_counter_part_n_63,
      \count_reg[9]_0\(0) => flags_part_n_4,
      \count_reg[9]_1\(1) => program_counter_part_n_84,
      \count_reg[9]_1\(0) => flags_part_n_5,
      data0(7 downto 0) => data0(7 downto 0),
      data11(0) => data11(8),
      data2(7 downto 0) => data2(7 downto 0),
      \ps_reg[0]\(3) => program_counter_part_n_70,
      \ps_reg[0]\(2) => program_counter_part_n_71,
      \ps_reg[0]\(1) => program_counter_part_n_72,
      \ps_reg[0]\(0) => program_counter_part_n_73,
      \ps_reg[0]_0\ => program_counter_part_n_26,
      \ps_reg[0]_1\ => control_unit_part_n_4,
      \r_LEDS_reg[0]\ => alu_part_n_11,
      \r_LEDS_reg[3]\ => alu_part_n_12,
      \r_LEDS_reg[4]\ => alu_part_n_15,
      \r_LEDS_reg[5]\ => alu_part_n_13,
      \r_LEDS_reg[6]\ => alu_part_n_17,
      s_c_reg(0) => alu_part_n_10,
      s_clk_sig_reg(3 downto 0) => \^s_output_port\(7 downto 4),
      s_clk_sig_reg_0(0) => register_file_part_n_36,
      s_clk_sig_reg_1(0) => register_file_part_n_37,
      s_z_reg => alu_part_n_14,
      s_z_reg_0 => alu_part_n_16
    );
control_unit_part: entity work.control_unit
     port map (
      AR(0) => AR(0),
      CLK => CLK,
      E(0) => control_unit_part_n_10,
      OPCODE_HI_5(3 downto 0) => OPCODE_HI_5(4 downto 1),
      Q(1 downto 0) => ps(1 downto 0),
      SR(0) => s_rst,
      \count_reg[9]\ => control_unit_part_n_9,
      \count_reg[9]_0\ => control_unit_part_n_11,
      \count_reg[9]_1\ => program_counter_part_n_85,
      \count_reg[9]_2\ => program_counter_part_n_86,
      \count_reg[9]_3\ => alu_part_n_16,
      \count_reg[9]_4\ => alu_part_n_17,
      \count_reg[9]_5\ => alu_part_n_14,
      \count_reg[9]_6\ => program_counter_part_n_64,
      \count_reg[9]_7\ => program_counter_part_n_66,
      \ps_reg[0]_0\ => program_counter_part_n_32,
      \ps_reg[0]_1\ => program_counter_part_n_24,
      \ps_reg[0]_2\ => program_counter_part_n_27,
      \ps_reg[0]_3\ => program_counter_part_n_29,
      \ps_reg[0]_4\ => program_counter_part_n_34,
      \ps_reg[0]_5\ => program_counter_part_n_35,
      \ps_reg[1]_0\ => program_counter_part_n_31,
      \r_LEDS_reg[0]\ => control_unit_part_n_12,
      \r_LEDS_reg[6]\ => control_unit_part_n_6,
      s_c_reg => control_unit_part_n_0,
      s_c_reg_0 => control_unit_part_n_5,
      s_c_reg_1 => control_unit_part_n_13,
      s_c_reg_2 => \^s_c_reg\,
      s_clk_sig_reg => register_file_part_n_16,
      s_clk_sig_reg_0 => register_file_part_n_18,
      s_flg_shad_ld => s_flg_shad_ld,
      s_out_reg => s_out_reg_0,
      s_z_reg => control_unit_part_n_3,
      s_z_reg_0 => control_unit_part_n_4,
      s_z_reg_1 => control_unit_part_n_7
    );
flags_part: entity work.flags
     port map (
      \0\ => \0\,
      CLK => CLK,
      Q(1 downto 0) => ps(1 downto 0),
      data0(0) => data0(0),
      data11(0) => data11(8),
      data2(0) => data2(0),
      \r_LEDS_reg[3]\(0) => flags_part_n_4,
      \r_LEDS_reg[3]_0\(0) => flags_part_n_5,
      s_c_reg_0 => program_counter_part_n_82,
      s_z => s_z,
      sh_c => sh_c,
      sh_z => sh_z,
      sh_z_reg_0 => program_counter_part_n_83
    );
program_counter_part: entity work.Program_counter_top
     port map (
      \0\ => \0\,
      A(6 downto 0) => SCR_ADDR(6 downto 0),
      CLK => CLK,
      DI(3 downto 0) => \^s_output_port\(3 downto 0),
      DO(12 downto 11) => OPCODE_HI_5(2 downto 1),
      DO(10 downto 6) => adrx(4 downto 0),
      DO(5 downto 1) => s_port_id(7 downto 3),
      DO(0) => s_port_id(1),
      E(0) => program_counter_part_n_43,
      O(0) => alu_part_n_9,
      Q(1 downto 0) => ps(1 downto 0),
      S(2) => program_counter_part_n_67,
      S(1) => program_counter_part_n_68,
      S(0) => program_counter_part_n_69,
      SCR_DATA_in(9 downto 0) => SCR_DATA_in(9 downto 0),
      SCR_DATA_out(9 downto 0) => SCR_DATA_out(9 downto 0),
      SCR_WR => SCR_WR,
      SR(0) => s_rst,
      SWITCHES_IBUF(7 downto 0) => SWITCHES_IBUF(7 downto 0),
      \count_reg[0]\ => program_counter_part_n_31,
      \count_reg[9]\ => program_counter_part_n_48,
      \count_reg[9]_0\ => program_counter_part_n_49,
      \count_reg[9]_1\ => program_counter_part_n_50,
      \count_reg[9]_2\ => program_counter_part_n_51,
      \count_reg[9]_3\ => control_unit_part_n_0,
      data0(2) => data0(4),
      data0(1 downto 0) => data0(2 downto 1),
      data11(0) => data11(8),
      data2(7 downto 0) => data2(7 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dy_out(7 downto 0) => dy_out(7 downto 0),
      \ps_reg[0]\ => control_unit_part_n_3,
      \ps_reg[0]_0\ => control_unit_part_n_6,
      \ps_reg[0]_1\ => control_unit_part_n_7,
      \ps_reg[0]_10\ => \^s_c_reg\,
      \ps_reg[0]_11\(0) => control_unit_part_n_10,
      \ps_reg[0]_2\ => control_unit_part_n_9,
      \ps_reg[0]_3\ => control_unit_part_n_5,
      \ps_reg[0]_4\ => register_file_part_n_17,
      \ps_reg[0]_5\ => control_unit_part_n_4,
      \ps_reg[0]_6\ => alu_part_n_11,
      \ps_reg[0]_7\ => alu_part_n_12,
      \ps_reg[0]_8\ => alu_part_n_13,
      \ps_reg[0]_9\ => alu_part_n_15,
      \ps_reg[1]\ => control_unit_part_n_11,
      \ps_reg[1]_0\ => control_unit_part_n_12,
      \ps_reg[1]_1\ => control_unit_part_n_13,
      \r_LEDS_reg[0]\ => program_counter_part_n_33,
      \r_LEDS_reg[0]_0\(0) => \r_LEDS_reg[0]\(0),
      \r_LEDS_reg[3]\(0) => program_counter_part_n_63,
      \r_LEDS_reg[3]_0\(2) => program_counter_part_n_78,
      \r_LEDS_reg[3]_0\(1) => program_counter_part_n_79,
      \r_LEDS_reg[3]_0\(0) => program_counter_part_n_80,
      \r_LEDS_reg[3]_1\(0) => program_counter_part_n_84,
      \r_LEDS_reg[6]\ => program_counter_part_n_27,
      \r_LEDS_reg[6]_0\ => program_counter_part_n_28,
      \r_LEDS_reg[6]_1\ => program_counter_part_n_35,
      \r_SEV_SEG_reg[0]\(0) => E(0),
      s_c_reg => program_counter_part_n_26,
      s_c_reg_0(0) => p_0_in(4),
      s_c_reg_1 => program_counter_part_n_66,
      s_c_reg_2(3) => program_counter_part_n_70,
      s_c_reg_2(2) => program_counter_part_n_71,
      s_c_reg_2(1) => program_counter_part_n_72,
      s_c_reg_2(0) => program_counter_part_n_73,
      s_c_reg_3(3) => program_counter_part_n_74,
      s_c_reg_3(2) => program_counter_part_n_75,
      s_c_reg_3(1) => program_counter_part_n_76,
      s_c_reg_3(0) => program_counter_part_n_77,
      s_c_reg_4 => program_counter_part_n_82,
      s_c_reg_5 => program_counter_part_n_85,
      s_c_reg_6 => program_counter_part_n_86,
      s_c_reg_7(0) => alu_part_n_10,
      s_clk_sig_reg(3 downto 0) => \^s_output_port\(7 downto 4),
      s_clk_sig_reg_0(0) => register_file_part_n_37,
      s_clk_sig_reg_1(0) => register_file_part_n_36,
      s_clk_sig_reg_2 => register_file_part_n_27,
      s_flg_shad_ld => s_flg_shad_ld,
      s_out => \^s_out\,
      s_out_reg => program_counter_part_n_81,
      s_out_reg_0 => s_out_reg_0,
      s_rf_wr => s_rf_wr,
      s_sp_incr => s_sp_incr,
      s_z => s_z,
      s_z_reg => program_counter_part_n_24,
      s_z_reg_0 => program_counter_part_n_29,
      s_z_reg_1 => program_counter_part_n_30,
      s_z_reg_2 => program_counter_part_n_32,
      s_z_reg_3 => program_counter_part_n_34,
      s_z_reg_4 => program_counter_part_n_64,
      s_z_reg_5 => program_counter_part_n_83,
      sh_c => sh_c,
      sh_z => sh_z,
      \temp_reg[0]\ => stack_pointer_part_n_18,
      \temp_reg[1]\ => stack_pointer_part_n_19,
      \temp_reg[2]\ => stack_pointer_part_n_17,
      \temp_reg[3]\ => stack_pointer_part_n_16,
      \temp_reg[6]\(6 downto 0) => \temp_reg__0\(6 downto 0),
      \temp_reg[7]\(1 downto 0) => OPCODE_HI_5(4 downto 3),
      \temp_reg[7]_0\ => program_counter_part_n_44,
      \temp_reg[7]_1\ => scratch_memory_part_n_0
    );
register_file_part: entity work.register_file
     port map (
      \0\ => \0\,
      CLK => CLK,
      CO(0) => alu_part_n_8,
      D(7 downto 0) => \p_0_in__0\(7 downto 0),
      DI(3 downto 0) => \^s_output_port\(3 downto 0),
      DO(9 downto 5) => adrx(4 downto 0),
      DO(4 downto 0) => s_port_id(7 downto 3),
      O(3) => stack_pointer_part_n_0,
      O(2) => stack_pointer_part_n_1,
      O(1) => stack_pointer_part_n_2,
      O(0) => stack_pointer_part_n_3,
      Q(0) => \temp_reg__0\(0),
      S(0) => register_file_part_n_38,
      \count_reg[9]\ => register_file_part_n_27,
      \count_reg[9]_0\ => program_counter_part_n_44,
      \count_reg[9]_1\ => program_counter_part_n_33,
      din(7 downto 0) => din(7 downto 0),
      dy_out(7 downto 0) => dy_out(7 downto 0),
      \ps_reg[0]\ => program_counter_part_n_30,
      \ps_reg[0]_0\ => program_counter_part_n_26,
      \ps_reg[0]_1\ => control_unit_part_n_4,
      \ps_reg[0]_2\ => program_counter_part_n_28,
      \ps_reg[0]_3\ => program_counter_part_n_48,
      \ps_reg[0]_4\(2) => program_counter_part_n_78,
      \ps_reg[0]_4\(1) => program_counter_part_n_79,
      \ps_reg[0]_4\(0) => program_counter_part_n_80,
      \ps_reg[0]_5\(3) => program_counter_part_n_74,
      \ps_reg[0]_5\(2) => program_counter_part_n_75,
      \ps_reg[0]_5\(1) => program_counter_part_n_76,
      \ps_reg[0]_5\(0) => program_counter_part_n_77,
      \r_LEDS_reg[6]\ => register_file_part_n_18,
      \r_LEDS_reg[7]\(3 downto 0) => \^s_output_port\(7 downto 4),
      s_c_reg => register_file_part_n_17,
      s_c_reg_0(0) => register_file_part_n_36,
      s_c_reg_1(0) => register_file_part_n_37,
      s_rf_wr => s_rf_wr,
      s_z_reg => register_file_part_n_16,
      s_z_reg_0(7 downto 0) => data0(7 downto 0),
      \temp_reg[5]\(2) => stack_pointer_part_n_12,
      \temp_reg[5]\(1) => stack_pointer_part_n_13,
      \temp_reg[5]\(0) => stack_pointer_part_n_14
    );
s_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => program_counter_part_n_81,
      Q => \^s_out\,
      R => '0'
    );
scratch_memory_part: entity work.Scratch_RAM
     port map (
      A(7 downto 0) => SCR_ADDR(7 downto 0),
      CLK => CLK,
      DO(0) => s_port_id(1),
      Q(0) => \temp_reg__0\(7),
      SCR_DATA_in(9 downto 0) => SCR_DATA_in(9 downto 0),
      SCR_DATA_out(9 downto 0) => SCR_DATA_out(9 downto 0),
      SCR_WR => SCR_WR,
      \r_LEDS_reg[7]\ => scratch_memory_part_n_0
    );
stack_pointer_part: entity work.stack_pointer
     port map (
      A(0) => SCR_ADDR(7),
      CLK => CLK,
      D(7 downto 0) => \p_0_in__0\(7 downto 0),
      E(0) => program_counter_part_n_43,
      O(3) => stack_pointer_part_n_0,
      O(2) => stack_pointer_part_n_1,
      O(1) => stack_pointer_part_n_2,
      O(0) => stack_pointer_part_n_3,
      Q(7 downto 0) => \temp_reg__0\(7 downto 0),
      SR(0) => s_rst,
      \count_reg[9]\ => stack_pointer_part_n_16,
      \count_reg[9]_0\ => stack_pointer_part_n_17,
      \count_reg[9]_1\ => stack_pointer_part_n_18,
      \count_reg[9]_2\ => stack_pointer_part_n_19,
      \ps_reg[0]\ => program_counter_part_n_51,
      \ps_reg[0]_0\ => program_counter_part_n_49,
      \ps_reg[0]_1\ => program_counter_part_n_50,
      s_sp_incr => s_sp_incr,
      \temp_reg[7]_0\(2) => stack_pointer_part_n_12,
      \temp_reg[7]_0\(1) => stack_pointer_part_n_13,
      \temp_reg[7]_0\(0) => stack_pointer_part_n_14
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAT_wrapper is
  port (
    LEDS : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CaBus : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AnBus : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SWITCHES : in STD_LOGIC_VECTOR ( 7 downto 0 );
    INT : in STD_LOGIC;
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RAT_wrapper : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of RAT_wrapper : entity is "6e8aecb4";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of RAT_wrapper : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of RAT_wrapper : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of RAT_wrapper : entity is 0;
end RAT_wrapper;

architecture STRUCTURE of RAT_wrapper is
  signal AnBus_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CPU_n_11 : STD_LOGIC;
  signal CPU_n_9 : STD_LOGIC;
  signal CaBus_OBUF : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal INT_IBUF : STD_LOGIC;
  signal LEDS_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RST_IBUF : STD_LOGIC;
  signal SWITCHES_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clear : STD_LOGIC;
  signal db_1shot_FSM_part_n_0 : STD_LOGIC;
  signal \disp_counter[0]_i_12_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_7_n_0\ : STD_LOGIC;
  signal \disp_counter[0]_i_8_n_0\ : STD_LOGIC;
  signal disp_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \disp_counter_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_13_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_13_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_13_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_13_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_14_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_14_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_14_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_14_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_15_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_15_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_15_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_15_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_16_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_16_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_16_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_16_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_17_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_17_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_17_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_17_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_18_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_18_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_18_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_18_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_19_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_19_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_19_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_19_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_20_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_20_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_20_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \disp_counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \disp_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \disp_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \disp_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \disp_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_SEV_SEG : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_SEV_SEG_reg_n_0_[7]\ : STD_LOGIC;
  signal s_clk_sig : STD_LOGIC;
  signal s_clk_sig_BUFG : STD_LOGIC;
  signal s_clk_sig_i_1_n_0 : STD_LOGIC;
  signal s_disp_clk_sig : STD_LOGIC;
  signal s_disp_clk_sig_i_1_n_0 : STD_LOGIC;
  signal s_out : STD_LOGIC;
  signal s_output_port : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_18_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disp_counter_reg[0]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_disp_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_disp_counter_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_disp_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\AnBus_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AnBus_OBUF(0),
      O => AnBus(0)
    );
\AnBus_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AnBus_OBUF(1),
      O => AnBus(1)
    );
\AnBus_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AnBus_OBUF(2),
      O => AnBus(2)
    );
\AnBus_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AnBus_OBUF(3),
      O => AnBus(3)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CPU: entity work.rat_cpu
     port map (
      AR(0) => RST_IBUF,
      CLK => s_clk_sig_BUFG,
      E(0) => r_SEV_SEG,
      SWITCHES_IBUF(7 downto 0) => SWITCHES_IBUF(7 downto 0),
      \r_LEDS_reg[0]\(0) => CPU_n_11,
      s_c_reg => CPU_n_9,
      s_out => s_out,
      s_out_reg_0 => db_1shot_FSM_part_n_0,
      s_output_port(7 downto 0) => s_output_port(7 downto 0)
    );
\CaBus_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => CaBus(0)
    );
\CaBus_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(1),
      O => CaBus(1)
    );
\CaBus_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(2),
      O => CaBus(2)
    );
\CaBus_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(3),
      O => CaBus(3)
    );
\CaBus_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(4),
      O => CaBus(4)
    );
\CaBus_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(5),
      O => CaBus(5)
    );
\CaBus_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(6),
      O => CaBus(6)
    );
\CaBus_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => CaBus_OBUF(7),
      O => CaBus(7)
    );
INT_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => INT,
      O => INT_IBUF
    );
\LEDS_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(0),
      O => LEDS(0)
    );
\LEDS_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(1),
      O => LEDS(1)
    );
\LEDS_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(2),
      O => LEDS(2)
    );
\LEDS_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(3),
      O => LEDS(3)
    );
\LEDS_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(4),
      O => LEDS(4)
    );
\LEDS_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(5),
      O => LEDS(5)
    );
\LEDS_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(6),
      O => LEDS(6)
    );
\LEDS_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LEDS_OBUF(7),
      O => LEDS(7)
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
\SWITCHES_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(0),
      O => SWITCHES_IBUF(0)
    );
\SWITCHES_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(1),
      O => SWITCHES_IBUF(1)
    );
\SWITCHES_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(2),
      O => SWITCHES_IBUF(2)
    );
\SWITCHES_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(3),
      O => SWITCHES_IBUF(3)
    );
\SWITCHES_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(4),
      O => SWITCHES_IBUF(4)
    );
\SWITCHES_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(5),
      O => SWITCHES_IBUF(5)
    );
\SWITCHES_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(6),
      O => SWITCHES_IBUF(6)
    );
\SWITCHES_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => SWITCHES(7),
      O => SWITCHES_IBUF(7)
    );
db_1shot_FSM_part: entity work.db_1shot_FSM
     port map (
      CLK => s_clk_sig_BUFG,
      INT_IBUF => INT_IBUF,
      \ps_reg[0]\ => CPU_n_9,
      s_out => s_out,
      s_out_reg => db_1shot_FSM_part_n_0
    );
\disp_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \disp_counter[0]_i_3_n_0\,
      I1 => \disp_counter[0]_i_4_n_0\,
      I2 => \disp_counter[0]_i_5_n_0\,
      I3 => \disp_counter[0]_i_6_n_0\,
      I4 => \disp_counter[0]_i_7_n_0\,
      I5 => \disp_counter[0]_i_8_n_0\,
      O => clear
    );
\disp_counter[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => disp_counter_reg(0),
      O => \disp_counter[0]_i_12_n_0\
    );
\disp_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_13_n_7\,
      I1 => \disp_counter_reg[0]_i_13_n_6\,
      O => \disp_counter[0]_i_3_n_0\
    );
\disp_counter[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_14_n_6\,
      I1 => \disp_counter_reg[0]_i_14_n_7\,
      I2 => \disp_counter_reg[0]_i_13_n_5\,
      I3 => \disp_counter_reg[0]_i_13_n_4\,
      I4 => \disp_counter_reg[0]_i_14_n_5\,
      I5 => \disp_counter_reg[0]_i_14_n_4\,
      O => \disp_counter[0]_i_4_n_0\
    );
\disp_counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_15_n_5\,
      I1 => \disp_counter_reg[0]_i_15_n_4\,
      I2 => \disp_counter_reg[0]_i_15_n_6\,
      I3 => \disp_counter_reg[0]_i_15_n_7\,
      I4 => \disp_counter_reg[0]_i_16_n_6\,
      I5 => \disp_counter_reg[0]_i_16_n_7\,
      O => \disp_counter[0]_i_5_n_0\
    );
\disp_counter[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_17_n_7\,
      I1 => \disp_counter_reg[0]_i_17_n_6\,
      I2 => \disp_counter_reg[0]_i_16_n_4\,
      I3 => \disp_counter_reg[0]_i_16_n_5\,
      I4 => \disp_counter_reg[0]_i_17_n_4\,
      I5 => \disp_counter_reg[0]_i_17_n_5\,
      O => \disp_counter[0]_i_6_n_0\
    );
\disp_counter[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_18_n_5\,
      I1 => \disp_counter_reg[0]_i_18_n_4\,
      I2 => \disp_counter_reg[0]_i_18_n_7\,
      I3 => \disp_counter_reg[0]_i_18_n_6\,
      I4 => \disp_counter_reg[0]_i_19_n_6\,
      I5 => \disp_counter_reg[0]_i_19_n_7\,
      O => \disp_counter[0]_i_7_n_0\
    );
\disp_counter[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \disp_counter_reg[0]_i_20_n_7\,
      I1 => \disp_counter_reg[0]_i_20_n_6\,
      I2 => \disp_counter_reg[0]_i_19_n_5\,
      I3 => \disp_counter_reg[0]_i_19_n_4\,
      I4 => \disp_counter_reg[0]_i_20_n_5\,
      I5 => disp_counter_reg(0),
      O => \disp_counter[0]_i_8_n_0\
    );
\disp_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[0]_i_2_n_7\,
      Q => disp_counter_reg(0),
      R => clear
    );
\disp_counter_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disp_counter_reg[0]_i_13_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => disp_counter_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_13_n_4\,
      O(2) => \disp_counter_reg[0]_i_13_n_5\,
      O(1) => \disp_counter_reg[0]_i_13_n_6\,
      O(0) => \disp_counter_reg[0]_i_13_n_7\,
      S(3 downto 0) => disp_counter_reg(4 downto 1)
    );
\disp_counter_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_13_n_0\,
      CO(3) => \disp_counter_reg[0]_i_14_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_14_n_4\,
      O(2) => \disp_counter_reg[0]_i_14_n_5\,
      O(1) => \disp_counter_reg[0]_i_14_n_6\,
      O(0) => \disp_counter_reg[0]_i_14_n_7\,
      S(3 downto 0) => disp_counter_reg(8 downto 5)
    );
\disp_counter_reg[0]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_14_n_0\,
      CO(3) => \disp_counter_reg[0]_i_15_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_15_n_4\,
      O(2) => \disp_counter_reg[0]_i_15_n_5\,
      O(1) => \disp_counter_reg[0]_i_15_n_6\,
      O(0) => \disp_counter_reg[0]_i_15_n_7\,
      S(3 downto 0) => disp_counter_reg(12 downto 9)
    );
\disp_counter_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_15_n_0\,
      CO(3) => \disp_counter_reg[0]_i_16_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_16_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_16_n_4\,
      O(2) => \disp_counter_reg[0]_i_16_n_5\,
      O(1) => \disp_counter_reg[0]_i_16_n_6\,
      O(0) => \disp_counter_reg[0]_i_16_n_7\,
      S(3 downto 0) => disp_counter_reg(16 downto 13)
    );
\disp_counter_reg[0]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_16_n_0\,
      CO(3) => \disp_counter_reg[0]_i_17_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_17_n_4\,
      O(2) => \disp_counter_reg[0]_i_17_n_5\,
      O(1) => \disp_counter_reg[0]_i_17_n_6\,
      O(0) => \disp_counter_reg[0]_i_17_n_7\,
      S(3 downto 0) => disp_counter_reg(20 downto 17)
    );
\disp_counter_reg[0]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_17_n_0\,
      CO(3) => \disp_counter_reg[0]_i_18_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_18_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_18_n_4\,
      O(2) => \disp_counter_reg[0]_i_18_n_5\,
      O(1) => \disp_counter_reg[0]_i_18_n_6\,
      O(0) => \disp_counter_reg[0]_i_18_n_7\,
      S(3 downto 0) => disp_counter_reg(24 downto 21)
    );
\disp_counter_reg[0]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_18_n_0\,
      CO(3) => \disp_counter_reg[0]_i_19_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[0]_i_19_n_4\,
      O(2) => \disp_counter_reg[0]_i_19_n_5\,
      O(1) => \disp_counter_reg[0]_i_19_n_6\,
      O(0) => \disp_counter_reg[0]_i_19_n_7\,
      S(3 downto 0) => disp_counter_reg(28 downto 25)
    );
\disp_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \disp_counter_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \disp_counter_reg[0]_i_2_n_4\,
      O(2) => \disp_counter_reg[0]_i_2_n_5\,
      O(1) => \disp_counter_reg[0]_i_2_n_6\,
      O(0) => \disp_counter_reg[0]_i_2_n_7\,
      S(3 downto 1) => disp_counter_reg(3 downto 1),
      S(0) => \disp_counter[0]_i_12_n_0\
    );
\disp_counter_reg[0]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_19_n_0\,
      CO(3 downto 0) => \NLW_disp_counter_reg[0]_i_20_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_disp_counter_reg[0]_i_20_O_UNCONNECTED\(3),
      O(2) => \disp_counter_reg[0]_i_20_n_5\,
      O(1) => \disp_counter_reg[0]_i_20_n_6\,
      O(0) => \disp_counter_reg[0]_i_20_n_7\,
      S(3) => '0',
      S(2 downto 0) => disp_counter_reg(31 downto 29)
    );
\disp_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[8]_i_1_n_5\,
      Q => disp_counter_reg(10),
      R => clear
    );
\disp_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[8]_i_1_n_4\,
      Q => disp_counter_reg(11),
      R => clear
    );
\disp_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[12]_i_1_n_7\,
      Q => disp_counter_reg(12),
      R => clear
    );
\disp_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[8]_i_1_n_0\,
      CO(3) => \disp_counter_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[12]_i_1_n_4\,
      O(2) => \disp_counter_reg[12]_i_1_n_5\,
      O(1) => \disp_counter_reg[12]_i_1_n_6\,
      O(0) => \disp_counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(15 downto 12)
    );
\disp_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[12]_i_1_n_6\,
      Q => disp_counter_reg(13),
      R => clear
    );
\disp_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[12]_i_1_n_5\,
      Q => disp_counter_reg(14),
      R => clear
    );
\disp_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[12]_i_1_n_4\,
      Q => disp_counter_reg(15),
      R => clear
    );
\disp_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[16]_i_1_n_7\,
      Q => disp_counter_reg(16),
      R => clear
    );
\disp_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[12]_i_1_n_0\,
      CO(3) => \disp_counter_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[16]_i_1_n_4\,
      O(2) => \disp_counter_reg[16]_i_1_n_5\,
      O(1) => \disp_counter_reg[16]_i_1_n_6\,
      O(0) => \disp_counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(19 downto 16)
    );
\disp_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[16]_i_1_n_6\,
      Q => disp_counter_reg(17),
      R => clear
    );
\disp_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[16]_i_1_n_5\,
      Q => disp_counter_reg(18),
      R => clear
    );
\disp_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[16]_i_1_n_4\,
      Q => disp_counter_reg(19),
      R => clear
    );
\disp_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[0]_i_2_n_6\,
      Q => disp_counter_reg(1),
      R => clear
    );
\disp_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[20]_i_1_n_7\,
      Q => disp_counter_reg(20),
      R => clear
    );
\disp_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[16]_i_1_n_0\,
      CO(3) => \disp_counter_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[20]_i_1_n_4\,
      O(2) => \disp_counter_reg[20]_i_1_n_5\,
      O(1) => \disp_counter_reg[20]_i_1_n_6\,
      O(0) => \disp_counter_reg[20]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(23 downto 20)
    );
\disp_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[20]_i_1_n_6\,
      Q => disp_counter_reg(21),
      R => clear
    );
\disp_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[20]_i_1_n_5\,
      Q => disp_counter_reg(22),
      R => clear
    );
\disp_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[20]_i_1_n_4\,
      Q => disp_counter_reg(23),
      R => clear
    );
\disp_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[24]_i_1_n_7\,
      Q => disp_counter_reg(24),
      R => clear
    );
\disp_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[20]_i_1_n_0\,
      CO(3) => \disp_counter_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[24]_i_1_n_4\,
      O(2) => \disp_counter_reg[24]_i_1_n_5\,
      O(1) => \disp_counter_reg[24]_i_1_n_6\,
      O(0) => \disp_counter_reg[24]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(27 downto 24)
    );
\disp_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[24]_i_1_n_6\,
      Q => disp_counter_reg(25),
      R => clear
    );
\disp_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[24]_i_1_n_5\,
      Q => disp_counter_reg(26),
      R => clear
    );
\disp_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[24]_i_1_n_4\,
      Q => disp_counter_reg(27),
      R => clear
    );
\disp_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[28]_i_1_n_7\,
      Q => disp_counter_reg(28),
      R => clear
    );
\disp_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_disp_counter_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[28]_i_1_n_4\,
      O(2) => \disp_counter_reg[28]_i_1_n_5\,
      O(1) => \disp_counter_reg[28]_i_1_n_6\,
      O(0) => \disp_counter_reg[28]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(31 downto 28)
    );
\disp_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[28]_i_1_n_6\,
      Q => disp_counter_reg(29),
      R => clear
    );
\disp_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[0]_i_2_n_5\,
      Q => disp_counter_reg(2),
      R => clear
    );
\disp_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[28]_i_1_n_5\,
      Q => disp_counter_reg(30),
      R => clear
    );
\disp_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[28]_i_1_n_4\,
      Q => disp_counter_reg(31),
      R => clear
    );
\disp_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[0]_i_2_n_4\,
      Q => disp_counter_reg(3),
      R => clear
    );
\disp_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[4]_i_1_n_7\,
      Q => disp_counter_reg(4),
      R => clear
    );
\disp_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[0]_i_2_n_0\,
      CO(3) => \disp_counter_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[4]_i_1_n_4\,
      O(2) => \disp_counter_reg[4]_i_1_n_5\,
      O(1) => \disp_counter_reg[4]_i_1_n_6\,
      O(0) => \disp_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(7 downto 4)
    );
\disp_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[4]_i_1_n_6\,
      Q => disp_counter_reg(5),
      R => clear
    );
\disp_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[4]_i_1_n_5\,
      Q => disp_counter_reg(6),
      R => clear
    );
\disp_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[4]_i_1_n_4\,
      Q => disp_counter_reg(7),
      R => clear
    );
\disp_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[8]_i_1_n_7\,
      Q => disp_counter_reg(8),
      R => clear
    );
\disp_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \disp_counter_reg[4]_i_1_n_0\,
      CO(3) => \disp_counter_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_disp_counter_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \disp_counter_reg[8]_i_1_n_4\,
      O(2) => \disp_counter_reg[8]_i_1_n_5\,
      O(1) => \disp_counter_reg[8]_i_1_n_6\,
      O(0) => \disp_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => disp_counter_reg(11 downto 8)
    );
\disp_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \disp_counter_reg[8]_i_1_n_6\,
      Q => disp_counter_reg(9),
      R => clear
    );
\r_LEDS_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(0),
      Q => LEDS_OBUF(0),
      R => '0'
    );
\r_LEDS_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(1),
      Q => LEDS_OBUF(1),
      R => '0'
    );
\r_LEDS_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(2),
      Q => LEDS_OBUF(2),
      R => '0'
    );
\r_LEDS_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(3),
      Q => LEDS_OBUF(3),
      R => '0'
    );
\r_LEDS_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(4),
      Q => LEDS_OBUF(4),
      R => '0'
    );
\r_LEDS_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(5),
      Q => LEDS_OBUF(5),
      R => '0'
    );
\r_LEDS_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(6),
      Q => LEDS_OBUF(6),
      R => '0'
    );
\r_LEDS_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => CPU_n_11,
      D => s_output_port(7),
      Q => LEDS_OBUF(7),
      R => '0'
    );
\r_SEV_SEG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(0),
      Q => \r_SEV_SEG_reg_n_0_[0]\,
      R => '0'
    );
\r_SEV_SEG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(1),
      Q => \r_SEV_SEG_reg_n_0_[1]\,
      R => '0'
    );
\r_SEV_SEG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(2),
      Q => \r_SEV_SEG_reg_n_0_[2]\,
      R => '0'
    );
\r_SEV_SEG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(3),
      Q => \r_SEV_SEG_reg_n_0_[3]\,
      R => '0'
    );
\r_SEV_SEG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(4),
      Q => \r_SEV_SEG_reg_n_0_[4]\,
      R => '0'
    );
\r_SEV_SEG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(5),
      Q => \r_SEV_SEG_reg_n_0_[5]\,
      R => '0'
    );
\r_SEV_SEG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(6),
      Q => \r_SEV_SEG_reg_n_0_[6]\,
      R => '0'
    );
\r_SEV_SEG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => r_SEV_SEG,
      D => s_output_port(7),
      Q => \r_SEV_SEG_reg_n_0_[7]\,
      R => '0'
    );
s_clk_sig_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => s_clk_sig,
      O => s_clk_sig_BUFG
    );
s_clk_sig_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_clk_sig,
      O => s_clk_sig_i_1_n_0
    );
s_clk_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => s_clk_sig_i_1_n_0,
      Q => s_clk_sig,
      R => '0'
    );
s_disp_clk_sig_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clear,
      I1 => s_disp_clk_sig,
      O => s_disp_clk_sig_i_1_n_0
    );
s_disp_clk_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => s_disp_clk_sig_i_1_n_0,
      Q => s_disp_clk_sig,
      R => '0'
    );
sev_seg_part: entity work.Sev_Seg
     port map (
      CLK => s_disp_clk_sig,
      \CaBus[7]\(6 downto 0) => CaBus_OBUF(7 downto 1),
      Q(3 downto 0) => AnBus_OBUF(3 downto 0),
      \r_SEV_SEG_reg[7]\(7) => \r_SEV_SEG_reg_n_0_[7]\,
      \r_SEV_SEG_reg[7]\(6) => \r_SEV_SEG_reg_n_0_[6]\,
      \r_SEV_SEG_reg[7]\(5) => \r_SEV_SEG_reg_n_0_[5]\,
      \r_SEV_SEG_reg[7]\(4) => \r_SEV_SEG_reg_n_0_[4]\,
      \r_SEV_SEG_reg[7]\(3) => \r_SEV_SEG_reg_n_0_[3]\,
      \r_SEV_SEG_reg[7]\(2) => \r_SEV_SEG_reg_n_0_[2]\,
      \r_SEV_SEG_reg[7]\(1) => \r_SEV_SEG_reg_n_0_[1]\,
      \r_SEV_SEG_reg[7]\(0) => \r_SEV_SEG_reg_n_0_[0]\
    );
end STRUCTURE;
