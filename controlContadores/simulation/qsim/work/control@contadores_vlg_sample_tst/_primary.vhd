library verilog;
use verilog.vl_types.all;
entity controlContadores_vlg_sample_tst is
    port(
        anomalia        : in     vl_logic;
        clk             : in     vl_logic;
        llego           : in     vl_logic;
        llegoa10        : in     vl_logic;
        llegoa45        : in     vl_logic;
        sobreCarga      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controlContadores_vlg_sample_tst;
