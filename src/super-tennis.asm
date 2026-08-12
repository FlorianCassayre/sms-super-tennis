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
	.INCLUDE "gui/gui_ascii_table.i"
	.INCLUDE "state/state_t.i"
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
.INCLUDE "graphics/palettes/palette_0.asm"
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
l0385h:
	.DB $00		;0385
	.DB $11		;0386
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
sub_0642h_animation_loop:
	ld a,(ix+004h)		; dd 7e 04 ;0642
	add a,a			; 87 ;0645
	ld e,a			; 5f ;0646
	ld d,000h		; 16 00 ;0647
	ld hl,unknown_table_0		; 21 24 41 ;0649
	add hl,de			; 19 ;064c
	ld e,(hl)			; 5e ;064d
	inc hl			; 23 ;064e
	ld d,(hl)			; 56 ;064f
	ld a,(de)			; 1a ;0650
	ld (ix+005h),a		; dd 77 05 ;0651
	inc de			; 13 ;0654
	ld (ix+006h),e		; dd 73 06 ;0655
	ld (ix+007h),d		; dd 72 07 ;0658
	ret			; c9 ;065b
	.INCLUDE "game/065ch.asm"
sub_0711h_entity_action_dispatch:
	ld hl,l074fh_memory_table		; 21 4f 07 ;0711
	ld a,(0c086h)		; 3a 86 c0 ;0714
	add a,a			; 87 ;0717
	ld e,a			; 5f ;0718
	ld d,000h		; 16 00 ;0719
	add hl,de			; 19 ;071b
	ld e,(hl)			; 5e ;071c
	inc hl			; 23 ;071d
	ld d,(hl)			; 56 ;071e
	push de			; d5 ;071f
	pop ix		; dd e1 ;0720
	ld a,(ix+002h)		; dd 7e 02 ;0722
	or a			; b7 ;0725
	jr z,l0732h		; 28 0a ;0726
	ld hl,l0732h		; 21 32 07 ;0728
	; Push return address before jumping
	push hl			; e5 ;072b
	ld hl,game_entity_state_jump_table - 2		; 21 59 07 ;072c
	jp l0807h_game_fsm		; c3 07 08 ;072f
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
	.DW sub_draw_splash_screen		;0813
	.DW sub_draw_settings_menu		;0815
	.DW sub_init_tennis_court		;0817
	.DW sub_draw_tennis_court		;0819
	.DW l0b3bh_prepare_serve		;081b
	.DW l0c6bh		;081d
	.DW sub_reset_state		;081f
	.INCLUDE "game/draw_splash_screen.asm"
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
l0c67h:
	ld (bc),a			; 02 ;0c67
	ld bc,00102h		; 01 02 01 ;0c68
l0c6bh:
	ld hl,0c007h		; 21 07 c0 ;0c6b
	ld a,(hl)			; 7e ;0c6e
	dec a			; 3d ;0c6f
	jr z,l0c8eh		; 28 1c ;0c70
	dec a			; 3d ;0c72
	jr z,l0c99h		; 28 24 ;0c73
	dec a			; 3d ;0c75
	jr z,l0cbah		; 28 42 ;0c76
	dec a			; 3d ;0c78
	jp z,sub_check_game_ended		; ca 25 0d ;0c79
	dec a			; 3d ;0c7c
	jp z,l0d3eh		; ca 3e 0d ;0c7d
	ld (hl),001h		; 36 01 ;0c80
	ld hl,00078h		; 21 78 00 ;0c82
	ld (game.pause_counter),hl		; 22 8a c0 ;0c85
	call sub_menu_highlight_cursor		; cd 84 0d ;0c88
	jp l2ee1h_dispatch		; c3 e1 2e ;0c8b
l0c8eh:
	call sub_decrement_pause_counter		; cd ad 03 ;0c8e
	jp nz,l0b1eh_update_ball		; c2 1e 0b ;0c91
	ld a,002h		; 3e 02 ;0c94
	ld (0c007h),a		; 32 07 c0 ;0c96
