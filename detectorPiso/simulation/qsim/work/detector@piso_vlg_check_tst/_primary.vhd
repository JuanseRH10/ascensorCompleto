library verilog;
use verilog.vl_types.all;
entity detectorPiso_vlg_check_tst is
    port(
        pisoActual      : in     vl_logic_vector(2 downto 0);
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end detectorPiso_vlg_check_tst;
