-- top_level.vhdl

library IEEE;
use IEEE.std_logic_1164.all; -- basic IEEE library
use IEEE.numeric_std.all;

entity top_level is
  port (ua  : in  signed (11 downto 0); -- 12-bit signed input from uA ADC
    ua_ovf  : in  std_logic;            -- ADC overflow bit - determines if we read uA or mA
    ma      : in  signed (11 downto 0); -- 12-bit signed input from mA ADC
    ma_ovf  : in  std_logic;            -- ADC overflow bit - tells us if we have overflowed across both ranges
    reset   : in  std_logic;            -- asynchronous reset for internal sample count, accumulator and enable count
    en      : in  std_logic;            -- enable accumulator - can enable several times to accumulate across several events
    acc_clk : in  std_logic;            -- clock for accumulator - one addition per cycle
    sck     : in  std_logic;            -- clock for SPI output
    miso    : out std_logic;            -- serial data out for SPI output
    mosi    : in  std_logic;            -- serial data in for SPI output (not sure if this is needed)
    cs      : in  std_logic;            -- chip select for SPI output
    led_1   : out std_logic;            -- debug
    led_2   : out std_logic;            -- debug
    led_3   : out std_logic);           -- debug
end entity top_level;

architecture behaviour of top_level is
  signal ua_count:    signed( 63 downto 0 );
  signal ma_count:    signed( 63 downto 0 );
  signal acq_count: unsigned( 47 downto 0 ); -- should be enough as we only add 1 count each time    
begin  -- behaviour
  sync_proc: process ( acc_clk, reset ) is
  begin
    if ( reset = '1' ) then
      ua_count  <= to_signed( 0, 64 );
      ma_count  <= to_signed( 0, 64 );
      acq_count <= to_unsigned( 0, 48 );
    elsif rising_edge( acc_clk ) then
      acq_count <= acq_count + 1;
      if( ua_ovf = '0' ) then
        ua_count <= ua_count + ua;
      else 
        ma_count <= ma_count + ma;
      end if;      
    end if;
  end process sync_proc;
end architecture behaviour;  -- of top_level
