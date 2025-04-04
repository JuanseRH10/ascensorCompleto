library verilog;
use verilog.vl_types.all;
entity controlPuerta_vlg_sample_tst is
    port(
        anomalia        : in     vl_logic;
        clk             : in     vl_logic;
        llego           : in     vl_logic;
        sobreCarga      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controlPuerta_vlg_sample_tst;
