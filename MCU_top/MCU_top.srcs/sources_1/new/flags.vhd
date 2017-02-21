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

begin

    process (CLK) begin 
        if rising_edge(CLK) then
            if FLG_C_LD = '1' then
                C_FLAG_OUT <= C_FLAG_IN; 
            elsif FLG_C_SET = '1' then 
                C_FLAG_OUT <= '1';
            elsif FLG_C_CLR = '1' then
                C_FLAG_OUT <= '0';
            end if;
            if FLG_Z_LD = '1' then
                Z_FLAG_OUT <= Z_FLAG_IN;
            end if;
        end if;
    end process;
     
end Behavioral;