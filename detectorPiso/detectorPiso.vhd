library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity detectorPiso is
    Port (
			
			clk   : in std_logic;
        subir      : in  std_logic;              
        bajar      : in  std_logic;              
        peticion1  : in  std_logic_vector(2 downto 0);  
        peticion2  : in  std_logic_vector(2 downto 0);  
        pisoActual : out std_logic_vector(2 downto 0);  
        reset1     : out std_logic;              
        reset2     : out std_logic               
    );
end detectorPiso;

architecture arch_detectorPiso of detectorPiso is
  
    signal piso : unsigned(2 downto 0) := "001";
	 
begin

    process(subir, bajar, piso, peticion1, peticion2)
        variable nuevoPiso : unsigned(2 downto 0);
    begin
	 
	 if rising_edge(clk) then
	 
	 
        -- Por defecto se conserva el piso actual.
        nuevoPiso := piso;
        
        -- Si se activa el pulso para subir y no se excede el piso 5 ("101").
        if subir = '1' then
            if piso < "101" then
                nuevoPiso := piso + 1;
            end if;
        -- Si se activa el pulso para bajar y no se baja de piso 1 ("001").
        elsif bajar = '1' then
            if piso > "001" then
                nuevoPiso := piso - 1;
            end if;
        end if;
        
        -- Se "almacena" el nuevo piso (se infiere un latch).
        piso <= nuevoPiso;
        
        -- Comparación con las peticiones:
        if piso = unsigned(peticion1) then
            reset1 <= '1';
        else
            reset1 <= '0';
        end if;
        
        if piso = unsigned(peticion2) then
            reset2 <= '1';
        else
            reset2 <= '0';
        end if;
	 end if;
    end process;
    
    -- Se asigna el valor interno convertido a std_logic_vector a la salida.
    pisoActual <= std_logic_vector(piso);

end arch_detectorPiso;
