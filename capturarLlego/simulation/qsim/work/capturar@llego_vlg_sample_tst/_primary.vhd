library verilog;
use verilog.vl_types.all;
entity capturarLlego_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        llego           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end capturarLlego_vlg_sample_tst;
