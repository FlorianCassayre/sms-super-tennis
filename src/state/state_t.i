.STRUCT state_t
	match_state_flags DB	;c000
	_unknown_0 DSB 15
	hardware_type DB	;c010
	_unknown_1 DSB 47
	hit_flags DB	;c040
	shot_type DB	;c041
	ball_x_dir_flag DB	;c042
	_unknown_2 DSB 3
	ball_hit_type DB	;c046
	_unknown_3 DSB 3
	cpu_randomness_timer DB	;c04a
	_unknown_4 DSB 53
	current_sprite_index DB	;c080
	previous_sprite_index DB	;c081
	_unknown_5 DSB 7
	sat_update_flag DB	;c089
	_unknown_6 DSB 118
	sat_y_buffer DSB 64	;c100
	sat_xc_buffer DSB 128	;c140
	_unknown_7 DSB 4
	z_order_array DSB 6	;c1c4
.ENDST

.ENUM $c000
	state INSTANCEOF state_t
.ENDE
