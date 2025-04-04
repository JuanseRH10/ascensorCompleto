library ieee;
use ieee.std_logic_1164.all;

entity controlContadores is
    port (
        clk        : in  std_logic;
        llego      : in  std_logic;
        anomalia   : in  std_logic;
        sobreCarga : in  std_logic;
        llegoa10   : in  std_logic;
        llegoa45   : in  std_logic;
        reset1     : out std_logic;
        reset2     : out std_logic;
        clear      : out std_logic
    );
end controlContadores;

architecture arch_controlContadores of controlContadores is

    signal stage     : std_logic_vector(1 downto 0) := "00";
    signal reset1_reg : std_logic := '1';
    signal reset2_reg : std_logic := '1';
    signal clear_reg  : std_logic := '0';
    
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if (anomalia = '1' or sobreCarga = '1') then
                stage      <= "00";
                reset1_reg <= '1';
                reset2_reg <= '1';
                clear_reg  <= '0';
                
            else
                case stage is
                    when "00" =>
                        -- En estado inactivo, clear se mantiene en '0'
                        clear_reg <= '0';
                        -- Si se recibe la señal de llegada, se inicia el primer contador
                        if (llego = '1') then
                            stage      <= "01";
                            reset1_reg <= '0';  -- Se habilita el primer contador
                            reset2_reg <= '1';
                        end if;
                        
                    when "01" =>
                        -- En esta etapa, el primer contador sigue activo (reset1 = '0')
                        clear_reg <= '0';
                        -- Si se detecta que el primer contador terminó (llegoa10 = '1')
                        -- y se mantiene la señal de llegada, se pasa al segundo contador:
                        if (llego = '1' and llegoa10 = '1') then
                            stage      <= "10";
                            reset1_reg <= '1';  -- Se desactiva el primer contador
                            reset2_reg <= '0';  -- Se habilita el segundo contador
                        end if;
                        
                    when "10" =>
                        -- En esta etapa, el segundo contador está activo (reset2 = '0')
                        -- Si se detecta que el segundo contador terminó (llegoa45 = '1')
                        -- y se mantienen llego y llegoa10 en '1', se genera clear (pulso) y se regresa al estado inactivo
                        if (llego = '1' and llegoa10 = '1' and llegoa45 = '1') then
                            stage      <= "00";
                            reset1_reg <= '1';
                            reset2_reg <= '1';
                            clear_reg  <= '1';  -- Pulso: clear = '1' en este ciclo
                        else
                            clear_reg  <= '0';
                        end if;
                        
                    when others =>
                        stage      <= "00";
                        reset1_reg <= '1';
                        reset2_reg <= '1';
                        clear_reg  <= '0';
                end case;
            end if;
        end if;
    end process;
    
    -- Se asignan las salidas a los registros internos.
    -- Las señales reset1 y reset2 se mantienen (latch) hasta que se actualicen en un evento.
    reset1 <= reset1_reg;
    reset2 <= reset2_reg;
    clear  <= clear_reg;

end arch_controlContadores;
