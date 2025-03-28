library verilog;
use verilog.vl_types.all;
entity comparadorNbits is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        AiguB           : out    vl_logic;
        AmayB           : out    vl_logic;
        AmenB           : out    vl_logic
    );
end comparadorNbits;
