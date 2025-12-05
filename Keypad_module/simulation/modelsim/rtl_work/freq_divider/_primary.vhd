library verilog;
use verilog.vl_types.all;
entity freq_divider is
    generic(
        FREQ_DIV        : integer := 10
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ena             : in     vl_logic;
        q               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FREQ_DIV : constant is 1;
end freq_divider;
