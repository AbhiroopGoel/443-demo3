library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder_dataflow is
    port(
        a    : in  STD_LOGIC;
        b    : in  STD_LOGIC;
        cin  : in  STD_LOGIC;
        s    : out STD_LOGIC;
        cout : out STD_LOGIC
    );
end fulladder_dataflow;

architecture dataflow of fulladder_dataflow is
begin
    s    <= a xor b xor cin;
    cout <= (a and b) or (a and cin) or (b and cin);
end dataflow;