l0c99h:
	ld a,(0c040h)		; 3a 40 c0 ;0c99
	bit 7,a		; cb 7f ;0c9c
	jp nz,l0b1eh_update_ball		; c2 1e 0b ;0c9e
	ld hl,0c000h		; 21 00 c0 ;0ca1
	res 2,(hl)		; cb 96 ;0ca4
	ld a,003h		; 3e 03 ;0ca6
	ld (0c007h),a		; 32 07 c0 ;0ca8
	call sub_update_score_points		; cd ea 2f ;0cab
	ld a,(0c000h)		; 3a 00 c0 ;0cae
	bit 3,a		; cb 5f ;0cb1
	ret z			; c8 ;0cb3
	ld a,000h		; 3e 00 ;0cb4
	ld (psg_engine.track_request_id),a		; 32 00 de ;0cb6
	ret			; c9 ;0cb9
l0cbah:
	ld a,(0c48bh)		; 3a 8b c4 ;0cba
	bit 0,a		; cb 47 ;0cbd
	jp nz,l0d5fh		; c2 5f 0d ;0cbf
	ld a,(score.tie_break)		; 3a 81 c4 ;0cc2
	bit 0,a		; cb 47 ;0cc5
	jr nz,l0d07h		; 20 3e ;0cc7
	ld a,(score.game_lost)		; 3a 95 c4 ;0cc9
	bit 0,a		; cb 47 ;0ccc
	jp z,l0d63h		; ca 63 0d ;0cce
l0cd1h:
	ld hl,0c100h		; 21 00 c1 ;0cd1
	ld (hl),0d0h		; 36 d0 ;0cd4
	ld a,080h		; 3e 80 ;0cd6
	ld (0c089h),a		; 32 89 c0 ;0cd8
	xor a			; af ;0cdb
	ld (entities.player.1.bottom.type),a		; 32 02 c2 ;0cdc
	ld (entities.player.1.top.type),a		; 32 42 c2 ;0cdf
	ld (entities.player.2.bottom.type),a		; 32 82 c2 ;0ce2
	ld (entities.player.2.top.type),a		; 32 c2 c2 ;0ce5
	ld (0c302h),a		; 32 02 c3 ;0ce8
	ld (0c302h),a		; 32 02 c3 ;0ceb
	ld a,004h		; 3e 04 ;0cee
	ld (0c007h),a		; 32 07 c0 ;0cf0
	call sub_update_set_scores		; cd b8 31 ;0cf3
	ld a,(score.tie_break)		; 3a 81 c4 ;0cf6
	bit 0,a		; cb 47 ;0cf9
	ret z			; c8 ;0cfb
	ld a,(0c045h)		; 3a 45 c0 ;0cfc
	ld (0c51ch),a		; 32 1c c5 ;0cff
	xor a			; af ;0d02
	ld (0c51bh),a		; 32 1b c5 ;0d03
	ret			; c9 ;0d06
l0d07h:
	ld a,(score.game_lost)		; 3a 95 c4 ;0d07
	bit 0,a		; cb 47 ;0d0a
	jr z,l0d1ah		; 28 0c ;0d0c
	ld a,(0c51ch)		; 3a 1c c5 ;0d0e
	ld (0c045h),a		; 32 45 c0 ;0d11
	xor a			; af ;0d14
	ld (score.tie_break),a		; 32 81 c4 ;0d15
	jr l0cd1h		; 18 b7 ;0d18
l0d1ah:
	ld hl,0c51bh		; 21 1b c5 ;0d1a
	ld a,(hl)			; 7e ;0d1d
	or a			; b7 ;0d1e
	jr nz,l0d6fh		; 20 4e ;0d1f
	ld (hl),001h		; 36 01 ;0d21
	jr l0d6bh		; 18 46 ;0d23
	.INCLUDE "game/check_game_ended.asm"
l0d3eh:
	ld hl,0c089h		; 21 89 c0 ;0d3e
	set 7,(hl)		; cb fe ;0d41
	call sub_decrement_pause_counter		; cd ad 03 ;0d43
	ret nz			; c0 ;0d46
