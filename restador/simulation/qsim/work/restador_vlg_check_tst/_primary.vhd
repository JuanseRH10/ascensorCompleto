library verilog;
use verilog.vl_types.all;
entity restador_vlg_check_tst is
    port(
        mag             : in     vl_logic_vector(3 downto 0);
        sig             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end restador_vlg_check_tst;
