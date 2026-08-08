.STRUCT game_t
	match_state_flag DB		;c044 ; Global state (serve quadrant?)
	_unknown_0 DSB 2		;c045
	p1_speed_state_a DB		;c047 ; Player 1 state index A
	_unknown_1 DB		;c048
	p1_speed_state_b DB		;c049 ; Player 1 state index B (CPU?)
	p2_speed_state DB		;c04a ; Player 2 state index
.ENDST

.ENUM $c044
	game INSTANCEOF game_t
.ENDE
