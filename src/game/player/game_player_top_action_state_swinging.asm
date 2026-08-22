sub_game_player_top_action_state_swinging:
	ld a,(ix + entity_t.action_state)
	bit 7,a
	jr nz,l1dffh
	set 7,a
	ld (ix + entity_t.action_state),a
	call sub_game_racket_evaluate_swing_type
	ld e,a
	ld d,a
	ld a,(ix + entity_t.y_div_pos)
	cp 003h
	jr nc,l1db0h
	ld a,e
	cp 002h
	jr c,l1dd3h
	ld e,000h
	cp 003h
	jr z,l1dd3h
	ld e,001h
	jr l1dd3h
l1db0h:
	cp 004h
	jr nc,l1db7h
	inc e
	jr l1dd3h
l1db7h:
	cp 005h
	jr c,l1dd3h
	ld a,(0c401h)
	and 07fh
	cp 01ah
	ld e,002h
	jr z,l1dd3h
	ld e,003h
	cp 01dh
	jr nz,l1dd3h
	ld a,d
	cp 001h
	jr c,l1dd3h
	ld e,002h
l1dd3h:
	ld a,e
	ld b,game_player_animation_type_t.lob
	ld c,01ch
	and a
	jr z,l1defh
	ld b,game_player_animation_type_t.stroke
	ld c,01dh
	cp 001h
	jr z,l1defh
	ld b,game_player_animation_type_t.unknown_05
	ld c,01bh
	cp 002h
	jr z,l1defh
	ld b,game_player_animation_type_t.volley
	ld c,01ah
l1defh:
	ld (ix + entity_t.animation_id),b
	ld (ix + entity_t.swing_type_id),c
	ld (ix + entity_t.animation_flags_or_frame),0ffh
	ld a,(ix + entity_t.facing_dir)
	ld (ix + entity_t.render_facing_dir),a
l1dffh:
	call sub_game_player_apply_movement
	call sub_game_racket_process_swing_contact
	ld a,(ix + entity_t.animation_flags_or_frame)
	and a
	jr z,l1e0fh
	call sub_game_player_update_animation
	ret
l1e0fh:
	ld a,(ix + entity_t.ball_incoming)
	and a
	ld a,000h
	jr z,l1e19h
	ld a,001h
l1e19h:
	ld (ix + entity_t.action_state),a
	ld (ix + entity_t.state_flags),000h
	ld (ix + entity_t.racket_contact_flag),000h
	ret
