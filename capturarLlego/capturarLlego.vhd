library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity capturarLlego is
    Port (
        clk             : in  std_logic;
        clear           : in  std_logic;
        llego           : in  std_logic;
        llego_capturado : out std_logic
    );
end capturarLlego;

architecture arch_capturarLlego of capturarLlego is
    signal capturado    : std_logic := '0'; 
    signal llego_prev  : std_logic := '0'; 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if clear = '1' then
                capturado <= '0';  
            else  
                if (llego_prev = '0') and (llego = '1') then
                    capturado <= '1';
                end if;
            end if;
            llego_prev <= llego;  
        end if;
    end process;

    llego_capturado <= capturado;
    
end arch_capturarLlego;
