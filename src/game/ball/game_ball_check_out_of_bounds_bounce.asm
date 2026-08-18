sub_game_ball_check_out_of_bounds_bounce:
	ld a,(ball.foul_type)
	or a
	ret nz
	ld a,(state.match_flags)
	bit 0,a
	jr z,l0e3bh
	ld a,(state.current_player)
	add a,a
	ld e,a
	add a,a
	add a,e
	ld e,a
	ld d,000h
	ld hl,l0dd0h
	add hl,de
	ld a,(ball.y_pos + 1)
	cp (hl)
	jr c,l0e6fh
	inc hl
	cp (hl)
	jr nc,l0e6fh
	inc hl
	ld a,(0c044h)
	add a,a
	ld e,a
	add hl,de
	ld a,(ball.x_pos + 1)
	cp (hl)
	jr c,l0e6fh
	inc hl
	cp (hl)
	jr c,l0e67h
	jr l0e6fh
l0e3bh:
	ld a,(state.last_hitter)
	add a,a
	ld e,a
	add a,a
	add a,e
	ld e,a
	ld d,000h
	ld hl,l0de8h
	add hl,de
	ld a,(ball.y_pos + 1)
	cp (hl)
	jr c,l0e6bh
	inc hl
	cp (hl)
	jr nc,l0e6bh
	inc hl
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,l0e5dh
	inc hl
	inc hl
l0e5dh:
	ld a,(ball.x_pos + 1)
	cp (hl)
	jr c,l0e6bh
	inc hl
	cp (hl)
	jr nc,l0e6bh
l0e67h:
	ld a,002h
	jr l0e7bh
l0e6bh:
	ld a,001h
	jr l0e71h
l0e6fh:
	ld a,003h
l0e71h:
	ld hl,state.match_state_flags
	res 0,(hl)
	ld hl,ball.foul_type
	ld (hl),002h
l0e7bh:
	ld (ball.foul_triggered_flag),a
	ret
