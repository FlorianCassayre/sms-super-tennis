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
.ENDST

.ENUM $c000
	state INSTANCEOF state_t
.ENDE
