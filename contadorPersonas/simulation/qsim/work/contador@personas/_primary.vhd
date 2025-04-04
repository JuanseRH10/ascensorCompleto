library verilog;
use verilog.vl_types.all;
entity contadorPersonas is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        personaEntra    : in     vl_logic;
        personaSale     : in     vl_logic;
        cuenta          : out    vl_logic_vector(3 downto 0)
    );
end contadorPersonas;
