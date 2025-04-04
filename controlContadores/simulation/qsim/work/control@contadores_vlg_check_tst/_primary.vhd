library verilog;
use verilog.vl_types.all;
entity controlContadores_vlg_check_tst is
    port(
        clear           : in     vl_logic;
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end controlContadores_vlg_check_tst;
