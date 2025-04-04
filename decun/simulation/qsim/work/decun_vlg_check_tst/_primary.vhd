library verilog;
use verilog.vl_types.all;
entity decun_vlg_check_tst is
    port(
        dec             : in     vl_logic_vector(3 downto 0);
        un              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end decun_vlg_check_tst;
