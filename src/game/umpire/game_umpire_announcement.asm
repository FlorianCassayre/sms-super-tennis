sub_game_umpire_announcement:
	ld a,(ball.foul_type)
	dec a
	jr z,l0db5h
	dec a
	jr z,l0da4h
	dec a
	jr z,l0d9ah
	ld a,(state.current_player)
	ld (state.last_hitter),a
	ld c,000h
	jr l0dc0h
l0d9ah:
	ld a,(ball.foul_triggered_flag)
	or a
	jr nz,l0da4h
	ld c,000h
	jr l0dc0h
l0da4h:
	ld c,001h
	ld a,(ball.foul_triggered_flag)
	dec a
	jr z,l0dc0h
	ld c,000h
	dec a
	jr z,l0dc0h
	ld c,002h
	jr l0dc0h
l0db5h:
	ld c,002h
	ld a,(state.match_flags)
	bit 0,a
	jr nz,l0dc0h
	ld c,003h
l0dc0h:
	ld a,(state.last_hitter)
	ld e,a
	ld d,000h
	ld hl,l0e00h_mapping
	add hl,de
	ld a,(hl)
	or c
	ld (score.umpire_event),a
	ret
