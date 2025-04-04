library verilog;
use verilog.vl_types.all;
entity actualizarPiso_vlg_check_tst is
    port(
        pisoActual      : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end actualizarPiso_vlg_check_tst;
