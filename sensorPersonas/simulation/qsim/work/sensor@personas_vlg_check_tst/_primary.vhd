library verilog;
use verilog.vl_types.all;
entity sensorPersonas_vlg_check_tst is
    port(
        personaEntra    : in     vl_logic;
        personaSale     : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end sensorPersonas_vlg_check_tst;
