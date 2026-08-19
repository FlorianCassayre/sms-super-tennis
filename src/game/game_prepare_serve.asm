sub_game_prepare_serve:
	ld hl,score.game_lost
	ld a,0f8h
	and (hl)
	ld (hl),a
	ld hl,0c200h
	ld de,entities.player.1.bottom.id
	ld bc,0017fh
	ld (hl),000h
	ldir
	ld hl,0
	ld (ball.foul_type),hl
	xor a
	ld (state.match_flags),a
	ld (0c516h),a
	ld (ball.bounces_count),a
	ld hl,0c100h
	ld de,0c101h
	ld bc,03fh
	ld (hl),0d0h
	ldir
	ld a,(state.match_progression_state)
	or a
	jr z,l0ba8h
	dec a
	jr z,l0ba0h
	dec a
	jr z,l0b8fh
	dec a
	jr z,l0b81h
	ld a,(0c044h)
	or a
	jr nz,l0ba0h
l0b81h:
	ld hl,state.current_server
	ld a,(hl)
	inc a
	cp 004h
	jr nz,l0b8ch
	ld a,000h
l0b8ch:
	ld (hl),a
	jr l0ba0h
l0b8fh:
	ld hl,0c044h
	ld (hl),000h
	inc hl
	ld a,(hl)
	inc a
	cp 004h
	jr nz,l0b9dh
	ld a,000h
l0b9dh:
	ld (hl),a
	jr l0ba8h
l0ba0h:
	ld hl,0c044h
	ld a,(hl)
	inc a
	and 001h
	ld (hl),a
l0ba8h:
	ld hl,l0c43h
	ld a,(state.match_state_flags)
	bit 7,a
	jr nz,l0bb5h
	ld hl,l0c3fh
l0bb5h:
	ld a,(state.current_server)
	ld e,a
	ld d,000h
	add hl,de
	ld a,(hl)
	ld (state.current_player),a
	ld hl,l0c57h
	ld a,(state.match_state_flags)
	bit 7,a
	jr nz,l0bcdh
	ld hl,l0c47h
l0bcdh:
	ld a,(state.current_player)
	add a,a
	add a,a
	ld e,a
	ld d,000h
	add hl,de
	ld a,(hl)
	ld (entities.player.1.bottom.state_index),a
	inc hl
	ld a,(hl)
	ld (entities.player.1.top.state_index),a
	inc hl
	ld a,(hl)
	ld (entities.player.2.bottom.state_index),a
	inc hl
	ld a,(hl)
	ld (entities.player.2.top.state_index),a
	ld a,04fh
	ld (entities.ball_shadow.sprite_id),a
	ld a,050h
	ld (entities.ball.sprite_id),a
	ld a,entity_state_t.ball_serve_perspective_update
	ld (entities.ball.state_index),a
	ld a,entity_state_t.ball_shadow_update
	ld (entities.ball_shadow.state_index),a
	xor a
	ld (entities.ball.ball_hit_flag),a
	ld (entities.ball_shadow.ball_hit_flag),a
	ld a,(state.current_player)
	ld e,a
	ld d,000h
	ld hl,l0c67h
	add hl,de
	ld a,(hl)
	ld (entities.ball.allowed_dirs),a
	ld hl,joy.1.pressed
	ld de,040h
	xor a
	ld b,006h
l0c1bh:
	add hl,de
	ld (hl),a
	inc a
	djnz l0c1bh
	ld a,(state.current_player)
	ld (state.last_hitter),a
	ld hl,state.match_state_flags
	set 2,(hl)
	ld a,001h
	ld (state.unknown_flag),a
	ld (score.ball_y_sector),a
	ld a,game_fsm_state_t.tick
	bit 3,(hl)
	jr z,l0c3bh
	or GAME_FSM_BASE
l0c3bh:
	ld (state.main_game_state),a
	ret

l0c3fh:
	.DB $00
	.DB $01
	.DB $00
	.DB $01
l0c43h:
	.DB $00
	.DB $01
	.DB $02
	.DB $03
l0c47h:
	.DB $03
	.DB $02
	.DB $00
	.DB $00
	.DB $01
	.DB $03
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
	.DB $00
l0c57h:
	.DB $03
	.DB $02
	.DB $01
	.DB $02
	.DB $01
	.DB $03
	.DB $01
	.DB $02
	.DB $01
	.DB $02
	.DB $03
	.DB $02
	.DB $01
	.DB $02
	.DB $01
	.DB $03
l0c67h:
	.DB $02
	.DB $01
	.DB $02
	.DB $01
