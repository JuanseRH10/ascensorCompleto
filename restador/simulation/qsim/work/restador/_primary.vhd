library verilog;
use verilog.vl_types.all;
entity restador is
    port(
        x               : in     vl_logic_vector(3 downto 0);
        y               : in     vl_logic_vector(3 downto 0);
        sig             : out    vl_logic;
        mag             : out    vl_logic_vector(3 downto 0)
    );
end restador;
