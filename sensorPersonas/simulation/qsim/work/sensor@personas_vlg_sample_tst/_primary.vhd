library verilog;
use verilog.vl_types.all;
entity sensorPersonas_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sensorA         : in     vl_logic;
        sensorB         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sensorPersonas_vlg_sample_tst;
