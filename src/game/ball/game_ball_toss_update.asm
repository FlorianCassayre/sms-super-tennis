sub_game_ball_toss_update:
	ld a,(ix + entity_t.ball_hit_flag)
	dec a
	jr z,l0f79h
	ld (ix + entity_t.ball_hit_flag),001h
	ld hl,0ff00h
	ld (ball.z_vel),hl
	ld hl,4
	ld (ball.z_gravity),hl
	ld hl,0
	ld (ball.x_vel),hl
	ld (ball.y_vel),hl
	ld hl,state.match_flags
	set 7,(hl)
	set 0,(hl)
	ld hl,state.match_state_flags
	set 0,(hl)
	ret
l0f79h:
	xor a
	ld de,l1300h
	ld hl,(ball.z_pos)
	sbc hl,de
	jr z,l0f86h
	jr nc,l0fa2h
l0f86h:
	ld hl,state.match_flags
	bit 6,(hl)
	jr nz,l0f95h
	res 7,(hl)
	ld (ix + entity_t.state_index),018h
	jr l0f99h
l0f95h:
	ld (ix + entity_t.state_index),015h
l0f99h:
	ld (ix + entity_t.ball_hit_flag),000h
	ld hl,state.match_state_flags
	res 0,(hl)
l0fa2h:
	jp sub_game_ball_sprite_perspective_x
