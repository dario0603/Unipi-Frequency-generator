library verilog;
use verilog.vl_types.all;
entity text_lut is
    generic(
        DATA_WIDTH      : integer := 9;
        ADDR_WIDTH      : integer := 6;
        PAGE_ADDR_WIDTH : integer := 5
    );
    port(
        addr            : in     vl_logic_vector;
        page            : in     vl_logic_vector;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PAGE_ADDR_WIDTH : constant is 1;
end text_lut;
