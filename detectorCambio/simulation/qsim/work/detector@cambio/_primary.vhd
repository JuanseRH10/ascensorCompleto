library verilog;
use verilog.vl_types.all;
entity detectorCambio is
    port(
        clk             : in     vl_logic;
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        clear           : in     vl_logic;
        salida          : out    vl_logic
    );
end detectorCambio;
