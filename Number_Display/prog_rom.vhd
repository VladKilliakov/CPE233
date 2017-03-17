-----------------------------------------------------------------------------
-- Definition of a single port ROM for RATASM defined by prog_rom.psm 
--  
-- Generated by RATASM Assembler 
--  
-- Standard IEEE libraries  
--  
-----------------------------------------------------------------------------

-----------------------------------------------------------------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library unisim;
use unisim.vcomponents.all;
-----------------------------------------------------------------------------


entity prog_rom is 
   port (     ADDRESS : in std_logic_vector(9 downto 0); 
          INSTRUCTION : out std_logic_vector(17 downto 0); 
                  CLK : in std_logic);  
end prog_rom;



architecture low_level_definition of prog_rom is

   -----------------------------------------------------------------------------
   -- Attributes to define ROM contents during implementation synthesis. 
   -- The information is repeated in the generic map for functional simulation. 
   -----------------------------------------------------------------------------

   attribute INIT_00 : string; 
   attribute INIT_01 : string; 
   attribute INIT_02 : string; 
   attribute INIT_03 : string; 
   attribute INIT_04 : string; 
   attribute INIT_05 : string; 
   attribute INIT_06 : string; 
   attribute INIT_07 : string; 
   attribute INIT_08 : string; 
   attribute INIT_09 : string; 
   attribute INIT_0A : string; 
   attribute INIT_0B : string; 
   attribute INIT_0C : string; 
   attribute INIT_0D : string; 
   attribute INIT_0E : string; 
   attribute INIT_0F : string; 
   attribute INIT_10 : string; 
   attribute INIT_11 : string; 
   attribute INIT_12 : string; 
   attribute INIT_13 : string; 
   attribute INIT_14 : string; 
   attribute INIT_15 : string; 
   attribute INIT_16 : string; 
   attribute INIT_17 : string; 
   attribute INIT_18 : string; 
   attribute INIT_19 : string; 
   attribute INIT_1A : string; 
   attribute INIT_1B : string; 
   attribute INIT_1C : string; 
   attribute INIT_1D : string; 
   attribute INIT_1E : string; 
   attribute INIT_1F : string; 
   attribute INIT_20 : string; 
   attribute INIT_21 : string; 
   attribute INIT_22 : string; 
   attribute INIT_23 : string; 
   attribute INIT_24 : string; 
   attribute INIT_25 : string; 
   attribute INIT_26 : string; 
   attribute INIT_27 : string; 
   attribute INIT_28 : string; 
   attribute INIT_29 : string; 
   attribute INIT_2A : string; 
   attribute INIT_2B : string; 
   attribute INIT_2C : string; 
   attribute INIT_2D : string; 
   attribute INIT_2E : string; 
   attribute INIT_2F : string; 
   attribute INIT_30 : string; 
   attribute INIT_31 : string; 
   attribute INIT_32 : string; 
   attribute INIT_33 : string; 
   attribute INIT_34 : string; 
   attribute INIT_35 : string; 
   attribute INIT_36 : string; 
   attribute INIT_37 : string; 
   attribute INIT_38 : string; 
   attribute INIT_39 : string; 
   attribute INIT_3A : string; 
   attribute INIT_3B : string; 
   attribute INIT_3C : string; 
   attribute INIT_3D : string; 
   attribute INIT_3E : string; 
   attribute INIT_3F : string; 
   attribute INITP_00 : string; 
   attribute INITP_01 : string; 
   attribute INITP_02 : string; 
   attribute INITP_03 : string; 
   attribute INITP_04 : string; 
   attribute INITP_05 : string; 
   attribute INITP_06 : string; 
   attribute INITP_07 : string; 


   ----------------------------------------------------------------------
   -- Attributes to define ROM contents during implementation synthesis.
   ----------------------------------------------------------------------

   attribute INIT_00 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_01 of ram_1024_x_18 : label is "A02F609EA02E60E5A02D60CEA02C60E5A02B6024A02A6049A02960DEA02860F6";  
   attribute INIT_02 of ram_1024_x_18 : label is "A0376024A03660E5A03560DEA03460F3A033609EA03260F3A0316092A03060B7";  
   attribute INIT_03 of ram_1024_x_18 : label is "1501A000650070176F1C620061006000A03B6092A03A60F7A03960DEA03860F7";  
   attribute INIT_04 of ram_1024_x_18 : label is "86E0750070036F036500D4016F0382E074014701CD014D0183014301201081FB";  
   attribute INIT_05 of ram_1024_x_18 : label is "C501A2E1C70A8501750047938538650072002710828315018612411886424200";  
   attribute INIT_06 of ram_1024_x_18 : label is "4B79640046218338833884028701836A4638652A83620500670064284639870A";  
   attribute INIT_07 of ram_1024_x_18 : label is "A3C0C801670184AA070168074C2A850183F04C2A84FA05006700690168084A81";  
   attribute INIT_08 of ram_1024_x_18 : label is "8B01848A090489014E024B014A006E0084604E024B014A00A441A4206E010C00";  
   attribute INIT_09 of ram_1024_x_18 : label is "840186E08101851A4168824A14014F598B0584FA040083F08A01C903CB0283F3";  
   attribute INIT_0A of ram_1024_x_18 : label is "441182D085D882D032202408857B85AA410082808101700A6F0C83808B044531";  
   attribute INIT_0B of ram_1024_x_18 : label is "9301857285FB1500559285B0C4013200856A040044018580C401320085520400";  
   attribute INIT_0C of ram_1024_x_18 : label is "101D750070006F006E00864B15018640828070036F0386486100820185D89201";  
   attribute INIT_0D of ram_1024_x_18 : label is "160086F8770476FF86784E024F01500086C090016F0086C08F0186AA0F27862A";  
   attribute INIT_0E of ram_1024_x_18 : label is "0000000000000000A00275018280A00086F876FFD7018742170086F8D601871A";  
   attribute INIT_0F of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_10 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_11 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_12 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_13 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_14 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_15 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_16 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_17 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_18 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_19 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1A of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1B of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1C of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1D of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1E of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_1F of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_20 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_21 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_22 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_23 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_24 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_25 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_26 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_27 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_28 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_29 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2A of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2B of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2C of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2D of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2E of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_2F of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_30 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_31 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_32 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_33 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_34 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_35 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_36 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_37 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_38 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_39 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3A of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3B of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3C of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3D of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3E of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INIT_3F of ram_1024_x_18 : label is "8750000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_00 of ram_1024_x_18 : label is "2CF203FC302833F28AC3F3003FECC88CDFFFFFFFFFFFFFFFFFFFFFFF00000000";  
   attribute INITP_01 of ram_1024_x_18 : label is "00000000007138C8CF3F2C8CFFCC3CE28308308300000BC8880C8CA88EFF3F0D";  
   attribute INITP_02 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_03 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_04 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_05 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_06 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  
   attribute INITP_07 of ram_1024_x_18 : label is "0000000000000000000000000000000000000000000000000000000000000000";  


