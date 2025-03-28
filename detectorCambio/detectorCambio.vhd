library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detectorCambio is
    Port (
        clk       : in  std_logic;  
        reset1    : in  std_logic;  
        reset2    : in  std_logic;  
        clear     : in  std_logic;  
        salida : out std_logic   
    );
end detectorCambio;

architecture arch_detectorCambio of detectorCambio is
    signal detecta     : std_logic := '0';  
    signal reset1Prev : std_logic := '0';
    signal reset2Prev : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            
            reset1Prev <= reset1;
            reset2Prev <= reset2;
            
            
            if clear = '1' then
                detecta <= '0';
            
            elsif ((reset1 = '1' and reset1Prev = '0') or 
                   (reset2 = '1' and reset2Prev = '0')) then
                detecta <= '1';
            end if;
        end if;
    end process;

    salida <= detecta;

end arch_detectorCambio;
