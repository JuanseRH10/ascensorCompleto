library verilog;
use verilog.vl_types.all;
entity actualizarPiso is
    port(
        clk             : in     vl_logic;
        subir           : in     vl_logic;
        bajar           : in     vl_logic;
        quieto          : in     vl_logic;
        pisoActual      : out    vl_logic_vector(2 downto 0)
    );
end actualizarPiso;
