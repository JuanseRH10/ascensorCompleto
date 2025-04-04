library verilog;
use verilog.vl_types.all;
entity controlAscensor is
    port(
        pisoActual      : in     vl_logic_vector(2 downto 0);
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        sobreCarga      : in     vl_logic;
        estadoPuerta    : in     vl_logic;
        anomalia        : in     vl_logic;
        cambiandoEstado : in     vl_logic;
        subir           : out    vl_logic;
        bajar           : out    vl_logic;
        quieto          : out    vl_logic
    );
end controlAscensor;
