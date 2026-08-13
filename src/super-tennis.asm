; --- generated header ---
.MEMORYMAP
    SLOTSIZE $8000
    SLOT 0 $0000
    DEFAULTSLOT 0
.ENDME
.ROMBANKMAP
    BANKSTOTAL 1
    BANKSIZE $8000
    BANKS 1
.ENDRO
; --- end generated header ---
; z80dasm 1.1.6
; command line: z80dasm -g 0x0000 -a -l super-tennis-usa-europe.sms

	.ORGA	00000h

	.INCLUDE "hardware/hardware_io.i"
	.INCLUDE "hardware/hardware_type.i"
	.INCLUDE "hardware/hardware_vdp.i"
	.INCLUDE "hardware/hardware_vdp_registers_t.i"
	.INCLUDE "hardware/hardware_vdp_palette.i"
	.INCLUDE "gui/gui_ascii_table.i"
	.INCLUDE "state/state_t.i"
	.INCLUDE "state/state_match_flags.i"
	.INCLUDE "algorithm/rle_constants.i"
	.INCLUDE "game/score/game_score_t.i"
	.INCLUDE "game/game_t.i"
	.INCLUDE "game/ball/ball_t.i"
	.INCLUDE "game/ball/game_ball.i"
	.INCLUDE "game/entity/entity_t.i"
	.INCLUDE "game/player/game_player.i"
	.INCLUDE "game/foul/game_foul_t.i"
	.INCLUDE "io/constants.i"
	.INCLUDE "audio/psg/audio_psg.i"
	.INCLUDE "physics/constants.i"
	.INCLUDE "game/gui/constants.i"
	.INCLUDE "audio/note/audio_note_t.i"
	.INCLUDE "audio/command/audio_command_routines_t.i"
	.INCLUDE "audio/track/audio_tracks_t.i"
	.INCLUDE "audio/track/audio_track_macros.i"
start:
	jp init		; c3 85 00 ;0000
.INCLUDE "game/court/game_court_palette.asm"
	.DB $30		;0023
	.DB $0f		;0024
	.DB $07		;0025
	.DB $02		;0026
	.DB $00		;0027
	.DB $00		;0028
	.DB $00		;0029
	.DB $00		;002a
	.DB $00		;002b
	.DB $3f		;002c
l002dh_palette:
	.DB $00		;002d
	.DB $0f		;002e
	.DB $ff		;002f
	.DB $ff		;0030
	.DB $ff		;0031
	.DB $ff		;0032
	.DB $ff		;0033
	.DB $ff		;0034
	.DB $ff		;0035
	.DB $ff		;0036
	.DB $ff		;0037
l0038h_interrupt:
	jp isr_vblank_update		; c3 65 01 ;0038
.ASSERT l0038h_interrupt == $0038, LDERROR
	.INCLUDE "hardware/hardware_vdp_initial_register_values.asm"
	.DB $00		;0051
	.DB $00		;0052
	.DB $00		;0053
	.DB $00		;0054
	.DB $00		;0055
	.DSB 16 $ff		;0056
.INCLUDE "io/pause_handler.asm"
.INCLUDE "init.asm"
	.INCLUDE "graphics/delay_vdp.asm"
	.INCLUDE "graphics/update_cond_color.asm"
	.INCLUDE "io/027bh_joy.asm"
	.INCLUDE "audio/event/audio_event_wait.asm"
	.INCLUDE "audio/event/audio_idle_wait.asm"
blank_tile_data:
	.DW $1100		;0385
