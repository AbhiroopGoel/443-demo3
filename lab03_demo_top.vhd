library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab03_demo_top is
    port(
        swt : in  STD_LOGIC_VECTOR(9 downto 0);
        led : out STD_LOGIC_VECTOR(7 downto 0);
        an  : out STD_LOGIC_VECTOR(7 downto 0);
        seg : out STD_LOGIC_VECTOR(6 downto 0);
        dp  : out STD_LOGIC
    );
end lab03_demo_top;

architecture structural of lab03_demo_top is

    component rca_dataflow
        port(
            a    : in  STD_LOGIC_VECTOR(3 downto 0);
            b    : in  STD_LOGIC_VECTOR(3 downto 0);
            cin  : in  STD_LOGIC;
            s    : out STD_LOGIC_VECTOR(3 downto 0);
            cout : out STD_LOGIC
        );
    end component;

    component b2sm_dataflow
        generic(
            N : integer := 4
        );
        port(
            x         : in  STD_LOGIC_VECTOR(N-1 downto 0);
            mode      : in  STD_LOGIC;
            sign_bit  : out STD_LOGIC;
            magnitude : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    component hex_to_7segment_nexys4
        port(
            x   : in  STD_LOGIC_VECTOR(3 downto 0);
            an  : out STD_LOGIC_VECTOR(7 downto 0);
            seg : out STD_LOGIC_VECTOR(6 downto 0);
            dp  : out STD_LOGIC
        );
    end component;

    signal sum_int       : STD_LOGIC_VECTOR(3 downto 0);
    signal cout_int      : STD_LOGIC;
    signal sign_int      : STD_LOGIC;
    signal magnitude_int : STD_LOGIC_VECTOR(3 downto 0);

begin

    U1: rca_dataflow
        port map(
            a    => swt(3 downto 0),
            b    => swt(7 downto 4),
            cin  => swt(8),
            s    => sum_int,
            cout => cout_int
        );

    U2: b2sm_dataflow
        generic map(
            N => 4
        )
        port map(
            x         => sum_int,
            mode      => swt(9),
            sign_bit  => sign_int,
            magnitude => magnitude_int
        );

    U3: hex_to_7segment_nexys4
        port map(
            x   => magnitude_int,
            an  => an,
            seg => seg,
            dp  => dp
        );

    led(0) <= sign_int;
    led(1) <= cout_int;
    led(7 downto 2) <= (others => '0');

end structural;
