library verilog;
use verilog.vl_types.all;
entity contadorSeg_vlg_check_tst is
    port(
        abrir_puerta    : in     vl_logic;
        cerrar_puerta   : in     vl_logic;
        cuenta          : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end contadorSeg_vlg_check_tst;
