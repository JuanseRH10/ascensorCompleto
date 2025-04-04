library verilog;
use verilog.vl_types.all;
entity detectorBoton is
    port(
        clk             : in     vl_logic;
        reset1          : in     vl_logic;
        reset2          : in     vl_logic;
        PS              : in     vl_logic_vector(4 downto 0);
        PB              : in     vl_logic_vector(4 downto 0);
        PD              : in     vl_logic_vector(4 downto 0);
        pet1            : out    vl_logic_vector(4 downto 0);
        pet2            : out    vl_logic_vector(4 downto 0)
    );
end detectorBoton;
