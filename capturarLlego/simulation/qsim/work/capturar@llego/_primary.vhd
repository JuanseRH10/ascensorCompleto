library verilog;
use verilog.vl_types.all;
entity capturarLlego is
    port(
        clk             : in     vl_logic;
        clear           : in     vl_logic;
        llego           : in     vl_logic;
        llego_capturado : out    vl_logic
    );
end capturarLlego;
