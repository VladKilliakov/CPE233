library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity stack_pointer is
    Port ( rst : in STD_LOGIC;
           sp_ld : in STD_LOGIC;
           sp_incr: in STD_LOGIC;
           sp_decr: in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (7 downto 0);
           clk : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end stack_pointer;

architecture Behavioral of stack_pointer is

begin
    process(CLK)
    variable temp : std_logic_vector (7 downto 0) := "00000000";
        begin
            if rising_edge(CLK) then
                if RST = '1' then
                    temp := "00000000";
                elsif sp_ld = '1' then
                    temp := data_in;     
                elsif sp_incr = '1' then
                    temp := std_logic_vector(unsigned(temp) + 1);
                elsif sp_decr = '1' then
                    temp := std_logic_vector(unsigned(temp) - 1);
                end if;
            
            end if;
            data_out <= temp;
     end process;
                             
end Behavioral;