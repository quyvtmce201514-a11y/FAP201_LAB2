library ieee; use ieee.std_logic_1164.all; 
 
entity lab02_tb is 
end entity; 
 
architecture sim of lab02_tb is   signal i_sw1 : std_logic := '0';   signal i_sw2 : std_logic := '0';   signal o_led : std_logic; begin 
  dut : entity work.lab02     port map (       i_sw1 => i_sw1,       i_sw2 => i_sw2, 
      o_led => o_led 
    ); 
 
  stimulus : process   begin 
    i_sw1 <= '0'; i_sw2 <= '0'; wait for 10 ns;     assert o_led = '0' report "T1 failed: 00" severity error; 
 
    i_sw1 <= '0'; i_sw2 <= '1'; wait for 10 ns;     assert o_led = '0' report "T2 failed: 01" severity error; 
 
    i_sw1 <= '1'; i_sw2 <= '0'; wait for 10 ns;     assert o_led = '0' report "T3 failed: 10" severity error; 
 
    i_sw1 <= '1'; i_sw2 <= '1'; wait for 10 ns;     assert o_led = '1' report "T4 failed: 11" severity error; 
 
    report "LAB02: all logical test vectors completed" severity note;     wait;   end process; end architecture; 