begin

   ----------------------------------------------------------------------
   --Instantiate the Xilinx primitive for a block RAM 
   --INIT values repeated to define contents for functional simulation 
   ----------------------------------------------------------------------
   ram_1024_x_18: RAMB16_S18 
   --synthesitranslate_off
   --INIT values repeated to define contents for functional simulation
   generic map ( 
          INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INIT_01 => X"A02F609EA02E60E5A02D60CEA02C60E5A02B6024A02A6049A02960DEA02860F6",  
          INIT_02 => X"A0376024A03660E5A03560DEA03460F3A033609EA03260F3A0316092A03060B7",  
          INIT_03 => X"1501A000650070176F1C620061006000A03B6092A03A60F7A03960DEA03860F7",  
          INIT_04 => X"86E0750070036F036500D4016F0382E074014701CD014D0183014301201081FB",  
          INIT_05 => X"C501A2E1C70A8501750047938538650072002710828315018612411886424200",  
          INIT_06 => X"4B79640046218338833884028701836A4638652A83620500670064284639870A",  
          INIT_07 => X"A3C0C801670184AA070168074C2A850183F04C2A84FA05006700690168084A81",  
          INIT_08 => X"8B01848A090489014E024B014A006E0084604E024B014A00A441A4206E010C00",  
          INIT_09 => X"840186E08101851A4168824A14014F598B0584FA040083F08A01C903CB0283F3",  
          INIT_0A => X"441182D085D882D032202408857B85AA410082808101700A6F0C83808B044531",  
          INIT_0B => X"9301857285FB1500559285B0C4013200856A040044018580C401320085520400",  
          INIT_0C => X"101D750070006F006E00864B15018640828070036F0386486100820185D89201",  
          INIT_0D => X"160086F8770476FF86784E024F01500086C090016F0086C08F0186AA0F27862A",  
          INIT_0E => X"0000000000000000A00275018280A00086F876FFD7018742170086F8D601871A",  
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
          INIT_3F => X"8750000000000000000000000000000000000000000000000000000000000000",  
          INITP_00 => X"2CF203FC302833F28AC3F3003FECC88CDFFFFFFFFFFFFFFFFFFFFFFF00000000",  
          INITP_01 => X"00000000007138C8CF3F2C8CFFCC3CE28308308300000BC8880C8CA88EFF3F0D",  
          INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",  
          INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000")  


   --synthesis translate_on
   port map(  DI => "0000000000000000",
             DIP => "00",
              EN => '1',
              WE => '0',
             SSR => '0',
             CLK => clk,
            ADDR => address,
              DO => INSTRUCTION(15 downto 0),
             DOP => INSTRUCTION(17 downto 16)); 

--
end low_level_definition;
--
----------------------------------------------------------------------
-- END OF FILE prog_rom.vhd
----------------------------------------------------------------------
