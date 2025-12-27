library verilog;
use verilog.vl_types.all;
entity BCD_to_C1_converter is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        d_1             : in     vl_logic_vector(3 downto 0);
        d_2             : in     vl_logic_vector(3 downto 0);
        d_3             : in     vl_logic_vector(3 downto 0);
        d_4             : in     vl_logic_vector(3 downto 0);
        d_5             : in     vl_logic_vector(3 downto 0);
        d_6             : in     vl_logic_vector(3 downto 0);
        d_7             : in     vl_logic_vector(3 downto 0);
        output_C1       : out    vl_logic_vector(22 downto 0)
    );
end BCD_to_C1_converter;
