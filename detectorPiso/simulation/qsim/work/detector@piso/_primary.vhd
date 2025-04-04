library verilog;
use verilog.vl_types.all;
entity detectorPiso is
    port(
        clk             : in     vl_logic;
        subir           : in     vl_logic;
        bajar           : in     vl_logic;
        quieto          : in     vl_logic;
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        pisoActual      : out    vl_logic_vector(2 downto 0);
        reset1          : out    vl_logic;
        reset2          : out    vl_logic
    );
end detectorPiso;
