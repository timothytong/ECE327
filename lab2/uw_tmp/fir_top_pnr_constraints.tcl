###################################################################################
# Mentor Graphics Corporation
#
###################################################################################


##################
# Clocks
##################

##################
# Clocks
##################
create_base_clock -fmax 4.000ns -duty_cycle 50 {aud_bclk}
create_base_clock -fmax 4.000ns -duty_cycle 50 {clock_27}
create_base_clock -fmax 8.000ns -duty_cycle 50 {u_i2c_av_config|m_i2c_ctrl_clk}
create_base_clock -fmax 12.000ns -duty_cycle 50 {aud_adclrck_dup0}
create_base_clock -fmax 6.000ns -duty_cycle 50 {aud_xck_dup0}

