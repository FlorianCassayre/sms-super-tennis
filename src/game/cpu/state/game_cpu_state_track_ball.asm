sub_game_cpu_state_track_ball:
	ld a,(ix + entity_t.ball_incoming)
	and a
	jr nz,@l1e83h
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ld a,(iy + entity_t.cpu_sub_state)
	cp 004h
	jr nz,@l1e75h
	ld (iy + entity_t.cpu_sub_state),003h
@l1e75h:
	ld a,(ix + entity_t.cpu_state_timer)
	and 007h
	cp 007h
	ret nz
	ld (ix + entity_t.cpu_state),game_cpu_state_t.return_center
	jr @l1ef0h
@l1e83h:
	ld a,(0c401h)
	cp 019h
	jr z,@l1ee8h
	cp 01ch
	jr nz,@l1e9bh
	ld a,(state.match_state_flags)
	bit 7,a
	jr nz,@l1edfh
	ld (ix + entity_t.cpu_state),game_cpu_state_t.baseline_defense
	jr @l1ef0h
@l1e9bh:
	bit 0,(ix + entity_t.id)
	jr nz,@l1eb3h
	ld a,(entities.ball.y_pos + 1)
	add a,008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr c,@l1ec2h
	cp 006h
	jr c,@l1ee8h
	jp @l1ec2h
@l1eb3h:
	ld a,(entities.ball.y_pos + 1)
	sub 008h
	ld e,(ix + entity_t.y_pos + 1)
	sub e
	jr nc,@l1ec2h
	cp 0fah
	jr c,@l1ee8h	; Bug?!
@l1ec2h:
	ld a,(0c401h)
	cp 01ch
	jr z,@l1ef5h
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@l1edfh
	call sub_game_ball_compute_horizontal_deflection
	ld h,(ix + entity_t.x_pos + 1)
	sub h
	jr nc,@l1edbh
	neg
@l1edbh:
	cp 020h
	jr nc,@l1ef5h
@l1edfh:
	ld (iy + entity_t.cpu_sub_state),003h
	ld (ix + entity_t.cpu_state),game_cpu_state_t.net
	ret
@l1ee8h:
	xor a
	ld (ix + entity_t.shot_button),a
	ld (ix + entity_t.input_dirs),a
	ret
@l1ef0h:
	ld (iy + entity_t.cpu_sub_state),002h
	ret
@l1ef5h:
	ld (iy + entity_t.cpu_sub_state),001h
	ld (ix + entity_t.cpu_state),game_cpu_state_t.doubles_cover_2
	ret
