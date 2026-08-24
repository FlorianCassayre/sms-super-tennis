.STRUCT game_settings_t
	speed_level DB		;c047
	control_level DB		;c048
	player_type DB		;c049
	computer_level DB		;c04a
.ENDST

.STRUCT aabb_t
	y_min DB
    y_max DB
    x_min DB
    x_max DB
.ENDST

.STRUCT state_t
	match_state_flags DB	;c000
	_unknown_01 DB	;c001
	joy_not_mark3 DB	;c002
	_unknown_03 DSB 3	;c003
	main_game_state DB	;c006
	_unknown_0 DSB 9
	hardware_type DB	;c010
	unknown_flag DB	;c011
	_unknown_1 DSB 46
	match_flags DB	;c040
	current_player DB	;c041
	last_hitter DB	;c042
	match_progression_state DB		;c043
	match_state_flag DB		;c044 ; Global state (serve quadrant?)
	current_server DB		;c045
	ball_hit_type DB	;c046
	settings INSTANCEOF game_settings_t		;c047
	_unknown_4 DSB 53
	current_sprite_index DB	;c080
	previous_sprite_index DB	;c081
	aabb_1 INSTANCEOF aabb_t	;c082
	entity_loop_index DB 	;c086
	_unknown_5 DSB 2
	sound_wait_flag DB	;c089
	pause_counter DW	;c08a ; It seems that one tick lasts 16.67ms
	prng_value DB	;c08c
	_unknown_c08d DB	;c08d
	aabb_2 INSTANCEOF aabb_t	;c08e
	_unknown_6 DSB 110
	sat_y_buffer DSB 64	;c100
	sat_xc_buffer DSB 128	;c140
	_unknown_7 DSB 4
	z_order_array DSB 6	;c1c4
	sort_outer_idx DB	;c1ca
	sort_inner_idx DB	;c1cb
.ENDST
