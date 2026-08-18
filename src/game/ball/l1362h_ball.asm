sub_l1362h_ball:
	ld a,entity_state_t.ball_normal_update
	ld (entities.ball.state_index),a
	xor a
	ld (entities.ball.ball_hit_flag),a
	ld a,(state.last_hitter)
	ld e,a
	ld d,000h
	ld hl,l138bh
	add hl,de
	ld a,(hl)
	ld (0c312h),a
	ld hl,state.match_flags
	set 7,(hl)
	ld a,(ball.z_pos + 1)
	cp 010h
	ret nc
	ld hl,01000h
	ld (ball.z_pos),hl
	ret

l138bh:
	.DB $01
	.DB $02
	.DB $01
	.DB $02
