.STRUCT game_t
	_unknown_0 DSB 4
	match_state_flag DB		;c044 ; Global state (serve quadrant?)
	_unknown_1 DSB 2		;c045
	p1_speed_state_a DB		;c047 ; Player 1 state index A
	_unknown_2 DB		;c048
	p1_speed_state_b DB		;c049 ; Player 1 state index B (CPU?)
	p2_speed_state DB		;c04a ; Player 2 state index
	_unknown_3 DSB 63
	pause_counter DW	;c08a ; It seems that one tick lasts 16.67ms
.ENDST

.ENUM $c040
	game INSTANCEOF game_t
.ENDE
