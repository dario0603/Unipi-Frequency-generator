library verilog;
use verilog.vl_types.all;
entity keypad_freq_sel_module is
    generic(
        N_COLUMN        : integer := 4;
        N_ROW           : integer := 4;
        CLK_FREQ        : vl_logic_vector(63 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SCAN_FREQ       : vl_logic_vector(63 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        column          : out    vl_logic_vector;
        row             : in     vl_logic_vector;
        fw              : out    vl_logic_vector(6 downto 0);
        freq_control    : out    vl_logic_vector(2 downto 0);
        mirror_x        : in     vl_logic;
        mirror_y        : in     vl_logic;
        freq_1          : out    vl_logic_vector(3 downto 0);
        freq_2          : out    vl_logic_vector(3 downto 0);
        freq_3          : out    vl_logic_vector(3 downto 0);
        freq_4          : out    vl_logic_vector(3 downto 0);
        freq_5          : out    vl_logic_vector(3 downto 0);
        freq_6          : out    vl_logic_vector(3 downto 0);
        freq_7          : out    vl_logic_vector(3 downto 0);
        digit_counter   : out    vl_logic_vector(2 downto 0);
        sel_A           : out    vl_logic;
        sel_B           : out    vl_logic;
        next_page       : out    vl_logic;
        prev_page       : out    vl_logic;
        data_valid      : out    vl_logic;
        debounced_keypad_pressed: out    vl_logic;
        freq            : out    vl_logic_vector(22 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N_COLUMN : constant is 1;
    attribute mti_svvh_generic_type of N_ROW : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 2;
    attribute mti_svvh_generic_type of SCAN_FREQ : constant is 2;
end keypad_freq_sel_module;
