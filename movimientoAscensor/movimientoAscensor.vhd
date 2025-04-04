library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity movimientoAscensor is
    Port(
        enable     : in  std_logic;
        pet1       : in  std_logic_vector(2 downto 0);
        pet2       : in  std_logic_vector(2 downto 0);
        pisoActual : in  std_logic_vector(2 downto 0);
        subir      : out std_logic;
        bajar      : out std_logic;
        quieto     : out std_logic
    );
end movimientoAscensor;


architecture arch_movimientoAscensor of movimientoAscensor is
begin
    process(enable, pet1, pet2, pisoActual)
        variable piso  : integer;
        variable peticion1   : integer;
        variable peticion2   : integer;
        variable dist1       : integer;
        variable dist2       : integer;
        variable eleccion    : integer;
    begin
        
        subir  <= '0';
        bajar  <= '0';
        quieto <= '0';
        
        if enable = '0' then
            quieto <= '1';
        else
            
            if (pet1 = "000") and (pet2 = "000") then
                quieto <= '1';
            else
                
                piso := to_integer(unsigned(pisoActual));
                
                
                if pet1 = "000" then
                    eleccion := to_integer(unsigned(pet2));
                elsif pet2 = "000" then
                    eleccion := to_integer(unsigned(pet1));
                else
                    
                    peticion1  := to_integer(unsigned(pet1));
                    peticion2  := to_integer(unsigned(pet2));
                    
                    dist1 := abs(piso - peticion1);
                    dist2 := abs(piso - peticion2);
                    
                    if dist1 < dist2 then
                        eleccion := peticion1;
                    elsif dist2 < dist1 then
                        eleccion := peticion2;
                    else
                        -- Si las distancias son iguales:
								
                        if eleccion > piso then
									  subir <= '1';
								 elsif eleccion < piso then
									  bajar <= '1';
								 end if;
								 
                    end if;
                end if;
                
                
                if eleccion > piso then
                    subir <= '1';
                elsif eleccion < piso then
                    bajar <= '1';
                else
                    quieto <= '1';
                end if;
					 
            end if;
        end if;
    end process;
end arch_movimientoAscensor;
