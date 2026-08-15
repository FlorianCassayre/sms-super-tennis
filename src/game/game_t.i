.STRUCT game_settings_t
	speed_level DB		;c047
	control_level DB		;c048
	player_type DB		;c049
	computer_level DB		;c04a
.ENDST

.STRUCT game_t
	match_flags DB		;c040
	current_player DB		;c041
	last_hitter DB		;c042
	match_progression_state DB		;c043
	match_state_flag DB		;c044 ; Global state (serve quadrant?)
	current_server DB		;c045
	_unknown_1 DB		;c046
	settings INSTANCEOF game_settings_t		;c047
	_unknown_3 DSB 59
	entity_loop_index DB 	;c086
	_unknown_4 DSB 2		;c087
	sound_wait_flag DB		;c089
	pause_counter DW	;c08a ; It seems that one tick lasts 16.67ms
.ENDST
