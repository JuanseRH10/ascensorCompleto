library verilog;
use verilog.vl_types.all;
entity movimientoAscensor is
    port(
        enable          : in     vl_logic;
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        pisoActual      : in     vl_logic_vector(2 downto 0);
        subir           : out    vl_logic;
        bajar           : out    vl_logic;
        quieto          : out    vl_logic
    );
end movimientoAscensor;
