sub_game_ball_toss_update:
	ld a,(ix + entity_t.ball_hit_flag)		;0f4d
	dec a			;0f50
	jr z,l0f79h		;0f51
	ld (ix + entity_t.ball_hit_flag),001h		;0f53
	ld hl,0ff00h		;0f57
	ld (ball.z_vel),hl		;0f5a
	ld hl,4		;0f5d
	ld (ball.z_gravity),hl		;0f60
	ld hl,0		;0f63
	ld (ball.x_vel),hl		;0f66
	ld (ball.y_vel),hl		;0f69
	ld hl,state.match_flags		;0f6c
	set 7,(hl)		;0f6f
	set 0,(hl)		;0f71
	ld hl,state.match_state_flags		;0f73
	set 0,(hl)		;0f76
	ret			;0f78
l0f79h:
	xor a			;0f79
	ld de,l1300h		;0f7a
	ld hl,(ball.z_pos)		;0f7d
	sbc hl,de		;0f80
	jr z,l0f86h		;0f82
	jr nc,l0fa2h		;0f84
l0f86h:
	ld hl,state.match_flags		;0f86
	bit 6,(hl)		;0f89
	jr nz,l0f95h		;0f8b
	res 7,(hl)		;0f8d
	ld (ix + entity_t.state_index),018h		;0f8f
	jr l0f99h		;0f93
l0f95h:
	ld (ix + entity_t.state_index),015h		;0f95
l0f99h:
	ld (ix + entity_t.ball_hit_flag),000h		;0f99
	ld hl,state.match_state_flags		;0f9d
	res 0,(hl)		;0fa0
l0fa2h:
	jp sub_game_ball_sprite_perspective_x		;0fa2
