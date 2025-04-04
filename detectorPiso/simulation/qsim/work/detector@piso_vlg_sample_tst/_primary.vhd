library verilog;
use verilog.vl_types.all;
entity detectorPiso_vlg_sample_tst is
    port(
        bajar           : in     vl_logic;
        clk             : in     vl_logic;
        pet1            : in     vl_logic_vector(2 downto 0);
        pet2            : in     vl_logic_vector(2 downto 0);
        quieto          : in     vl_logic;
        subir           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end detectorPiso_vlg_sample_tst;
