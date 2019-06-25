create_clock -name CLK -period 20.000 [get_ports {OSC_50_B5B}]
derive_pll_clocks
derive_clock_uncertainty
set_input_delay -clock {CLK} 1 [all_inputs]
set_output_delay -clock {CLK} 1 [all_outputs]