l0d47h:
	xor a			; af ;0d47
	ld (0c000h),a		; 32 00 c0 ;0d48
	ld hl,0c006h		; 21 06 c0 ;0d4b
	ld (hl),080h		; 36 80 ;0d4e
	inc hl			; 23 ;0d50
	ld (hl),a			; 77 ;0d51
	ld hl,0c040h		; 21 40 c0 ;0d52
	ld de,0c041h		; 11 41 c0 ;0d55
	ld bc,00529h		; 01 29 05 ;0d58
	ld (hl),a			; 77 ;0d5b
	ldir		; ed b0 ;0d5c
	ret			; c9 ;0d5e
l0d5fh:
	ld a,000h		; 3e 00 ;0d5f
	jr l0d71h		; 18 0e ;0d61
l0d63h:
	ld a,001h		; 3e 01 ;0d63
	jr l0d71h		; 18 0a ;0d65
l0d67h:
	ld a,002h		; 3e 02 ;0d67
	jr l0d71h		; 18 06 ;0d69
l0d6bh:
	ld a,003h		; 3e 03 ;0d6b
	jr l0d71h		; 18 02 ;0d6d
l0d6fh:
	ld a,004h		; 3e 04 ;0d6f
l0d71h:
	ld (0c043h),a		; 32 43 c0 ;0d71
	ld a,(0c000h)		; 3a 00 c0 ;0d74
	bit 3,a		; cb 5f ;0d77
	jr nz,l0d47h		; 20 cc ;0d79
	ld hl,0c006h		; 21 06 c0 ;0d7b
	ld (hl),005h		; 36 05 ;0d7e
	inc hl			; 23 ;0d80
	ld (hl),000h		; 36 00 ;0d81
	ret			; c9 ;0d83
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
	.INCLUDE "game/gui/sub_menu_button_press_test.asm"
	.INCLUDE "game/ball/update_ball_out_of_bounds.asm"
	.INCLUDE "game/init_splash_screen.asm"
l0ef3h_hardware_sms:
	ld hl,0c006h		; 21 06 c0 ;0ef3
	ld (hl),081h		; 36 81 ;0ef6
	ret			; c9 ;0ef8
sub_0ef9h_palette_swap:
	ld hl,0c006h		; 21 06 c0 ;0ef9
	bit 6,(hl)		; cb 76 ;0efc
	ret z			; c8 ;0efe
	bit 5,(hl)		; cb 6e ;0eff
	ret nz			; c0 ;0f01
l0f02h:
	set 5,(hl)		; cb ee ;0f02
	ld hl,0		; 21 00 00 ;0f04
	ld de,l002dh_palette		; 11 2d 00 ;0f07
	ld b,2		; 06 02 ;0f0a
	call sub_graphics_palette_load		; cd 81 04 ;0f0c
	ld hl,00010h		; 21 10 00 ;0f0f
	ld de,l002dh_palette		; 11 2d 00 ;0f12
	ld b,1		; 06 01 ;0f15
	jp sub_graphics_palette_load		; c3 81 04 ;0f17
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
l0fa5h:
	ld hl,l1300h		; 21 00 13 ;0fa5
	ld (ball.z_pos),hl		; 22 00 c5 ;0fa8
	ld a,(0c041h)		; 3a 41 c0 ;0fab
	add a,a			; 87 ;0fae
	add a,a			; 87 ;0faf
	add a,a			; 87 ;0fb0
	ld e,a			; 5f ;0fb1
	ld d,000h		; 16 00 ;0fb2
	ld hl,l0fffh		; 21 ff 0f ;0fb4
	add hl,de			; 19 ;0fb7
	ld e,(hl)			; 5e ;0fb8
	inc hl			; 23 ;0fb9
	ld d,(hl)			; 56 ;0fba
	ld (ball.y_pos),de		; ed 53 08 c5 ;0fbb
	inc hl			; 23 ;0fbf
	ld c,(hl)			; 4e ;0fc0
	inc hl			; 23 ;0fc1
	ld b,(hl)			; 46 ;0fc2
	inc hl			; 23 ;0fc3
	ld e,(hl)			; 5e ;0fc4
	inc hl			; 23 ;0fc5
	ld d,(hl)			; 56 ;0fc6
	inc hl			; 23 ;0fc7
	ld a,(hl)			; 7e ;0fc8
	inc hl			; 23 ;0fc9
	ld h,(hl)			; 66 ;0fca
	ld l,a			; 6f ;0fcb
	ld a,(hl)			; 7e ;0fcc
	inc hl			; 23 ;0fcd
	ld h,(hl)			; 66 ;0fce
	ld l,a			; 6f ;0fcf
	add hl,de			; 19 ;0fd0
	ld de,08000h		; 11 00 80 ;0fd1
	xor a			; af ;0fd4
	ex de,hl			; eb ;0fd5
	sbc hl,de		; ed 52 ;0fd6
	push af			; f5 ;0fd8
	jr nc,l0fe2h		; 30 07 ;0fd9
	xor a			; af ;0fdb
	ld de,0		; 11 00 00 ;0fdc
	ex de,hl			; eb ;0fdf
	sbc hl,de		; ed 52 ;0fe0
