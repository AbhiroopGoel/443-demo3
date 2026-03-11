library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity b2sm_dataflow is
    generic(
        N : integer := 4
    );
    port(
        x         : in  STD_LOGIC_VECTOR(N-1 downto 0);
        mode      : in  STD_LOGIC; -- 0 = unsigned, 1 = signed
        sign_bit  : out STD_LOGIC;
        magnitude : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end b2sm_dataflow;

architecture dataflow of b2sm_dataflow is
begin
    process(x, mode)
        variable xs : signed(N-1 downto 0);
        variable mag : signed(N-1 downto 0);
    begin
        if mode = '0' then
            sign_bit  <= '0';
            magnitude <= x;
        else
            xs := signed(x);
            if xs < 0 then
                sign_bit <= '1';
                mag := -xs;
                magnitude <= std_logic_vector(mag);
            else
                sign_bit  <= '0';
                magnitude <= x;
            end if;
        end if;
    end process;
end dataflow;
