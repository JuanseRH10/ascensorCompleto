library verilog;
use verilog.vl_types.all;
entity controlPuerta is
    port(
        clk             : in     vl_logic;
        llego           : in     vl_logic;
        anomalia        : in     vl_logic;
        sobreCarga      : in     vl_logic;
        cambiandoEstado : out    vl_logic;
        estadoPuerta    : out    vl_logic
    );
end controlPuerta;