l0fe2h:
	ld de,0		; 11 00 00 ;0fe2
	ex de,hl			; eb ;0fe5
	call sub_div_hl_de_bc		; cd 0b 04 ;0fe6
	ld d,e			; 53 ;0fe9
	ld e,h			; 5c ;0fea
	ld hl,08000h		; 21 00 80 ;0feb
	pop af			; f1 ;0fee
	jr nc,l0ff6h		; 30 05 ;0fef
	xor a			; af ;0ff1
	adc hl,de		; ed 5a ;0ff2
	jr l0ff9h		; 18 03 ;0ff4
l0ff6h:
	xor a			; af ;0ff6
	sbc hl,de		; ed 52 ;0ff7
l0ff9h:
	ld (0c50ah),hl		; 22 0a c5 ;0ff9
	jp sub_game_ball_sprite_perspective_x		; c3 48 15 ;0ffc
l0fffh:
	.DB $00		;0fff
	.DB $d3		;1000
	.DB $95		;1001
	.DB $01		;1002
	.DB $00		;1003
	.DB $0c		;1004
	.DB $0c		;1005
	.DB $c2		;1006
	.DB $00		;1007
	.DB $27		;1008
	.DB $d3		;1009
	.DB $00		;100a
	.DB $00		;100b
	.DB $fa		;100c
	.DB $4c		;100d
	.DB $c2		;100e
	.DB $00		;100f
	.DB $d3		;1010
	.DB $95		;1011
	.DB $01		;1012
	.DB $00		;1013
	.DB $0c		;1014
	.DB $8c		;1015
	.DB $c2		;1016
	.DB $00		;1017
	.DB $27		;1018
	.DB $d3		;1019
	.DB $00		;101a
	.DB $00		;101b
	.DB $fa		;101c
	.DB $cc		;101d
	.DB $c2		;101e
	.INCLUDE "game/l101h_racket_hit.asm"
	.INCLUDE "game/l11b1h_racket_hit.asm"
l1227h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_8a		; 3e 8a ;1227
	ld (psg_engine.track_request_id),a		; 32 00 de ;1229
	ld hl,l1260h		; 21 60 12 ;122c
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;122f
	add a,a			; 87 ;1232
	add a,a			; 87 ;1233
	ld c,a			; 4f ;1234
	ld b,000h		; 06 00 ;1235
	add hl,bc			; 09 ;1237
	ld e,(hl)			; 5e ;1238
	inc hl			; 23 ;1239
	ld d,(hl)			; 56 ;123a
	inc hl			; 23 ;123b
	ld c,(hl)			; 4e ;123c
	inc hl			; 23 ;123d
	ld b,(hl)			; 46 ;123e
	ld a,(0c042h)		; 3a 42 c0 ;123f
	and 001h		; e6 01 ;1242
	jr z,l124dh		; 28 07 ;1244
	xor a			; af ;1246
	ld hl,0		; 21 00 00 ;1247
	sbc hl,de		; ed 52 ;124a
	ex de,hl			; eb ;124c
l124dh:
	ld (ball.y_vel),de		; ed 53 0c c5 ;124d
	ld (ball.z_vel),bc		; ed 43 06 c5 ;1251
	call sub_load_ball_z_gravity		; cd 8f 13 ;1255
	ld c,003h		; 0e 03 ;1258
	call sub_compute_ball_x_velocity		; cd a8 13 ;125a
	jp sub_l1362h		; c3 62 13 ;125d