sprite_y_position_hidden:
	.DB $e0		;0387
	.INCLUDE "graphics/init_background_name_table.asm"
	.INCLUDE "graphics/display.asm"
	.INCLUDE "graphics/decrement_pause_counter.asm"
	.INCLUDE "graphics/upload_vram_chunks.asm"
	.INCLUDE "math/prng.asm"
	.INCLUDE "math/mul_h_e_impl.asm" ; Duplicated
	.INCLUDE "math/mul_de_bc.asm"
	.INCLUDE "math/div_hl_de_bc.asm"
	.INCLUDE "graphics/set_vdp_write_addr.asm"
	.INCLUDE "graphics/cp_ram_vram.asm"
	.INCLUDE "graphics/vram_fill_byte.asm"
	.INCLUDE "graphics/vram_fill_word.asm"
	.INCLUDE "graphics/load_vram_rect.asm"
	.INCLUDE "graphics/palette/graphics_palette_load.asm"
	.INCLUDE "graphics/cp_1bit_ram_vram.asm"
	.INCLUDE "algorithm/rle_decompress_bitplanes.asm"
	.INCLUDE "game/entity/game_entity_render_all.asm"
	.INCLUDE "game/entity/game_entity_render_one.asm"
	.INCLUDE "graphics/graphics_clean_unused_sprites.asm"
	.INCLUDE "game/entity/game_entity_y_ordering.asm"
	.INCLUDE "graphics/0642h_animation_loop.asm"
	.INCLUDE "game/065ch.asm"
	.INCLUDE "game/0711h_entity_action_dispatch.asm"
l0732h:
	call sub_0642h_animation_loop		; cd 42 06 ;0732
	ld de,0c086h		; 11 86 c0 ;0735
	ld a,(de)			; 1a ;0738
	ld c,a			; 4f ;0739
	ld b,000h		; 06 00 ;073a
	ld hl,0c1c4h		; 21 c4 c1 ;073c
	add hl,bc			; 09 ;073f
	ld a,(ix+001h)		; dd 7e 01 ;0740
	ld (hl),a			; 77 ;0743
	inc c			; 0c ;0744
	ld a,c			; 79 ;0745
	ld (de),a			; 12 ;0746
	sub 006h		; d6 06 ;0747
	jr nz,sub_0711h_entity_action_dispatch		; 20 c6 ;0749
	ld (de),a			; 12 ;074b
	jp sub_game_entity_render_all		; c3 1a 05 ;074c
l074fh_memory_table:
	.DW entities.player.1.bottom		;074f
	.DW entities.player.1.top		;0751
	.DW entities.player.2.bottom		;0753
	.DW entities.player.2.top		;0755
	.DW entities.ball		;0757
	.DW entities.ball_shadow		;0759
game_entity_state_jump_table:
	.DW sub_23ffh		;075b
	.DW l1bb0h		;075d
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
	.DW l1c2bh		;0781
	.DW l0f1ah		;0783
	.DW l0f1dh		;0785
	.DW l0f4dh		;0787
	.DW l0fa5h		;0789
	.DW l101fh_racket_hit		;078b
	.DW l11b1h_racket_hit		;078d
	.DW l1227h		;078f
	.DW l126ch_ball_high		;0791
	.DW l12deh_racket_hit		;0793
	.INCLUDE "io/joy_debounce.asm"
	.INCLUDE "game/game_fsm.asm"
l0811h:
	.DW sub_init_splash_screen		;0811
	.DW sub_game_gui_splash_draw		;0813
	.DW sub_draw_settings_menu		;0815
	.DW sub_init_tennis_court		;0817
	.DW sub_draw_tennis_court		;0819
	.DW l0b3bh_prepare_serve		;081b
	.DW l0c6bh		;081d
	.DW sub_reset_state		;081f
	.INCLUDE "game/gui/game_gui_splash_draw.asm"
	.INCLUDE "game/init_tennis_court.asm"
	.INCLUDE "game/reset_state.asm"
	.INCLUDE "game/draw_settings_menu.asm"
	.INCLUDE "game/gui/handle_gui_control.asm"
	.INCLUDE "graphics/vdp_build_sprite_buffer.asm"
	.INCLUDE "graphics/0a85h_sprite_offset.asm"
	.INCLUDE "math/mul_a_c_add_b.asm"
	.INCLUDE "graphics/draw_0abd_tennis_court.asm"
	.INCLUDE "game/draw_tennis_court.asm"
	.INCLUDE "game/0b28h.asm"
	.INCLUDE "game/l0c67h.asm"
	.INCLUDE "graphics/menu_highlight_cursor.asm"
