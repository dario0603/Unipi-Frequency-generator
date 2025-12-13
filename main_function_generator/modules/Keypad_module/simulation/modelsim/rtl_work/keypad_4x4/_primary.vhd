library verilog;
use verilog.vl_types.all;
entity keypad_4x4 is
    port(
        column          : in     vl_logic_vector(3 downto 0);
        row             : out    vl_logic_vector(3 downto 0);
        button          : in     vl_logic_vector(3 downto 0)
    );
end keypad_4x4;
