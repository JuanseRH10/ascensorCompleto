library verilog;
use verilog.vl_types.all;
entity actualizarPiso_vlg_sample_tst is
    port(
        bajar           : in     vl_logic;
        clk             : in     vl_logic;
        quieto          : in     vl_logic;
        subir           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end actualizarPiso_vlg_sample_tst;
