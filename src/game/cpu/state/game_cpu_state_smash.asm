sub_game_cpu_state_smash:
	bit 7,(ix + entity_t.cpu_state)
	jr nz,@l21fch
	set 7,(ix + entity_t.cpu_state)
	ld (ix + entity_t.cpu_state_timer),000h
@l21fch:
	ld a,(ball.z_pos + 1)
	cp 02ah
	jr c,@l2207h
	set 0,(ix + entity_t.cpu_state_timer)
@l2207h:
	bit 0,(ix + entity_t.cpu_state_timer)
	ret z
	cp 028h
	ret nc
	cp 01ah
	ret c
	ld a,r
	ld a,r
	and 001h
	ret nz
	ld (ix + entity_t.shot_button),001h
	ret
