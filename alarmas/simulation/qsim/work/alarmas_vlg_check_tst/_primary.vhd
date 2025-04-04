library verilog;
use verilog.vl_types.all;
entity alarmas_vlg_check_tst is
    port(
        abrirCerrar     : in     vl_logic;
        abrirCerrarSon  : in     vl_logic;
        anomaliaEn      : in     vl_logic;
        anomaliaEnSon   : in     vl_logic;
        luz             : in     vl_logic;
        masde10         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end alarmas_vlg_check_tst;
