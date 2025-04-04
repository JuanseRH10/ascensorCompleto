library verilog;
use verilog.vl_types.all;
entity alarmas_vlg_sample_tst is
    port(
        cantPer         : in     vl_logic_vector(3 downto 0);
        cuentaAscensor  : in     vl_logic_vector(5 downto 0);
        sensorEnergia   : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end alarmas_vlg_sample_tst;
