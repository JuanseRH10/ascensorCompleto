library verilog;
use verilog.vl_types.all;
entity contadorGenerico_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        valorRes        : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end contadorGenerico_vlg_sample_tst;
