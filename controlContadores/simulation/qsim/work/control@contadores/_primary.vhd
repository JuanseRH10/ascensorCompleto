library verilog;
use verilog.vl_types.all;
entity controlContadores is
    port(
        clk             : in     vl_logic;
        llego           : in     vl_logic;
        anomalia        : in     vl_logic;
        sobreCarga      : in     vl_logic;
        llegoa10        : in     vl_logic;
        llegoa45        : in     vl_logic;
        reset1          : out    vl_logic;
        reset2          : out    vl_logic;
        clear           : out    vl_logic
    );
end controlContadores;
