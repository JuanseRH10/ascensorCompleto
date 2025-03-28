library verilog;
use verilog.vl_types.all;
entity detectorCambio_vlg_sample_tst is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end detectorCambio_vlg_sample_tst;
