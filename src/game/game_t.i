.STRUCT game_t
	match_flags DB		;c040
	current_player DB		;c041
	last_hitter DB		;c042
	match_progression_state DB		;c043
	match_state_flag DB		;c044 ; Global state (serve quadrant?)
	current_server DB		;c045
	_unknown_1 DB		;c046
	p1_speed_state_a DB		;c047 ; Player 1 state index A
	_unknown_2 DB		;c048
	p1_speed_state_b DB		;c049 ; Player 1 state index B (CPU?)
	p2_speed_state DB		;c04a ; Player 2 state index
	_unknown_3 DSB 59
	entity_loop_index DB 	;c086
	_unknown_4 DSB 2		;c087
	sound_wait_flag DB		;c089
	pause_counter DW	;c08a ; It seems that one tick lasts 16.67ms
.ENDST

.ENUM $c040
	game INSTANCEOF game_t
.ENDE
