.STRUCT aabb_t
	y_min DB
    y_max DB
    x_min DB
    x_max DB
.ENDST

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
	maybe_random_seed DB	;c04a
	_unknown_4 DSB 53
	current_sprite_index DB	;c080
	previous_sprite_index DB	;c081
	aabb_1 INSTANCEOF aabb_t	;c082
	_unknown_5 DSB 3
	sat_update_flag DB	;c089
	_unknown_c08a DSB 4
	aabb_2 INSTANCEOF aabb_t	;c08e
	_unknown_6 DSB 110
	sat_y_buffer DSB 64	;c100
	sat_xc_buffer DSB 128	;c140
	_unknown_7 DSB 4
	z_order_array DSB 6	;c1c4
.ENDST
