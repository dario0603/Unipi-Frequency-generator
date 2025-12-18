library verilog;
use verilog.vl_types.all;
entity keypad_module is
    generic(
        N_COLUMN        : integer := 4;
        N_ROW           : integer := 4
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        column          : out    vl_logic_vector;
        row             : in     vl_logic_vector;
        out_keys        : out    vl_logic_vector;
        data_valid      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N_COLUMN : constant is 1;
    attribute mti_svvh_generic_type of N_ROW : constant is 1;
end keypad_module;
