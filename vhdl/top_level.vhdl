-- top_level.vhdl

library IEEE;
use IEEE.std_logic_1164.all;

entity top_level is
  port (ua  : in  std_logic_vector (11 downto 0); -- 12-bit signed input from uA ADC
    ua_ovf  : in  std_logic;                      -- ADC overflow bit - determines if we read uA or mA
    ma      : in  std_logic_vector (11 downto 0); -- 12-bit signed input from mA ADC
    reset   : in  std_logic;                      -- asynchronous reset for internal sample count, accumulator and enable count
    en      : in  std_logic;                      -- enable accumulator - can enable several times to accumulate across several events
    acc_clk : in  std_logic;                      -- clock for accumulator - one addition per cycle
    sck     : in  std_logic;                      -- clock for SPI output
    miso    : out std_logic;                      -- serial data out for SPI output
    mosi    : in  std_logic;                      -- serial data in for SPI output (not sure if this is needed)
    cs      : in  std_logic;                      -- chip select for SPI output
    led_1   : out std_logic;                      -- debug
    led_2   : out std_logic;                      -- debug
    led_3   : out std_logic);                     -- debug
end entity top_level;

architecture behaviour of top_level is
begin  -- behaviour
  -- TODO: ;)
end architecture behaviour;  -- of top_level
