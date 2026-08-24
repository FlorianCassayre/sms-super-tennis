sub_game_cpu_state_serve_wait:
	ld a,(0c400h)
	and a
	ret nz
	ld a,(ix + entity_t.cpu_sub_state)
	cp 002h
	jr z,@l1f3ch
	cp 005h
	jr z,@l1f3ch
	cp 003h
	jr nz,@l1f22h
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l1f22h
	ld (ix + entity_t.cpu_state),game_cpu_state_t.doubles_cover_1
	ld (ix + entity_t.cpu_sub_state),004h
	ret
@l1f22h:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1f41h
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ld a,(ix + entity_t.cpu_state_timer)
	and 003h
	cp 003h
	ret nz
	ld a,(state.match_state_flags)
	and 080h
	ret nz
@l1f3ch:
	ld (ix + entity_t.cpu_state),game_cpu_state_t.wait
	ret
@l1f41h:
	ld a,(state.match_state_flags)
	ld b,003h
	bit 7,a
	jr z,@l1f68h
	ld a,(0c401h)
	cp 019h
	jr z,@l1f68h
	ld a,(ix + entity_t.cpu_sub_state)
	and a
	ret z
	ld b,003h
	cp game_cpu_state_t.serve_wait
	jr z,@l1f68h
	ld b,game_cpu_state_t.wait
	cp 002h
	jr z,@l1f68h
	ld b,game_cpu_state_t.doubles_cover_1
	cp 003h
	jr z,@l1f68h
@l1f68h:
	ld (ix + entity_t.cpu_state),b
	ret
