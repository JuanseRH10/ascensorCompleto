library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity contadorPersonas is
    Port (
        clk        : in  std_logic;                 
        reset      : in  std_logic;                 
        personaEntra  : in  std_logic;                 
        personaSale : in  std_logic; 
		  
        cuenta      : out std_logic_vector(3 downto 0) 
    );
end contadorPersonas;

architecture arch_contadorPersonas of contadorPersonas is
    signal cnt : unsigned(3 downto 0) := (others => '0');
begin

    process(clk, reset)
    begin
        if reset = '1' then
            cnt <= (others => '0');
        elsif rising_edge(clk) then
            
            if personaEntra = '1' and personaSale = '0' then
                cnt <= cnt + 1;
            
            elsif personaEntra = '0' and personaSale = '1' then
                if cnt > 0 then
                    cnt <= cnt - 1;
                else
                    cnt <= cnt;
                end if;
          
            else
                cnt <= cnt;
            end if;
        end if;
    end process;
    
  
    cuenta <= std_logic_vector(cnt);
    
end arch_contadorPersonas;
