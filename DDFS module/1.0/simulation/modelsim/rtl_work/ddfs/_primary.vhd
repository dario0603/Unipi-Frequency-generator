library verilog;
use verilog.vl_types.all;
entity ddfs is
    generic(
        DATA_WIDTH      : integer := 12;
        ADDR_WIDTH      : integer := 7;
        MAX_LUT         : integer := 85;
        HALF_ADDRESS    : vl_notype;
        HALF_DATA       : vl_notype
    );
    port(
        sin             : in     vl_logic;
        triang          : in     vl_logic;
        mirror_x        : in     vl_logic;
        mirror_y        : in     vl_logic;
        fw              : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        freq_cntrl      : in     vl_logic_vector(2 downto 0);
        q               : out    vl_logic_vector(11 downto 0);
        clk_div         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MAX_LUT : constant is 1;
    attribute mti_svvh_generic_type of HALF_ADDRESS : constant is 3;
    attribute mti_svvh_generic_type of HALF_DATA : constant is 3;
end ddfs;
