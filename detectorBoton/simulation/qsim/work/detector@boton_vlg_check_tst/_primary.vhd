library verilog;
use verilog.vl_types.all;
entity detectorBoton_vlg_check_tst is
    port(
        pet1            : in     vl_logic_vector(4 downto 0);
        pet2            : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end detectorBoton_vlg_check_tst;
