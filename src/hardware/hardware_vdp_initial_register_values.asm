hardware_vdp_initial_register_values:
	.DB $16, hardware_vdp_registers.r0_mode		;003b
	.DB $a0, hardware_vdp_registers.r1_mode		;003d
	.DB $ff, hardware_vdp_registers.r2_name_table			;003f
	.DB $ff, hardware_vdp_registers.r3_color_table		;0041
	.DB $ff, hardware_vdp_registers.r4_pattern_table		;0043
	.DB $ff, hardware_vdp_registers.r5_sprite_attribute_table		;0045
	.DB $fb, hardware_vdp_registers.r6_sprite_pattern		;0047
	.DB $00, hardware_vdp_registers.r7_background_color		;0049
	.DB $00, hardware_vdp_registers.r8_horizontal_scroll		;004b
	.DB $00, hardware_vdp_registers.r9_vertical_scroll		;004d
	.DB $bf, hardware_vdp_registers.r10_line_interrupt		;004f
