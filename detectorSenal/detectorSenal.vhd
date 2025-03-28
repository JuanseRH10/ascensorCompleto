library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity detectorSenal is
    Port (
        clk     : in  std_logic;                          
        datos : in  std_logic_vector(2 downto 0);       
        reset1  : in  std_logic;                          
        reset2  : in  std_logic;                          
        q1      : out std_logic_vector(2 downto 0);       
        q2      : out std_logic_vector(2 downto 0)        
    );
end detectorSenal;

architecture arch_detectorSenal of detectorSenal is
    
    signal reg1 : std_logic_vector(2 downto 0) := (others => '0');
    signal reg2 : std_logic_vector(2 downto 0) := (others => '0');
    
    signal primero : std_logic := '0';
    
    signal datosPrev : std_logic_vector(2 downto 0) := (others => '0');
begin

    process(clk, reset1, reset2)
    begin
        
        if reset1 = '1' then
            reg1           <= (others => '0');
            primero <= '0';
        elsif reset2 = '1' then
            reg2 <= (others => '0');
        elsif rising_edge(clk) then
            
            if datos /= datosPrev then
                if primero = '0' then
                    reg1           <= datos;  
                    primero <= '1';
                else
                    reg2 <= datos;            
                end if;
            end if;
            datosPrev <= datos;
        end if;
    end process;

    
    q1 <= reg1;
    q2 <= reg2;
    
end arch_detectorSenal;
