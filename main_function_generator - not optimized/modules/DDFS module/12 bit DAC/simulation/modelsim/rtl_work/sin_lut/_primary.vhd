library verilog;
use verilog.vl_types.all;
entity sin_lut is
    generic(
        DATA_WIDTH      : integer := 12;
        ADDR_WIDTH      : integer := 10
    );
    port(
        addr            : in     vl_logic_vector;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end sin_lut;