l1260h:
	.DB $00		;1260
	.DB $ff		;1261
	.DB $c0		;1262
	.DB $ff		;1263
	.DB $ab		;1264
	.DB $fe		;1265
	.DB $ab		;1266
	.DB $ff		;1267
	.DB $00		;1268
	.DB $fe		;1269
	.DB $50		;126a
	.DB $ff		;126b
	.INCLUDE "game/l126ch_ball_high.asm"
	.INCLUDE "game/l12deh_racket_hit.asm"
sub_l1362h:
	ld a,015h		;1362
	ld (0c302h),a		; 32 02 c3 ;1364
	xor a			; af ;1367
	ld (0c303h),a		; 32 03 c3 ;1368
	ld a,(0c042h)		; 3a 42 c0 ;136b
	ld e,a			; 5f ;136e
	ld d,000h		; 16 00 ;136f
	ld hl,l138bh		; 21 8b 13 ;1371
	add hl,de			; 19 ;1374
	ld a,(hl)			; 7e ;1375
	ld (0c312h),a		; 32 12 c3 ;1376
	ld hl,0c040h		; 21 40 c0 ;1379
	set 7,(hl)		; cb fe ;137c
	ld a,(ball.z_pos + 1)		; 3a 01 c5 ;137e
	cp 010h		; fe 10 ;1381
	ret nc			; d0 ;1383
	ld hl,01000h		; 21 00 10 ;1384
	ld (ball.z_pos),hl		; 22 00 c5 ;1387
	ret			; c9 ;138a
l138bh:
	.DB $01		;138b
	.DB $02		;138c
	.DB $01		;138d
	.DB $02		;138e
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
l17e7h_bounding_box:
	.DB $fc		;17e7
	.DB $08		;17e8
	.DB $f8		;17e9
	.DB $10		;17ea
	.DB $87		;17eb
	.DB $87		;17ec
	.DB $5f		;17ed
	.DB $16		;17ee
	.DB $00		;17ef
	.DB $19		;17f0
sub_17f1h_aabb:
	ld a,(ix + entity_t.y_pos + 1)		; dd 7e 0b ;17f1
	add a,(hl)			; 86 ;17f4
	ld c,a			; 4f ;17f5
	inc hl			; 23 ;17f6
	add a,(hl)			; 86 ;17f7
	ld b,a			; 47 ;17f8
	inc hl			; 23 ;17f9
	ld a,(ix + entity_t.x_pos + 1)		; dd 7e 0d ;17fa
	add a,(hl)			; 86 ;17fd
	ld e,a			; 5f ;17fe
	inc hl			; 23 ;17ff
	add a,(hl)			; 86 ;1800
	jr nc,l1804h		; 30 01 ;1801
	ld a,e			; 7b ;1803
l1804h:
	ld d,a			; 57 ;1804
	ret		;1805
	.INCLUDE "physics/1806h_bound_check.asm"
	.INCLUDE "physics/classify_zone.asm"
	.INCLUDE "game/player/player_ball_collision.asm"
	.INCLUDE "game/player/game_player_update_server_state.asm"
	.INCLUDE "game/player/1af2.asm"
sub_1b68h:
	bit 7,(ix + entity_t.type)		; dd cb 02 7e ;1b68
	jr nz,l1b7eh		; 20 10 ;1b6c
	set 7,(ix + entity_t.type)		; dd cb 02 fe ;1b6e
	ld (ix+022h),008h		; dd 36 22 08 ;1b72
	ld (ix+023h),0ffh		; dd 36 23 ff ;1b76
	ld (ix+020h),000h		; dd 36 20 00 ;1b7a
l1b7eh:
	call sub_game_player_update_animation		; cd 69 2a ;1b7e
	call sub_game_racket_process_swing_contact		; cd 40 2c ;1b81
	ld a,(ix+023h)		; dd 7e 23 ;1b84
	and a			; a7 ;1b87
	ret nz			; c0 ;1b88
	ld a,013h		; 3e 13 ;1b89
	bit 0,(ix + entity_t.side_state)		; dd cb 01 46 ;1b8b
	jr z,l1b97h		; 28 06 ;1b8f
	ld a,014h		; 3e 14 ;1b91
	ld (ix+030h),001h		; dd 36 30 01 ;1b93
