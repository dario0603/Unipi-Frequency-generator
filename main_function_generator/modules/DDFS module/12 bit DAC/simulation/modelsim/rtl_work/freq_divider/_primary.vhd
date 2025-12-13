library verilog;
use verilog.vl_types.all;
entity freq_divider is
    port(
        clk_in          : in     vl_logic;
        rst_n           : in     vl_logic;
        freq_cntrl      : in     vl_logic_vector(2 downto 0);
        clk_out         : out    vl_logic
    );
end freq_divider;
