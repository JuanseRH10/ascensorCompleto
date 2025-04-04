library verilog;
use verilog.vl_types.all;
entity decun is
    port(
        sum             : in     vl_logic_vector(4 downto 0);
        dec             : out    vl_logic_vector(3 downto 0);
        un              : out    vl_logic_vector(3 downto 0)
    );
end decun;
