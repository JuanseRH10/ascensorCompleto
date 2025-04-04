library verilog;
use verilog.vl_types.all;
entity controlPuerta_vlg_check_tst is
    port(
        cambiandoEstado : in     vl_logic;
        estadoPuerta    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controlPuerta_vlg_check_tst;
