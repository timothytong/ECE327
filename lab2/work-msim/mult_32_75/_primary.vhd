library verilog;
use verilog.vl_types.all;
entity mult_32_75 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        d               : out    vl_logic_vector(31 downto 0)
    );
end mult_32_75;