l0dd0h:
	.DB $51		;0dd0
	.DB $80		;0dd1
	.DB $52		;0dd2
	.DB $80		;0dd3
	.DB $80		;0dd4
	.DB $ae		;0dd5
	.DB $80		;0dd6
	.DB $ad		;0dd7
	.DB $80		;0dd8
	.DB $ae		;0dd9
	.DB $52		;0dda
	.DB $80		;0ddb
	.DB $51		;0ddc
	.DB $80		;0ddd
	.DB $52		;0dde
	.DB $80		;0ddf
	.DB $80		;0de0
	.DB $ae		;0de1
	.DB $80		;0de2
	.DB $ad		;0de3
	.DB $80		;0de4
	.DB $ae		;0de5
	.DB $52		;0de6
	.DB $80		;0de7
l0de8h:
	.DB $29		;0de8
	.DB $80		;0de9
	.DB $52		;0dea
	.DB $ae		;0deb
	.DB $44		;0dec
	.DB $bc		;0ded
	.DB $80		;0dee
	.DB $d3		;0def
	.DB $52		;0df0
	.DB $ae		;0df1
	.DB $44		;0df2
	.DB $bc		;0df3
	.DB $29		;0df4
	.DB $80		;0df5
	.DB $52		;0df6
	.DB $ae		;0df7
	.DB $44		;0df8
	.DB $bc		;0df9
	.DB $80		;0dfa
	.DB $d3		;0dfb
	.DB $52		;0dfc
	.DB $ae		;0dfd
	.DB $44		;0dfe
	.DB $bc		;0dff
l0e00h:
	.DB $40		;0e00
	.DB $80		;0e01
	.DB $40		;0e02
	.DB $80		;0e03
	.INCLUDE "game/gui/menu_button_press_test.asm"
	.INCLUDE "game/ball/update_ball_out_of_bounds.asm"
	.INCLUDE "game/init_splash_screen.asm"
	.INCLUDE "graphics/0ef9h_palette_swap.asm"
	.INCLUDE "graphics/l0f02h.asm"
l0f1ah:
	jp sub_game_ball_sprite_perspective_x		; c3 48 15 ;0f1a
l0f1dh:
	ld a,(0c30dh)		; 3a 0d c3 ;0f1d
	ld (ix+00dh),a		; dd 77 0d ;0f20
	ld a,(0c30bh)		; 3a 0b c3 ;0f23
	inc a			; 3c ;0f26
	ld (ix+014h),a		; dd 77 14 ;0f27
	ld l,a			; 6f ;0f2a
	ld h,000h		; 26 00 ;0f2b
	add hl,hl			; 29 ;0f2d
	ld de,0cee6h		; 11 e6 ce ;0f2e
	add hl,de			; 19 ;0f31
	ld c,(hl)			; 4e ;0f32
	inc hl			; 23 ;0f33
	ld b,(hl)			; 46 ;0f34
	ld de,(0c500h)		; ed 5b 00 c5 ;0f35
	call sub_mul_de_bc		; cd f7 03 ;0f39
	ld d,e			; 53 ;0f3c
	ld e,h			; 5c ;0f3d
	xor a			; af ;0f3e
	ld hl,(0c30ah)		; 2a 0a c3 ;0f3f
	sbc hl,de		; ed 52 ;0f42
	ld (ix+00ah),l		; dd 75 0a ;0f44
	ld (ix+00bh),h		; dd 74 0b ;0f47
	jp sub_065ch		; c3 5c 06 ;0f4a
