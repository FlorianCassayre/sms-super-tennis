sub_game_score_announcement:
	ld hl,0c007h
	ld a,(hl)
	dec a
	jr z,l0c8eh
	dec a
	jr z,l0c99h
	dec a
	jr z,l0cbah
	dec a
	jp z,check_game_ended
	dec a
	jp z,l0d3eh
	ld (hl),001h
	ld hl,00078h
	ld (state.pause_counter),hl
	call sub_game_umpire_announcement
	jp sub_game_umpire_event_process
l0c8eh:
	call sub_decrement_pause_counter
	jp nz,sub_game_frame_update
	ld a,002h
	ld (0c007h),a
l0c99h:
	ld a,(state.match_flags)
	bit 7,a
	jp nz,sub_game_frame_update
	ld hl,state.match_state_flags
	res 2,(hl)
	ld a,003h
	ld (0c007h),a
	call sub_update_score_points
	ld a,(state.match_state_flags)
	bit 3,a
	ret z
	ld a,000h
	ld (psg_engine.track_request_id),a
	ret
l0cbah:
	ld a,(score.point_fault_flag)
	bit 0,a
	jp nz,l0d5fh
	ld a,(score.tie_break)
	bit 0,a
	jr nz,l0d07h
	ld a,(score.game_lost)
	bit 0,a
	jp z,l0d63h
l0cd1h:
	ld hl,0c100h
	ld (hl),0d0h
	ld a,080h
	ld (state.sound_wait_flag),a
	xor a
	ld (entities.player.1.bottom.state_index),a
	ld (entities.player.1.top.state_index),a
	ld (entities.player.2.bottom.state_index),a
	ld (entities.player.2.top.state_index),a
	ld (entities.ball.state_index),a
	ld (entities.ball.state_index),a
	ld a,004h
	ld (0c007h),a
	call sub_update_set_scores
	ld a,(score.tie_break)
	bit 0,a
	ret z
	ld a,(state.current_server)
	ld (ball.tie_break_saved_server),a
	xor a
	ld (ball.tie_break_switch_sides),a
	ret
l0d07h:
	ld a,(score.game_lost)
	bit 0,a
	jr z,l0d1ah
	ld a,(ball.tie_break_saved_server)
	ld (state.current_server),a
	xor a
	ld (score.tie_break),a
	jr l0cd1h
l0d1ah:
	ld hl,ball.tie_break_switch_sides
	ld a,(hl)
	or a
	jr nz,l0d6fh
	ld (hl),001h
	jr l0d6bh
check_game_ended:
	ld a,(score.game_lost)
	bit 1,a
	jr z,l0d67h
	bit 2,a
	jr z,l0d67h
	ld a,005h
	ld (0c007h),a
	ld hl,000b4h
	ld (state.pause_counter),hl
	jp sub_game_gui_end_draw
l0d3eh:
	ld hl,state.sound_wait_flag
	set 7,(hl)
	call sub_decrement_pause_counter
	ret nz
l0d47h:
	xor a
	ld (state.match_state_flags),a
	ld hl,state.main_game_state
	ld (hl),GAME_FSM_BASE
	inc hl
	ld (hl),a
	ld hl,state.match_flags
	ld de,state.current_player
	ld bc,00529h
	ld (hl),a
	ldir
	ret
l0d5fh:
	ld a,000h
	jr l0d71h
l0d63h:
	ld a,001h
	jr l0d71h
l0d67h:
	ld a,002h
	jr l0d71h
l0d6bh:
	ld a,003h
	jr l0d71h
l0d6fh:
	ld a,004h
l0d71h:
	ld (state.match_progression_state),a
	ld a,(state.match_state_flags)
	bit 3,a
	jr nz,l0d47h
	ld hl,state.main_game_state
	ld (hl),game_fsm_state_t.prepare_serve
	inc hl
	ld (hl),000h
	ret