l1b97h:
	ld (ix + entity_t.type),a		; dd 77 02 ;1b97
	xor a			; af ;1b9a
	ld (0c400h),a		; 32 00 c4 ;1b9b
	ret			; c9 ;1b9e
sub_1b9fh_decrement_timer:
	ld l,(ix+029h)		; dd 6e 29 ;1b9f
	ld h,(ix+02ah)		; dd 66 2a ;1ba2
	dec hl			; 2b ;1ba5
	ld (ix+029h),l		; dd 75 29 ;1ba6
	ld (ix+02ah),h		; dd 74 2a ;1ba9
	ld a,l			; 7d ;1bac
	or h			; b4 ;1bad
	ret			; c9 ;1bae
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
sub_238dh:
	ld a,(iy+02fh)		; fd 7e 2f ;238d
	cp 004h		; fe 04 ;2390
	ld hl,0a000h		; 21 00 a0 ;2392
	jr c,l239ah		; 38 03 ;2395
	ld hl,05000h		; 21 00 50 ;2397
l239ah:
	bit 0,(ix+001h)		; dd cb 01 46 ;239a
	ld de,04c00h		; 11 00 4c ;239e
	jr nz,l23a6h		; 20 03 ;23a1
	ld de,08800h		; 11 00 88 ;23a3
l23a6h:
	call sub_221eh_collision_broad		; cd 1e 22 ;23a6
	ret			; c9 ;23a9
	.INCLUDE "game/cpu/game_cpu_evaluate_y_dist_2.asm"
sub_23ffh:
	bit 1,(ix+001h)		; dd cb 01 4e ;23ff
	ld hl,entities.player.1.bottom.type		; 21 02 c2 ;2403
	ld e,004h		; 1e 04 ;2406
	jr nz,l240fh		; 20 05 ;2408
	ld hl,entities.player.2.bottom.type		; 21 82 c2 ;240a
	ld e,000h		; 1e 00 ;240d
l240fh:
	ld a,(hl)			; 7e ;240f
	and 03fh		; e6 3f ;2410
	cp 003h		; fe 03 ;2412
	ld a,002h		; 3e 02 ;2414
	jr z,l2423h		; 28 0b ;2416
	ld a,(0c000h)		; 3a 00 c0 ;2418
	bit 7,a		; cb 7f ;241b
	ld a,000h		; 3e 00 ;241d
	jr nz,l2423h		; 20 02 ;241f
	ld a,008h		; 3e 08 ;2421
l2423h:
	or e			; b3 ;2423
	ld e,a			; 5f ;2424
	ld a,(0c044h)		; 3a 44 c0 ;2425
	and 001h		; e6 01 ;2428
	or e			; b3 ;242a
	add a,a			; 87 ;242b
	ld e,a			; 5f ;242c
	ld d,000h		; 16 00 ;242d
	ld hl,l2458h		; 21 58 24 ;242f
	add hl,de			; 19 ;2432
	ld a,(hl)			; 7e ;2433
	ld (ix+030h),a		; dd 77 30 ;2434
	inc hl			; 23 ;2437
	ld e,(hl)			; 5e ;2438
	ld hl,0246ch		; 21 6c 24 ;2439
	add hl,de			; 19 ;243c
	ld a,(hl)			; 7e ;243d
	ld (ix+00ah),a		; dd 77 0a ;243e
	inc hl			; 23 ;2441
	ld a,(hl)			; 7e ;2442
	ld (ix+00bh),a		; dd 77 0b ;2443
	ld (ix+014h),a		; dd 77 14 ;2446
	inc hl			; 23 ;2449
	ld a,(hl)			; 7e ;244a
	ld (ix+00ch),a		; dd 77 0c ;244b
	inc hl			; 23 ;244e
	ld a,(hl)			; 7e ;244f
	ld (ix+00dh),a		; dd 77 0d ;2450
	ld (ix+002h),013h		; dd 36 02 13 ;2453
	ret			; c9 ;2457
