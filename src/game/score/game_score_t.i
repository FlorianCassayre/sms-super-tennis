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
	game_lost DB		;c495
	_unknown_2 DB		;c496
	winner_player DB		;c497
	_unknown_3 DSB 5		;c498
	delay_timer DB		;c49d
	_unknown_4 DSB 2		;c49e
	blinking_set_vram_addr DW		;c4a0
	_unknown_5 DSB 2		;c4a2
	blinking_set_frame_counter DB		;c4a4
    announcement DB		;c4a5
    _unknown_6 DSB 2
    winning_set_address DB		;c4a8
.ENDST

.ENUM $c480
	score INSTANCEOF score_t
.ENDE
