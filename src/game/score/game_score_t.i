.STRUCT score_set_t
	top DB
	bottom DB
.ENDST

.STRUCT score_point_t
	bottom DB
	top DB
.ENDST

.STRUCT score_t
	umpire_event DB		;c480
	tie_break DB		;c481
	set INSTANCEOF score_set_t 3		;c482
	point INSTANCEOF score_point_t		;c488
	set_current_index DB		;c48a
	point_fault_flag DB		;c48b
	ball_y_sector DB		;c48c
	_unknown_1 DSB 4		;c48d
	settings_cursor_y DB		;c491
	_unknown_2 DB		;c492
	settings_joystick DB		;c493
	settings_joystick_previous DB		;c494
	game_lost DB		;c495
	tick_counter DB		;c496
	winner_player DB		;c497
	_unknown_3 DB		;c498
	sets_won_top DB		;c499
	sets_won_bottom DB		;c49a
	_unknown_3b DB		;c49b
	menu_key_repeat_timer DB		;c49c
	delay_timer DB		;c49d
	set_update_state DB		;c49e
	_unknown_4 DB		;c49f
	blinking_set_vram_addr DW		;c4a0
	_unknown_5 DSB 2		;c4a2
	blinking_set_frame_counter DB		;c4a4
    announcement_type DB		;c4a5
    announcement_step DB		;c4a6
    gui_update_flag DB		;c4a7
    vram_dest DW		;c4a8
    vram_src DW		;c4aa
    box_dimensions DW		;c4ac
    advance_set_flag DW		;c4ae
.ENDST
