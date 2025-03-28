library verilog;
use verilog.vl_types.all;
entity sensorPersonas is
    port(
        clk             : in     vl_logic;
        sensorA         : in     vl_logic;
        sensorB         : in     vl_logic;
        personaEntra    : out    vl_logic;
        personaSale     : out    vl_logic
    );
end sensorPersonas;
