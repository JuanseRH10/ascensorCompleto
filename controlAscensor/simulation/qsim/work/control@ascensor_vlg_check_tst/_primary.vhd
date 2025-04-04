library verilog;
use verilog.vl_types.all;
entity controlAscensor_vlg_check_tst is
    port(
        bajar           : in     vl_logic;
        quieto          : in     vl_logic;
        subir           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controlAscensor_vlg_check_tst;