l0f4dh:
	ld a,(ix+003h)		; dd 7e 03 ;0f4d
	dec a			; 3d ;0f50
	jr z,l0f79h		; 28 26 ;0f51
	ld (ix+003h),001h		; dd 36 03 01 ;0f53
	ld hl,0ff00h		; 21 00 ff ;0f57
	ld (ball.z_vel),hl		; 22 06 c5 ;0f5a
	ld hl,4		; 21 04 00 ;0f5d
	ld (ball.z_gravity),hl		; 22 02 c5 ;0f60
	ld hl,0		; 21 00 00 ;0f63
	ld (ball.x_vel),hl		; 22 0e c5 ;0f66
	ld (ball.y_vel),hl		; 22 0c c5 ;0f69
	ld hl,0c040h		; 21 40 c0 ;0f6c
	set 7,(hl)		; cb fe ;0f6f
	set 0,(hl)		; cb c6 ;0f71
	ld hl,0c000h		; 21 00 c0 ;0f73
	set 0,(hl)		; cb c6 ;0f76
	ret			; c9 ;0f78
l0f79h:
	xor a			; af ;0f79
	ld de,l1300h		; 11 00 13 ;0f7a
	ld hl,(ball.z_pos)		; 2a 00 c5 ;0f7d
	sbc hl,de		; ed 52 ;0f80
	jr z,l0f86h		; 28 02 ;0f82
	jr nc,l0fa2h		; 30 1c ;0f84
l0f86h:
	ld hl,0c040h		; 21 40 c0 ;0f86
	bit 6,(hl)		; cb 76 ;0f89
	jr nz,l0f95h		; 20 08 ;0f8b
	res 7,(hl)		; cb be ;0f8d
	ld (ix+002h),018h		; dd 36 02 18 ;0f8f
	jr l0f99h		; 18 04 ;0f93
l0f95h:
	ld (ix+002h),015h		; dd 36 02 15 ;0f95
l0f99h:
	ld (ix+003h),000h		; dd 36 03 00 ;0f99
	ld hl,0c000h		; 21 00 c0 ;0f9d
	res 0,(hl)		; cb 86 ;0fa0
l0fa2h:
	jp sub_game_ball_sprite_perspective_x		; c3 48 15 ;0fa2
	.INCLUDE "game/l0fa5h.asm"
	.INCLUDE "game/l101h_racket_hit.asm"
	.INCLUDE "game/l11b1h_racket_hit.asm"
	.INCLUDE "game/l1227h.asm"
	.INCLUDE "game/l126ch_ball_high.asm"
	.INCLUDE "game/l12deh_racket_hit.asm"
	.INCLUDE "game/ball/l1362h_ball.asm"
	.INCLUDE "game/ball/load_ball_z_gravity.asm"
	.INCLUDE "game/ball/compute_ball_x_velocity.asm"
	.INCLUDE "game/ball/game_ball_update_physics.asm"
	.INCLUDE "game/ball/game_ball_sprite_perspective_x.asm"
	.INCLUDE "game/ball/game_ball_update_velocity_bounce.asm"
	.INCLUDE "game/ball/game_ball_compute_horizontal_deflection.asm"
	.INCLUDE "game/ball/game_ball_update_velocity_collision.asm"
l1769h:
	.DB $00		;1769
	.DB $00		;176a
	.DB $04		;176b
	.DB $03		;176c
l176dh:
	.DB $00		;176d
	.DB $01		;176e
	.DB $06		;176f
	.DB $05		;1770
l1771h:
	.DB $00		;1771
	.DB $02		;1772
	.DB $08		;1773
	.DB $07		;1774
l1775h:
	.DB $00		;1775
	.DB $00		;1776
	.DB $01		;1777
	.DB $02		;1778
	.DB $02		;1779
	.DB $01		;177a
	.DB $04		;177b
	.DB $08		;177c
	.DB $08		;177d
	.DB $04		;177e
	.DB $05		;177f
	.DB $0a		;1780
	.DB $09		;1781
	.DB $06		;1782
	.DB $06		;1783
	.DB $09		;1784
	.DB $0a		;1785
	.DB $05		;1786
	.INCLUDE "game/player/check_player_location.asm"
	.INCLUDE "game/17f1h_aabb.asm"
	.INCLUDE "physics/1806h_bound_check.asm"
	.INCLUDE "physics/classify_zone.asm"
	.INCLUDE "game/player/player_ball_collision.asm"
	.INCLUDE "game/player/game_player_update_server_state.asm"
	.INCLUDE "game/player/1af2.asm"
	.INCLUDE "game/player/1b68h.asm"
	.INCLUDE "game/1b9fh_decrement_timer.asm"
