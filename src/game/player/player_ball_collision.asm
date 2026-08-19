sub_player_ball_collision:
	ld a,(state.match_state_flags)
	rrca
	ret nc
	ld hl,game_ball_aabb_relative
	ld ix,entities.ball
	call sub_game_entity_aabb_intersection
	ld (state.aabb_1.y_min),bc
	ld (state.aabb_1.x_min),de
	ld a,(entities.ball.allowed_dirs)
	rrca
	jr c,@check_partners
	ld iy,entities.player.1.bottom
	ld ix,entities.player.2.bottom
	jr @check_direction
@check_partners:
	ld iy,entities.player.1.top
	ld ix,entities.player.2.top
@check_direction:
	ld a,(state.match_state_flags)
	rlca
	jr nc,@towards_p1
	call sub_racket_hit_trajectory
	ret c
@towards_p1:
	push iy
	pop ix
sub_racket_hit_trajectory:
	bit 7,(ix + entity_t.state_flags)
	jp z,@miss
	ld a,(state.match_flags)
	rlca
	jp nc,@miss
	ld hl,game_racket_aabb_relative
	ld a,(ix + entity_t.animation_frame)
	call sub_game_entity_aabb_intersection_index
	ld (state.aabb_2.y_min),bc
	ld (state.aabb_2.x_min),de
	call sub_aabb_intersection
	ld a,e
	or a
	jp z,@miss
	ld hl,game_racket_z_heights
	ld a,(ix + entity_t.animation_frame)
	add a,a
	ld e,a
	ld d,000h
	add hl,de
	ld a,(ix + entity_t.y_pos + 1)
	add a,(hl)
	ld b,a
	inc hl
	add a,(hl)
	ld c,a
	ld a,(entities.ball_shadow.y_pos + 1)
	cp c
	jp c,@miss
	inc hl
	cp b
	jp nc,@miss
	ld hl,state.match_flags
	bit 0,(hl)
	jr z,@hit_success
	ld bc,game_racket_shot_result_table_1
	ld a,(state.match_state_flags)
	bit 7,a
	jr z,@check_serve_result
	ld a,(0c044h)
	or a
	jr z,@check_serve_result
	ld bc,game_racket_shot_result_table_2
@check_serve_result:
	ld a,(state.current_player)
	add a,a
	add a,a
	ld e,a
	ld d,000h
	ld h,d
	ld l,(ix + entity_t.id)
	add hl,de
	add hl,bc
	ld a,(hl)
	or a
	jp z,@hit_success
	dec a
	jp z,@miss
	ld hl,state.match_flags
	res 0,(hl)
	dec a
	jr z,@fault_type_2
	ld a,(ball.foul_triggered_flag)
	or a
	jr z,@fault_type_3_end
	cp 002h
	jr z,@fault_type_3_end
	jp @miss
@fault_type_2:
	ld a,(ball.foul_triggered_flag)
	or a
	jr nz,@hit_success
@fault_type_3_end:
	ld a,004h
	ld (ball.foul_type),a
	ld hl,state.match_state_flags
	res 0,(hl)
@hit_success:
	set 7,(ix + entity_t.racket_contact_flag)
	xor a
	ld (entities.ball.ball_hit_flag),a
	ld (ball.bounces_count),a
	ld (ball.foul_triggered_flag),a
	ld a,(ix + entity_t.id)
	ld (state.last_hitter),a
	scf
	ret
@miss:
	ld a,(ball.z_pos + 1)
	cp 018h
	ret nc
	ld hl,game_player_aabb_relative
	ld a,(ix + entity_t.id)
	call sub_game_entity_aabb_intersection_index
	ld (state.aabb_2.y_min),bc
	ld (state.aabb_2.x_min),de
	ld a,(entities.ball.y_pos + 1)
	cp c
	jr c,@no_body_collision
	cp b
	jr nc,@no_body_collision
	ld a,(entities.ball.x_pos + 1)
	cp e
	jr c,@no_body_collision
	cp d
	jr nc,@no_body_collision
	ld a,(state.match_flags)
	bit 0,a
	jr z,@trigger_body_foul
	ld c,001h
	ld a,(state.current_player)
	and c
	ld e,a
	ld a,(ix + entity_t.id)
	and c
	cp e
	jr z,@no_body_collision
@trigger_body_foul:
	ld a,game_foul_t.body
	ld (ball.foul_type),a
	ld c,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_player
	ld a,(ix + entity_t.id)
	and 001h
	jr z,@_unknown_play_sound
	ld c,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_ball_player_alt
@_unknown_play_sound:
	ld a,c
	ld (psg_engine.track_request_id),a
	ld hl,state.match_state_flags
	res 0,(hl)
	ld hl,0
	ld (ball.y_vel),hl
	ld (ball.x_vel),hl
	scf
	ret
@no_body_collision:
	and a
	ret

game_ball_aabb_relative:
	; y_min, y_max, x_min, x_max
	.DB $fc, $07, $fc, $07

game_player_aabb_relative:
	.DB $f8, $08, $fc, $08
	.DB $fc, $04, $fe, $04
	.DB $f8, $08, $fc, $08 ; Unreferenced?

game_racket_aabb_relative:
	.DB $fc, $04, $fe, $04
	.DB $f9, $05, $0d, $0c
	.DB $f9, $05, $ea, $0c
	.DB $f9, $05, $0d, $0c
	.DB $f9, $05, $ea, $0c
	.DB $f0, $10, $0d, $0c
	.DB $f0, $10, $ec, $0c
	.DB $f0, $10, $05, $0c

	.DB $f0, $10, $05, $0c
	.DB $f9, $05, $f0, $08
	.DB $f9, $05, $f0, $08
	.DB $f9, $05, $03, $08
	.DB $f9, $05, $03, $08
	.DB $fc, $08, $f4, $08
	.DB $fc, $08, $04, $08
	.DB $fc, $0c, $f4, $08
	.DB $fc, $08

game_racket_z_heights:
	.DB $f4, $08
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $f0, $e8
	.DB $f0, $e8
	.DB $e0, $f0

	.DB $e0, $f8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $00, $e8
	.DB $f0, $f0
	.DB $f0, $f0
	.DB $f0, $f0
	.DB $f4, $ec

game_racket_shot_result_table_1:
	.DB $00 $02 $01 $03
	.DB $02 $00 $03 $01
	.DB $01 $02 $00 $03
	.DB $02 $01 $03 $00

game_racket_shot_result_table_2:
	.DB $00 $03 $01 $02
	.DB $03 $00 $02 $01
	.DB $01 $03 $00 $02
	.DB $03 $01 $02 $00
