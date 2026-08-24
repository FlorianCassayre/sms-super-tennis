sub_game_racket_process_swing_contact:
	ld a,(ix + entity_t.time_before_serve)
	and a
	jr nz,+
	res 7,(ix + entity_t.state_flags)
	bit 7,(ix + entity_t.racket_contact_flag)
	ret z
+:
	ld b,a
	ld a,(ball.foul_triggered_flag)
	cp 001h
	ret z
	bit 7,(ix + entity_t.racket_contact_flag)
	ret z
	ld a,(ix + entity_t.state_index)
	and 07fh
	cp 005h
	jr z,+
	ld a,(state.match_flags)
	bit 0,a
	jr z,+
	ld a,(state.current_player)
	cp (ix + entity_t.id)
	jr nz,+
	ld hl,state.match_state_flags
	res 0,(hl)
	ret
+:
	res 7,(ix + entity_t.racket_contact_flag)
	ld a,(ix + entity_t.swing_type_id)
	ld (entities.ball.state_index),a
	ld (0c401h),a
	ld a,b
	ld b,(ix + entity_t.swing_duration)
	call sub_div_a_b_c
	ld e,c
	ld a,(ix + entity_t.x_div_pos)
	rrca
	rrca
	rrca
	bit 0,(ix + entity_t.id)
	jr z,+
	cpl
+:
	and 0e0h
	or e
	ld e,a
	ld a,(ix + entity_t.y_div_pos)
	rla
	rla
	bit 0,(ix + entity_t.id)
	jr z,+
	cpl
+:
	and 01ch
	or e
	ld e,a
	ld d,000h
	ld hl,game_ball_trajectory_data_bounce_magnitude
	add hl,de
	ld a,(hl)
	bit 0,(ix + entity_t.id)
	jr z,+
	bit 0,(ix + entity_t.render_facing_dir)
	jr nz,++
	call sub_abs10
	jr ++
+:
	bit 0,(ix + entity_t.render_facing_dir)
	jr z,++
	call sub_abs10
++:
	and 01fh
	ld de,entities.ball.render_facing_dir
	bit 0,(ix + entity_t.id)
	jr z,+
	ld b,00bh
	add a,b
+:
	ld (de),a
	ld a,(0c4b0h)
	ld e,000h
	bit 0,(ix + entity_t.id)
	jr z,+
	ld a,(0c4b1h)
	ld e,010h
+:
	ld hl,game_ball_trajectory_data_axis_a
	call sub_game_racket_compute_ball_direction_from_player
	ld a,(0c4b2h)
	ld e,000h
	bit 0,(ix + entity_t.id)
	jr z,+
	ld a,(0c4b3h)
	ld e,010h
+:
	ld hl,game_ball_trajectory_data_axis_b
	call sub_game_racket_compute_ball_direction_from_player
	jp l2d35h
	.INCLUDE "game/racket/game_racket_compute_ball_direction_from_player.asm"
l2d35h:
	ld a,(ix + entity_t.id)
	and 001h
	ld a,000h
	ld b,001h
	jr z,+
	ld a,001h
	ld b,000h
+:
	ld de,040h
	ld hl,entities.player.1.bottom.ball_incoming
	ld (hl),a
	add hl,de
	ld (hl),b
	add hl,de
	ld (hl),a
	add hl,de
	ld (hl),b
	ret
