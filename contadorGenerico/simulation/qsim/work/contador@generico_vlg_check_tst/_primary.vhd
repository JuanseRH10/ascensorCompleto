library verilog;
use verilog.vl_types.all;
entity contadorGenerico_vlg_check_tst is
    port(
        cuenta          : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end contadorGenerico_vlg_check_tst;
