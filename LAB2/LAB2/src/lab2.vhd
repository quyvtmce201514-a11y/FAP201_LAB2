library ieee; 
use ieee.std_logic_1164.all; 
 
entity lab02 is 
  port ( 
    i_sw1 : in  std_logic;     
    i_sw2 : in  std_logic; 
    o_led : out std_logic 
  ); 
end entity lab02; 
 
architecture rtl of lab02 is 
begin 
o_led <= i_sw1 and i_sw2; 
end architecture rtl; 
