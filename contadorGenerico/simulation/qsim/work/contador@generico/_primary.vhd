library verilog;
use verilog.vl_types.all;
entity contadorGenerico is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        valorRes        : in     vl_logic_vector(5 downto 0);
        cuenta          : out    vl_logic_vector(5 downto 0)
    );
end contadorGenerico;
