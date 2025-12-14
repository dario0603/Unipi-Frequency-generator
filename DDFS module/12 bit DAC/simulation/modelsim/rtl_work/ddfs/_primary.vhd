library verilog;
use verilog.vl_types.all;
entity ddfs is
    port(
        sin             : in     vl_logic;
        triang          : in     vl_logic;
        mirror_x        : in     vl_logic;
        mirror_y        : in     vl_logic;
        fw              : in     vl_logic_vector(6 downto 0);
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        freq_cntrl      : in     vl_logic_vector(2 downto 0);
        q               : out    vl_logic_vector(11 downto 0)
    );
end ddfs;
