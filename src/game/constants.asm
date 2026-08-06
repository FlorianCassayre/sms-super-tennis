.STRUCT score_set_t
	top DB
	bottom DB
.ENDST

.STRUCT score_point_t
	bottom DB
	top DB
.ENDST

.STRUCT score_t
	_unknown_0 DB		;c480
	tie_break DB		;c481
	set INSTANCEOF score_set_t 3		;c482
	point INSTANCEOF score_point_t		;c488
	set_current_index DB		;c48a
	point_fault_flag DB		;c48b
	_unknown_1 DSB 9		;c48c
	game_won DB		;c495
	_unknown_2 DB		;c496
	winner_player DB		;c497
	_unknown_3 DSB 5		;c498
	delay_timer DB		;c49d
	_unknown_4 DSB 2		;c49e
	blinking_set_vram_addr DW		;c4a0
	_unknown_5 DSB 2		;c4a2
	blinking_set_frame_counter DB		;c4a4
    announcement DB		;c4a5
.ENDST

.ENUM $c480
	score INSTANCEOF score_t
.ENDE


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
