library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Scratch_RAM is
	port (  SCR_ADDR : in STD_LOGIC_VECTOR (7 downto 0);
            SCR_WR : in STD_LOGIC;
            SCR_DATA_in : in STD_LOGIC_VECTOR (9 downto 0);
            CLK : in STD_LOGIC;
            SCR_DATA_out : out STD_LOGIC_VECTOR (9 downto 0));
end Scratch_RAM;

architecture Behavioral of Scratch_RAM is
	type memory is array(0 to 255) of std_logic_vector(9 downto 0);
	signal scratch : memory := (others => (others => '0'));
begin
	SCR_DATA_out <= scratch(to_integer(unsigned(SCR_ADDR)));
	process (CLK) begin
	if rising_edge(CLK) then
		if (SCR_WR = '1') then
			scratch(to_integer(unsigned(SCR_ADDR))) <= SCR_DATA_in;
		end if;
	end if;
end process;
end Behavioral;