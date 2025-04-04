library verilog;
use verilog.vl_types.all;
entity controlAscensor_vlg_sample_tst is
    port(
        anomalia        : in     vl_logic;
        cambiandoEstado : in     vl_logic;
        estadoPuerta    : in     vl_logic;
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        pisoActual      : in     vl_logic_vector(2 downto 0);
        sobreCarga      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end controlAscensor_vlg_sample_tst;