sub_1bafh_nop:
	ret			; c9 ;1baf
	.INCLUDE "game/player/l1bb0.asm"
l1c2bh:
	bit 7,(ix+002h)		; dd cb 02 7e ;1c2b
	jr nz,l1c39h		; 20 08 ;1c2f
	set 7,(ix+002h)		; dd cb 02 fe ;1c31
	ld (ix+025h),000h		; dd 36 25 00 ;1c35
l1c39h:
	call sub_2e98h_2d_scale_clamp		; cd 98 2e ;1c39
	call sub_game_cpu_update		; cd 25 1e ;1c3c
	ld a,(ix+025h)		; dd 7e 25 ;1c3f
	and 00fh		; e6 0f ;1c42
	ld hl,l1c4ah_jump_table		; 21 4a 1c ;1c44
	jp l0807h_game_fsm		; c3 07 08 ;1c47
	.INCLUDE "game/player/l1c4ah_jump_table.asm"
	.INCLUDE "game/player/1d89.asm"
	.INCLUDE "game/cpu/game_cpu_update.asm"
	.INCLUDE "physics/221eh_collision_broad.asm"
l2290h:
	.DB $ec		;2290
	.DB $ee		;2291
	.DB $f6		;2292
	.DB $fe		;2293
	.DB $02		;2294
	.DB $0a		;2295
	.DB $12		;2296
	.DB $14		;2297
	.INCLUDE "physics/2298h_collision.asm"
	.INCLUDE "math/neg_hl.asm"
	.INCLUDE "game/cpu/game_cpu_evaluate_y_dist_1.asm"
	.INCLUDE "game/cpu/238dh.asm"
	.INCLUDE "game/cpu/game_cpu_evaluate_y_dist_2.asm"
	.INCLUDE "game/player/23ffh.asm"
	.INCLUDE "game/player/game_player_update.asm"
	.INCLUDE "game/player/game_player_read_input.asm"
	.INCLUDE "game/player/game_player_apply_movement.asm"
	.INCLUDE "graphics/26ab_update.asm"
	.INCLUDE "game/player/player_movement.asm"
	.INCLUDE "game/player/apply_player_movement.asm"
	.INCLUDE "game/level/game_level_speed_base_table.asm"
	.INCLUDE "game/level/game_level_control_boost_table.asm"
	.INCLUDE "game/level/game_level_cpu_velocity_table.asm"
	.INCLUDE "game/player/game_player_update_animation.asm"
	.INCLUDE "data/animation_table.asm"
	.INCLUDE "game/racket/game_racket_update_hitbox.asm"
	.INCLUDE "game/racket/game_racket_evaluate_swing_type.asm"
	.INCLUDE "game/racket/game_racket_process_swing_contact.asm"
	.INCLUDE "math/abs10.asm"
	.INCLUDE "game/ball/game_ball_trajectory_data.asm"
	.INCLUDE "graphics/2e98h_2d_scale_clamp.asm"
	.INCLUDE "math/div_a_b_c.asm"
	.INCLUDE "game/l2ee1h_dispatch.asm"
	.INCLUDE "game/score/update_score_points.asm"
	.INCLUDE "math/div10.asm"
	.INCLUDE "graphics/3192_draw.asm"
	.INCLUDE "game/score/update_set_scores.asm"
	.INCLUDE "graphics/draw_game_end.asm"
