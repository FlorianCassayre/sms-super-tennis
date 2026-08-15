sub_game_entity_update_all:
	ld hl,l074fh_memory_table		;0711
	ld a,(game.entity_loop_index)		;0714
	add a,a			;0717
	ld e,a			;0718
	ld d,000h		;0719
	add hl,de			;071b
	ld e,(hl)			;071c
	inc hl			;071d
	ld d,(hl)			;071e
	push de			;071f
	pop ix		;0720
	ld a,(ix+002h)		;0722
	or a			;0725
	jr z,l0732h		;0726
	ld hl,l0732h		;0728
	; Push return address before jumping
	push hl			;072b
	ld hl,game_entity_state_jump_table - 2		;072c
	jp l0807h_game_fsm		;072f
l0732h:
	call sub_game_entity_animation_update_frame		;0732
	ld de,game.entity_loop_index		;0735
	ld a,(de)			;0738
	ld c,a			;0739
	ld b,000h		;073a
	ld hl,0c1c4h		;073c
	add hl,bc			;073f
	ld a,(ix+001h)		;0740
	ld (hl),a			;0743
	inc c			;0744
	ld a,c			;0745
	ld (de),a			;0746
	sub 006h		;0747
	jr nz,sub_game_entity_update_all		;0749
	ld (de),a			;074b
	jp sub_game_entity_render_all		;074c

l074fh_memory_table:
	.DW entities.player.1.bottom		;074f
	.DW entities.player.1.top		;0751
	.DW entities.player.2.bottom		;0753
	.DW entities.player.2.top		;0755
	.DW entities.ball		;0757
	.DW entities.ball_shadow		;0759
game_entity_state_jump_table:
	.DW sub_game_player_init_bottom		;075b
	.DW sub_game_player_init_top		;075d
	.DW sub_game_player_update_server_state		;075f
	.DW sub_1af2h		;0761
	.DW sub_1b68h		;0763
	.DW sub_game_player_update_server_state		;0765
	.DW sub_1af2h		;0767
	.DW sub_1b68h		;0769
	.DW sub_game_player_update_server_state		;076b
	.DW sub_1bafh_nop		;076d
	.DW sub_1bafh_nop		;076f
	.DW sub_1bafh_nop		;0771
	.DW sub_1bafh_nop		;0773
	.DW sub_1bafh_nop		;0775
	.DW sub_1bafh_nop		;0777
	.DW sub_1bafh_nop		;0779
	.DW sub_1bafh_nop		;077b
	.DW sub_1bafh_nop		;077d
	.DW sub_game_player_update		;077f
	.DW sub_game_player_action_update_top		;0781
	.DW sub_game_ball_normal_update		;0783
	.DW sub_game_ball_shadow_update		;0785
	.DW sub_game_ball_toss_update		;0787
	.DW sub_game_ball_serve_perspective_update		;0789
	.DW l101fh_racket_hit		;078b
	.DW l11b1h_racket_hit		;078d
	.DW l1227h		;078f
	.DW l126ch_ball_high		;0791
	.DW l12deh_racket_hit		;0793
