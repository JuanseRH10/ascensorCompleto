library verilog;
use verilog.vl_types.all;
entity contadorPersonas_vlg_check_tst is
    port(
        cuenta          : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end contadorPersonas_vlg_check_tst;
