library verilog;
use verilog.vl_types.all;
entity registrosBotones_vlg_check_tst is
    port(
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end registrosBotones_vlg_check_tst;
