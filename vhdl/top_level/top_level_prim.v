// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Sun Jan 28 11:32:10 2018
//
// Verilog Description of module top_level
//

module top_level (ua, ua_ovf, ma, ma_ovf, reset, en, acc_clk, 
            sck, miso, mosi, cs, led_1, led_2, led_3);   // ../top_level.vhdl(7[8:17])
    input [11:0]ua;   // ../top_level.vhdl(8[9:11])
    input ua_ovf;   // ../top_level.vhdl(9[5:11])
    input [11:0]ma;   // ../top_level.vhdl(10[5:7])
    input ma_ovf;   // ../top_level.vhdl(11[5:11])
    input reset;   // ../top_level.vhdl(12[5:10])
    input en;   // ../top_level.vhdl(13[5:7])
    input acc_clk;   // ../top_level.vhdl(14[5:12])
    input sck;   // ../top_level.vhdl(15[5:8])
    output miso;   // ../top_level.vhdl(16[5:9])
    input mosi;   // ../top_level.vhdl(17[5:9])
    input cs;   // ../top_level.vhdl(18[5:7])
    output led_1;   // ../top_level.vhdl(19[5:10])
    output led_2;   // ../top_level.vhdl(20[5:10])
    output led_3;   // ../top_level.vhdl(21[5:10])
    
    
    wire VCC_net;
    
    assign miso = led_3;   // ../top_level.vhdl(16[5:9])
    assign led_1 = led_3;   // ../top_level.vhdl(19[5:10])
    assign led_2 = led_3;   // ../top_level.vhdl(20[5:10])
    GND i23 (.Y(led_3));
    VCC i68 (.Y(VCC_net));
    
endmodule
