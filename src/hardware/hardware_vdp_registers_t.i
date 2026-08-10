.STRUCT hardware_vdp_registers_t
	r0_mode DB
	r1_mode DB
	r2_name_table DB
	r3_color_table DB
	r4_pattern_table DB
	r5_sprite_attribute_table DB
	r6_sprite_pattern DB
	r7_background_color DB
	r8_horizontal_scroll DB
	r9_vertical_scroll DB
	r10_line_interrupt DB
.ENDST

.ENUM $80
	hardware_vdp_registers INSTANCEOF hardware_vdp_registers_t
.ENDE
