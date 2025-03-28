library verilog;
use verilog.vl_types.all;
entity contadorSeg is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        cuenta          : out    vl_logic_vector(5 downto 0);
        abrir_puerta    : out    vl_logic;
        cerrar_puerta   : out    vl_logic
    );
end contadorSeg;
