library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flags is
    Port ( FLG_C_SET : in STD_LOGIC;
           FLG_C_CLR : in STD_LOGIC;
           FLG_C_LD : in STD_LOGIC;
           FLG_Z_LD : in STD_LOGIC;
           FLG_LD_SEL : in STD_LOGIC;
           FLG_SHAD_LD : in STD_LOGIC;
           CLK : in STD_LOGIC;
           C_FLAG_IN : in STD_LOGIC;
           Z_FLAG_IN : in STD_LOGIC;
           C_FLAG_OUT: out STD_LOGIC;
           Z_FLAG_OUT : out STD_LOGIC);
end flags;

architecture Behavioral of flags is

signal s_c, s_z, c_mux, z_mux, sh_c, sh_z : std_logic;
begin

    process (CLK) begin 
        if rising_edge(CLK) then
            if FLG_C_LD = '1' then
                s_c <= c_mux; 
            elsif FLG_C_SET = '1' then 
                s_c <= '1';
            elsif FLG_C_CLR = '1' then
                s_c <= '0';
            end if;
            if FLG_Z_LD = '1' then
                s_z <= z_mux;
            end if;
            if FLG_SHAD_LD = '1' then
                sh_c <= s_c;
                sh_z <= s_z;
            end if;
        end if;
    end process;        
            
    process(FLG_LD_SEL) begin          
      if FLG_LD_SEL = '1' then
        c_mux <= sh_c;
        z_mux <= sh_z;
      else 
        c_mux <= C_FLAG_IN;
        z_mux <= Z_FLAG_IN;
      end if;      
    end process;
    
    C_FLAG_OUT <= s_c;
    Z_FLAG_OUT <= s_z;
     
end Behavioral;