sub_3457h_clean_vram:
	push bc			; c5 ;3457
	push de			; d5 ;3458
	push hl			; e5 ;3459
	push de			; d5 ;345a
	pop bc			; c1 ;345b
	ld de,gui_text_game_set_match		; 11 a9 34 ;345c
	di			; f3 ;345f
	call sub_vram_fill_word		; cd 50 04 ;3460
	ei			; fb ;3463
	pop hl			; e1 ;3464
	ld de,040h		; 11 40 00 ;3465
	add hl,de			; 19 ;3468
	pop de			; d1 ;3469
	pop bc			; c1 ;346a
	djnz sub_3457h_clean_vram		; 10 ea ;346b
	ret			; c9 ;346d
	.INCLUDE "graphics/draw_game_end_line.asm"
	.INCLUDE "graphics/draw_game_end_typewriter.asm"
gui_text_game_set_match:
	.STRINGMAP ascii, " GAME...  SET...  MATCH"
gui_text_win:
	.STRINGMAP ascii, "YOU WIN"
	.STRINGMAP ascii, "HAVE YOU TRIED"
	.STRINGMAP ascii, "A HARDER LEVEL?"
gui_text_lost:
	.STRINGMAP ascii, "YOU LOSE"
	.STRINGMAP ascii, "TRY AGAIN?"
sub_3543h:
	ld a,(0c000h)		; 3a 00 c0 ;3543
	bit 2,a		; cb 57 ;3546
	ret z			; c8 ;3548
	ld a,(0c48ch)		; 3a 8c c4 ;3549
	add a,a			; 87 ;354c
	ld e,a			; 5f ;354d
	ld d,000h		; 16 00 ;354e
	ld hl,l3560h		; 21 60 35 ;3550
	add hl,de			; 19 ;3553
	ld e,(hl)			; 5e ;3554
	inc hl			; 23 ;3555
	ld d,(hl)			; 56 ;3556
	ld hl,03a08h		; 21 08 3a ;3557
	ld bc,2		; 01 02 00 ;355a
	jp sub_cp_ram_vram		; c3 2f 04 ;355d
l3560h:
	.DW unknown_word_1		;3560
	.DW unknown_word_0		;3562
	.DW unknown_word_2		;3564
	.INCLUDE "game/update_announcement_timer.asm"
	.INCLUDE "graphics/load_vram_rect_dynamic.asm"
	.INCLUDE "graphics/35c6h_palette_load.asm"
	.INCLUDE "graphics/wait_a_frames.asm"
	.INCLUDE "game/delay_loop.asm"
	.INCLUDE "graphics/3607h.asm"
	.INCLUDE "data/chunks_1.asm"
l3777h_palette:
	.DB $58		;3777
	.DB $01		;3778
	.DB $59		;3779
	.DB $01		;377a
l377bh_palette:
	.DB $5a		;377b
	.DB $01		;377c
	.DB $5b		;377d
	.DB $01		;377e
l377fh_palette:
	.DB $44		;377f
	.DB $01		;3780
	.DB $45		;3781
	.DB $01		;3782
data_tiles_2:
	.INCLUDE "tiles/tiles_2.asm"
data_planes_0_0:
	.INCLUDE "tiles/planes_0_0.asm"
	.INCLUDE "tiles/planes_0_1.asm"
	.INCLUDE "tiles/planes_0_2.asm"
	.INCLUDE "tiles/planes_0_3.asm"
	.INCLUDE "game/gui/game_gui_splash_palette_primary.asm"
	.INCLUDE "game/gui/game_gui_splash_palette_secondary.asm"
data_planes_1_0:
	.INCLUDE "tiles/planes_1_0.asm"
	.INCLUDE "tiles/planes_1_1.asm"
	.INCLUDE "tiles/planes_1_2.asm"
	.INCLUDE "tiles/planes_1_3.asm"
data_tiles_1_super:
	.INCLUDE "tiles/tiles_1_super.asm"
data_planes_2_0:
	.INCLUDE "tiles/planes_2_0.asm"
	.INCLUDE "tiles/planes_2_1.asm"
	.INCLUDE "tiles/planes_2_2.asm"
	.INCLUDE "tiles/planes_2_3.asm"
	.INCLUDE "data/chunks_0.asm"
