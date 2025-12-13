library verilog;
use verilog.vl_types.all;
entity tb_keypad_module is
    generic(
        CLK_PERIOD      : integer := 10;
        N_COL           : integer := 4;
        N_ROW           : integer := 4
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of N_COL : constant is 1;
    attribute mti_svvh_generic_type of N_ROW : constant is 1;
end tb_keypad_module;
