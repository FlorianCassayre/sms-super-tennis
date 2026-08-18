sub_game_entity_update_all:
	ld hl,l074fh_memory_table
	ld a,(state.entity_loop_index)
	add a,a
	ld e,a
	ld d,000h
	add hl,de
	ld e,(hl)
	inc hl
	ld d,(hl)
	push de
	pop ix
	ld a,(ix + entity_t.state_index)
	or a
	jr z,@no_action
	ld hl,@no_action
	; Push return address before jumping
	push hl
	ld hl,game_entity_state_jump_table - 2
	jp l0807h_game_fsm
@no_action:
	call sub_game_entity_animation_update_frame
	ld de,state.entity_loop_index
	ld a,(de)
	ld c,a
	ld b,000h
	ld hl,0c1c4h
	add hl,bc
	ld a,(ix + entity_t.id)
	ld (hl),a
	inc c
	ld a,c
	ld (de),a
	sub 006h
	jr nz,sub_game_entity_update_all
	ld (de),a
	jp sub_game_entity_render_all

l074fh_memory_table:
	.DW entities.player.1.bottom
	.DW entities.player.1.top
	.DW entities.player.2.bottom
	.DW entities.player.2.top
	.DW entities.ball
	.DW entities.ball_shadow
game_entity_state_jump_table:
	.DW sub_game_player_init_bottom
	.DW sub_game_player_init_top
	.DW sub_game_player_update_server_state
	.DW sub_1af2h
	.DW sub_1b68h
	.DW sub_game_player_update_server_state
	.DW sub_1af2h
	.DW sub_1b68h
	.DW sub_game_player_update_server_state
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_1bafh_nop
	.DW sub_game_player_update
	.DW sub_game_player_action_update_top
	.DW sub_game_ball_normal_update
	.DW sub_game_ball_shadow_update
	.DW sub_game_ball_toss_update
	.DW sub_game_ball_serve_perspective_update
	.DW sub_game_racket_shot_serve
	.DW sub_game_racket_shot_volley
	.DW sub_game_racket_shot_unknown
	.DW sub_game_racket_shot_lob
	.DW sub_game_racket_shot_groundstroke
