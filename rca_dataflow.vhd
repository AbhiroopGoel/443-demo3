library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rca_dataflow is
    port(
        a    : in  STD_LOGIC_VECTOR(3 downto 0);
        b    : in  STD_LOGIC_VECTOR(3 downto 0);
        cin  : in  STD_LOGIC;
        s    : out STD_LOGIC_VECTOR(3 downto 0);
        cout : out STD_LOGIC
    );
end rca_dataflow;

architecture structural of rca_dataflow is

    component fulladder_dataflow
        port(
            a    : in  STD_LOGIC;
            b    : in  STD_LOGIC;
            cin  : in  STD_LOGIC;
            s    : out STD_LOGIC;
            cout : out STD_LOGIC
        );
    end component;

    signal c1, c2, c3 : STD_LOGIC;

begin
    FA0: fulladder_dataflow
        port map(
            a    => a(0),
            b    => b(0),
            cin  => cin,
            s    => s(0),
            cout => c1
        );

    FA1: fulladder_dataflow
        port map(
            a    => a(1),
            b    => b(1),
            cin  => c1,
            s    => s(1),
            cout => c2
        );

    FA2: fulladder_dataflow
        port map(
            a    => a(2),
            b    => b(2),
            cin  => c2,
            s    => s(2),
            cout => c3
        );

    FA3: fulladder_dataflow
        port map(
            a    => a(3),
            b    => b(3),
            cin  => c3,
            s    => s(3),
            cout => cout
        );

end structural;
