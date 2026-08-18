hardware_vdp_initial_register_values:
	.DB $16, hardware_vdp_registers.r0_mode
	.DB $a0, hardware_vdp_registers.r1_mode
	.DB $ff, hardware_vdp_registers.r2_name_table
	.DB $ff, hardware_vdp_registers.r3_color_table
	.DB $ff, hardware_vdp_registers.r4_pattern_table
	.DB $ff, hardware_vdp_registers.r5_sprite_attribute_table
	.DB $fb, hardware_vdp_registers.r6_sprite_pattern
	.DB $00, hardware_vdp_registers.r7_background_color
	.DB $00, hardware_vdp_registers.r8_horizontal_scroll
	.DB $00, hardware_vdp_registers.r9_vertical_scroll
	.DB $bf, hardware_vdp_registers.r10_line_interrupt