l40f0h_name_table:
	.DB $26		;40f0
	.DB $01		;40f1
	.DB $00		;40f2
	.DB $01		;40f3
	.DB $27		;40f4
	.DB $01		;40f5
	.DB $28		;40f6
	.DB $01		;40f7
	.DB $29		;40f8
	.DB $01		;40f9
	.DB $2a		;40fa
	.DB $01		;40fb
	.DB $00		;40fc
	.DB $01		;40fd
	.DB $02		;40fe
	.DB $01		;40ff
	.DB $0a		;4100
	.DB $01		;4101
	.DB $09		;4102
	.DB $01		;4103
	.DB $07		;4104
	.DB $01		;4105
	.INCLUDE "hardware/hardware_self_test.asm"
	.INCLUDE "data/unknown_table_0.asm"
l489bh_sprite_attributes:
	.DB $00 $00 $f5		;489b
	.DB $00 $08 $f6		;489e
	.DB $08 $00 $f7		;48a1
	.DB $08 $08 $f8		;48a4
	.INCLUDE "data/animation_frames.asm"
data_planes_3_0:
	.INCLUDE "tiles/planes_3_0.asm"
	.INCLUDE "tiles/planes_3_1.asm"
	.INCLUDE "tiles/planes_3_2.asm"
	.INCLUDE "tiles/planes_3_3.asm"
data_planes_4_0:
	.INCLUDE "tiles/planes_4_0.asm"
	.INCLUDE "tiles/planes_4_1.asm"
	.INCLUDE "tiles/planes_4_2.asm"
	.INCLUDE "tiles/planes_4_3.asm"
data_planes_5_0:
	.INCLUDE "tiles/planes_5_0.asm"
	.INCLUDE "tiles/planes_5_1.asm"
	.INCLUDE "tiles/planes_5_2.asm"
	.INCLUDE "tiles/planes_5_3.asm"
data_planes_6_0:
	.INCLUDE "tiles/planes_6_0.asm"
	.INCLUDE "tiles/planes_6_1.asm"
	.INCLUDE "tiles/planes_6_2.asm"
data_planes_7_0:
	.INCLUDE "tiles/planes_7_0.asm"
	.INCLUDE "tiles/planes_7_1.asm"
data_planes_7_2:
	.INCLUDE "tiles/planes_7_2.asm"
	.INCLUDE "tiles/planes_7_3.asm"
	.INCLUDE "tiles/planes_7_4.asm"
	.INCLUDE "tiles/planes_7_5.asm"
unknown_word_0:
	.DW $0152		;5952
unknown_word_1:
	.DW $018a		;5954
unknown_word_2:
	.DW $018b		;5956
data_planes_8_0:
	.INCLUDE "tiles/planes_8_0.asm"
	.INCLUDE "tiles/planes_8_1.asm"
	.INCLUDE "tiles/planes_8_2.asm"
	.INCLUDE "tiles/planes_8_3.asm"
data_planes_9_0:
	.INCLUDE "tiles/planes_9_0.asm"
	.INCLUDE "tiles/planes_9_1.asm"
	.INCLUDE "tiles/planes_9_2.asm"
	.INCLUDE "tiles/planes_9_3.asm"
data_planes_10_0:
	.INCLUDE "tiles/planes_10_0.asm"
	.INCLUDE "tiles/planes_10_1.asm"
	.INCLUDE "tiles/planes_10_2.asm"
	.INCLUDE "tiles/planes_10_3.asm"
data_planes_11_0:
	.INCLUDE "tiles/planes_11_0.asm"
	.INCLUDE "tiles/planes_11_1.asm"
	.INCLUDE "tiles/planes_11_2.asm"
	.INCLUDE "tiles/planes_11_3.asm"
	.IFDEF _J
	    .INCLUDE "audio/audio.asm"
	.ENDIF
	.INCLUDE "audio/audio_data.asm"
	.IFDEF _UE
		.INCLUDE "audio/audio.asm"
	.ENDIF
	.INCLUDE "padding.asm"
	.INCLUDE "header.asm"
