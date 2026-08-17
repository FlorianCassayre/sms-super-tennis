l0c6bh_announcement:
	ld hl,0c007h		;0c6b
	ld a,(hl)			;0c6e
	dec a			;0c6f
	jr z,l0c8eh		;0c70
	dec a			;0c72
	jr z,l0c99h		;0c73
	dec a			;0c75
	jr z,l0cbah		;0c76
	dec a			;0c78
	jp z,check_game_ended		;0c79
	dec a			;0c7c
	jp z,l0d3eh		;0c7d
	ld (hl),001h		;0c80
	ld hl,00078h		;0c82
	ld (state.pause_counter),hl		;0c85
	call sub_game_umpire_announcement		;0c88
	jp sub_game_umpire_event_process		;0c8b
l0c8eh:
	call sub_decrement_pause_counter		;0c8e
	jp nz,sub_game_frame_update		;0c91
	ld a,002h		;0c94
	ld (0c007h),a		;0c96
l0c99h:
	ld a,(state.match_flags)		;0c99
	bit 7,a		;0c9c
	jp nz,sub_game_frame_update		;0c9e
	ld hl,0c000h		;0ca1
	res 2,(hl)		;0ca4
	ld a,003h		;0ca6
	ld (0c007h),a		;0ca8
	call sub_update_score_points		;0cab
	ld a,(state.match_state_flags)		;0cae
	bit 3,a		;0cb1
	ret z			;0cb3
	ld a,000h		;0cb4
	ld (psg_engine.track_request_id),a		;0cb6
	ret			;0cb9
l0cbah:
	ld a,(score.point_fault_flag)		;0cba
	bit 0,a		;0cbd
	jp nz,l0d5fh		;0cbf
	ld a,(score.tie_break)		;0cc2
	bit 0,a		;0cc5
	jr nz,l0d07h		;0cc7
	ld a,(score.game_lost)		;0cc9
	bit 0,a		;0ccc
	jp z,l0d63h		;0cce
l0cd1h:
	ld hl,0c100h		;0cd1
	ld (hl),0d0h		;0cd4
	ld a,080h		;0cd6
	ld (state.sound_wait_flag),a		;0cd8
	xor a			;0cdb
	ld (entities.player.1.bottom.state_index),a		;0cdc
	ld (entities.player.1.top.state_index),a		;0cdf
	ld (entities.player.2.bottom.state_index),a		;0ce2
	ld (entities.player.2.top.state_index),a		;0ce5
	ld (entities.ball.state_index),a		;0ce8
	ld (entities.ball.state_index),a		;0ceb
	ld a,004h		;0cee
	ld (0c007h),a		;0cf0
	call sub_update_set_scores		;0cf3
	ld a,(score.tie_break)		;0cf6
	bit 0,a		;0cf9
	ret z			;0cfb
	ld a,(state.current_server)		;0cfc
	ld (ball.tie_break_saved_server),a		;0cff
	xor a			;0d02
	ld (ball.tie_break_switch_sides),a		;0d03
	ret			;0d06
l0d07h:
	ld a,(score.game_lost)		;0d07
	bit 0,a		;0d0a
	jr z,l0d1ah		;0d0c
	ld a,(ball.tie_break_saved_server)		;0d0e
	ld (state.current_server),a		;0d11
	xor a			;0d14
	ld (score.tie_break),a		;0d15
	jr l0cd1h		;0d18
l0d1ah:
	ld hl,ball.tie_break_switch_sides		;0d1a
	ld a,(hl)			;0d1d
	or a			;0d1e
	jr nz,l0d6fh		;0d1f
	ld (hl),001h		;0d21
	jr l0d6bh		;0d23
check_game_ended:
	ld a,(score.game_lost)		;0d25
	bit 1,a		;0d28
	jr z,l0d67h		;0d2a
	bit 2,a		;0d2c
	jr z,l0d67h		;0d2e
	ld a,005h		;0d30
	ld (0c007h),a		;0d32
	ld hl,000b4h		;0d35
	ld (state.pause_counter),hl		;0d38
	jp sub_draw_game_end		;0d3b
l0d3eh:
	ld hl,state.sound_wait_flag		;0d3e
	set 7,(hl)		;0d41
	call sub_decrement_pause_counter		;0d43
	ret nz			;0d46
l0d47h:
	xor a			;0d47
	ld (0c000h),a		;0d48
	ld hl,state.main_game_state		;0d4b
	ld (hl),080h		;0d4e
	inc hl			;0d50
	ld (hl),a			;0d51
	ld hl,state.match_flags		;0d52
	ld de,state.current_player		;0d55
	ld bc,00529h		;0d58
	ld (hl),a			;0d5b
	ldir		;0d5c
	ret			;0d5e
l0d5fh:
	ld a,000h		;0d5f
	jr l0d71h		;0d61
l0d63h:
	ld a,001h		;0d63
	jr l0d71h		;0d65
l0d67h:
	ld a,002h		;0d67
	jr l0d71h		;0d69
l0d6bh:
	ld a,003h		;0d6b
	jr l0d71h		;0d6d
l0d6fh:
	ld a,004h		;0d6f
l0d71h:
	ld (state.match_progression_state),a		;0d71
	ld a,(state.match_state_flags)		;0d74
	bit 3,a		;0d77
	jr nz,l0d47h		;0d79
	ld hl,state.main_game_state		;0d7b
	ld (hl),005h		;0d7e
	inc hl			;0d80
	ld (hl),000h		;0d81
	ret			;0d83
