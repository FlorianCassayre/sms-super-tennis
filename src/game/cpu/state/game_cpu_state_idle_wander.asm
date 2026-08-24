sub_game_cpu_state_idle_wander:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l21cdh
	set 7,(ix + entity_t.cpu_state)
	ld a,r
	and 01fh
	inc a
	ld (ix + entity_t.cpu_state_timer),a
@l21cdh:
	dec (ix + entity_t.cpu_state_timer)
	ret nz
	ld a,(state.match_state_flags)
	bit 3,a
	ld a,000h
	jr nz,@l21e6h
	ld a,r
	cp 03fh
	jr nc,@l21e4h
	and 008h
	jr @l21e6h
@l21e4h:
	and 004h
@l21e6h:
	ld (ix + entity_t.input_dirs),a
	res 7,(ix + entity_t.cpu_state)
	ret
