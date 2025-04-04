library verilog;
use verilog.vl_types.all;
entity detectorBoton_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        PB              : in     vl_logic_vector(4 downto 0);
        PD              : in     vl_logic_vector(4 downto 0);
        PS              : in     vl_logic_vector(4 downto 0);
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end detectorBoton_vlg_sample_tst;