l2458h:
	.DB $01		;2458
	.DB $0c		;2459
	.DB $05		;245a
	.DB $04		;245b
	.DB $05		;245c
	.DB $00		;245d
	.DB $05		;245e
	.DB $04		;245f
	.DB $05		;2460
	.DB $00		;2461
	.DB $01		;2462
	.DB $08		;2463
	.DB $05		;2464
	.DB $00		;2465
	.DB $01		;2466
	.DB $04		;2467
	.DB $01		;2468
	.DB $0c		;2469
	.DB $01		;246a
	.DB $08		;246b
	.DB $00		;246c
	.DB $88		;246d
	.DB $00		;246e
	.DB $60		;246f
	.DB $00		;2470
	.DB $88		;2471
	.DB $00		;2472
	.DB $a0		;2473
	.DB $00		;2474
	.DB $b0		;2475
	.DB $00		;2476
	.DB $60		;2477
	.DB $00		;2478
	.DB $b0		;2479
	.DB $00		;247a
	.DB $a0		;247b
	.INCLUDE "game/player/game_player_update.asm"
sub_game_player_read_input:
	ld a,(0c000h)		; 3a 00 c0 ;265e
	bit 3,a		; cb 5f ;2661
	jr z,l2678h		; 28 13 ;2663
	ld a,(ix+028h)		; dd 7e 28 ;2665
	rla			; 17 ;2668
	rla			; 17 ;2669
	rla			; 17 ;266a
	rla			; 17 ;266b
	and 030h		; e6 30 ;266c
	ld e,(ix+015h)		; dd 5e 15 ;266e
	or e			; b3 ;2671
	and 03fh		; e6 3f ;2672
	ld c,a			; 4f ;2674
	ret z			; c8 ;2675
	xor a			; af ;2676
	ret			; c9 ;2677
l2678h:
	ld a,(0c1c1h)		; 3a c1 c1 ;2678
	ld b,a			; 47 ;267b
	ld a,(0c1c0h)		; 3a c0 c1 ;267c
	ld c,a			; 4f ;267f
	ld a,(ix+001h)		; dd 7e 01 ;2680
	and 002h		; e6 02 ;2683
	jr z,l268fh		; 28 08 ;2685
	ld a,(0c1c3h)		; 3a c3 c1 ;2687
	ld b,a			; 47 ;268a
	ld a,(0c1c2h)		; 3a c2 c1 ;268b
	ld c,a			; 4f ;268e
l268fh:
	ld a,b			; 78 ;268f
	and 020h		; e6 20 ;2690
	ld e,a			; 5f ;2692
	ld a,c			; 79 ;2693
	and 020h		; e6 20 ;2694
	and e			; a3 ;2696
	ret nz			; c0 ;2697
	ld a,b			; 78 ;2698
	and 010h		; e6 10 ;2699
	ld e,a			; 5f ;269b
	ld a,c			; 79 ;269c
	and 010h		; e6 10 ;269d
	and e			; a3 ;269f
	ret			; c9 ;26a0
	.INCLUDE "game/player/game_player_apply_movement.asm"
	.INCLUDE "graphics/26ab_update.asm"
	.INCLUDE "game/player/player_movement.asm"
	.INCLUDE "game/player/apply_player_movement.asm"
	.INCLUDE "physics/data/table_player_velocity_top_a.asm"
	.INCLUDE "physics/data/table_player_velocity_top_b.asm"
	.INCLUDE "physics/data/table_player_velocity_bottom.asm"
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
l3b08h_palette:
	.DB $30		;3b08
	.DB $3f		;3b09
	.DB $37		;3b0a
	.DB $00		;3b0b
	.DB $27		;3b0c
	.DB $2b		;3b0d
	.DB $0f		;3b0e
	.DB $3b		;3b0f
l3b10h_palette:
	.DB $30		;3b10
	.DB $00		;3b11
	.DB $00		;3b12
	.DB $00		;3b13
	.DB $00		;3b14
	.DB $00		;3b15
	.DB $00		;3b16
	.DB $00		;3b17
	.DB $00		;3b18
	.DB $03		;3b19
	.DB $00		;3b1a
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
