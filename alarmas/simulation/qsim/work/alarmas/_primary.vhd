library verilog;
use verilog.vl_types.all;
entity alarmas is
    port(
        cantPer         : in     vl_logic_vector(3 downto 0);
        cuentaAscensor  : in     vl_logic_vector(5 downto 0);
        sensorEnergia   : in     vl_logic;
        masde10         : out    vl_logic;
        abrirCerrar     : out    vl_logic;
        abrirCerrarSon  : out    vl_logic;
        anomaliaEn      : out    vl_logic;
        anomaliaEnSon   : out    vl_logic;
        luz             : out    vl_logic
    );
end alarmas;
