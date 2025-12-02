library verilog;
use verilog.vl_types.all;
entity frequency_select is
    generic(
        CLK_FREQ        : integer := 200000000
    );
    port(
        button_1        : in     vl_logic;
        button_2        : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        freq_C2         : out    vl_logic_vector(22 downto 0);
        fw              : out    vl_logic_vector(6 downto 0);
        freq_control    : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 1;
end frequency_select;
