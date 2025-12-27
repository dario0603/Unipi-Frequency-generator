library verilog;
use verilog.vl_types.all;
entity lcd_driver is
    generic(
        BCD_DIGITS      : integer := 7;
        CLK_FREQ        : vl_logic_vector(63 downto 0) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        button_next     : in     vl_logic;
        button_prev     : in     vl_logic;
        reset_n         : in     vl_logic;
        bcd_freq        : in     vl_logic_vector;
        lcd_data        : out    vl_logic_vector(7 downto 0);
        lcd_rw          : out    vl_logic;
        lcd_en          : out    vl_logic;
        lcd_rs          : out    vl_logic;
        lcd_on          : out    vl_logic;
        lcd_blon        : out    vl_logic;
        sin             : out    vl_logic;
        triang          : out    vl_logic;
        mirror_x        : out    vl_logic;
        mirror_y        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BCD_DIGITS : constant is 1;
    attribute mti_svvh_generic_type of CLK_FREQ : constant is 2;
end lcd_driver;
