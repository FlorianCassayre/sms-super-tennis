sub_game_ball_update_after_hit:
	ld a,entity_state_t.ball_normal_update
	ld (entities.ball.state_index),a
	xor a
	ld (entities.ball.ball_hit_flag),a

	ld a,(state.last_hitter)
	ld e,a
	ld d,0
	ld hl,@teams
	add hl,de
	ld a,(hl)
	ld (entities.ball.allowed_dirs),a

	ld hl,state.match_flags
	set 7,(hl)

	; Clamp Z (minimum height)
	ld a,(ball.z_pos + 1)
	cp $10
	ret nc
	ld hl,$1000
	ld (ball.z_pos),hl
	ret

@teams:
	.DB $01
	.DB $02
	.DB $01
	.DB $02
