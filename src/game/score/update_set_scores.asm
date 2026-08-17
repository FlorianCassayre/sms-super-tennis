sub_update_set_scores:
	ld a,(score.delay_timer)		;31b8
	cp 000h		;31bb
	jr z,l31d1h		;31bd
	dec a			;31bf
	ld (score.delay_timer),a		;31c0
l31c3h:
	ld a,(state.sound_wait_flag)		;31c3
	or 080h		;31c6
	ld (state.sound_wait_flag),a		;31c8
	call sub_audio_event_wait		;31cb
	jp sub_update_set_scores		;31ce
l31d1h:
	ld a,(score.set_update_state)		;31d1
	cp 001h		;31d4
	jr c,l31e5h		;31d6
	jp z,l3205h		;31d8
	cp 003h		;31db
	jp c,l3303h		;31dd
	jp z,l3353h		;31e0
	jr sub_update_set_scores		;31e3
l31e5h:
	ld hl,03b54h		;31e5
	ld (score.vram_dest),hl		;31e8
	ld hl,data.umpire_settings		;31eb
	ld (score.vram_src),hl		;31ee
	ld h,7		;31f1
	ld l,00bh		;31f3
	ld (score.box_dimensions),hl		;31f5
	ld a,001h		;31f8
	ld (score.gui_update_flag),a		;31fa
	ld a,001h		;31fd
	ld (score.set_update_state),a		;31ff
	jp l31c3h		;3202
l3205h:
	ld a,(score.winner_player)		;3205
	ld b,a			;3208
	xor a			;3209
	ld a,(score.set_current_index)		;320a
	rla			;320d
	ld hl,score.set		;320e
	ld e,a			;3211
	ld d,000h		;3212
	add hl,de			;3214
	ld a,b			;3215
	cp 010h		;3216
	jp nz,l3249h		;3218
	inc (hl)			;321b
	ld de,0		;321c
	ld a,(hl)			;321f
	cp 006h		;3220
	jr c,l322fh		;3222
	cp 7		;3224
	jr nc,l3236h		;3226
	inc hl			;3228
	ld a,(hl)			;3229
	dec hl			;322a
	cp 5		;322b
	jr c,l3236h		;322d
l322fh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_lost		;322f
	ld (psg_engine.track_request_id),a		;3231
	jr l3276h		;3234
l3236h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_lost		;3236
	ld (psg_engine.track_request_id),a		;3238
	ld a,(score.sets_won_top)		;323b
	inc a			;323e
	ld (score.sets_won_top),a		;323f
	ld a,001h		;3242
	ld (score.advance_set_flag),a		;3244
	jr l3276h		;3247
l3249h:
	inc hl			;3249
	inc (hl)			;324a
	ld de,0007fh+1		;324b
	ld a,(hl)			;324e
	cp 006h		;324f
	jr c,l325eh		;3251
	cp 007h		;3253
	jr nc,l3265h		;3255
	dec hl			;3257
	ld a,(hl)			;3258
	inc hl			;3259
	cp 5		;325a
	jr c,l3265h		;325c
l325eh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_won		;325e
	ld (psg_engine.track_request_id),a		;3260
	jr l3276h		;3263
l3265h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_won		;3265
	ld (psg_engine.track_request_id),a		;3267
	ld a,(score.sets_won_bottom)		;326a
	inc a			;326d
	ld (score.sets_won_bottom),a		;326e
	ld a,001h		;3271
	ld (score.advance_set_flag),a		;3273
l3276h:
	ld (score.vram_dest),hl		;3276
	ld (score.vram_src),de		;3279
	ld hl,score.set		;327d
	push hl			;3280
	ld e,(hl)			;3281
	ld d,000h		;3282
	ld b,001h		;3284
	ld hl,03c1eh		;3286
	ld (0c4a0h),hl		;3289
	call sub_graphics_tile_draw_sequential_row		;328c
	pop hl			;328f
	inc hl			;3290
	push hl			;3291
	ld e,(hl)			;3292
	ld d,000h		;3293
	ld b,001h		;3295
	ld hl,03c9eh		;3297
	call sub_graphics_tile_draw_sequential_row		;329a
	pop hl			;329d
	inc hl			;329e
	ld e,(hl)			;329f
	inc hl			;32a0
	push hl			;32a1
	ld a,(score.set_current_index)		;32a2
	cp 001h		;32a5
	jp c,l32ebh		;32a7
	ld d,000h		;32aa
	ld b,001h		;32ac
	ld hl,03c22h		;32ae
	ld (0c4a0h),hl		;32b1
	call sub_graphics_tile_draw_sequential_row		;32b4
	pop hl			;32b7
	push hl			;32b8
	ld e,(hl)			;32b9
	ld d,000h		;32ba
	ld b,001h		;32bc
	ld hl,03ca1h+1		;32be
	call sub_graphics_tile_draw_sequential_row		;32c1
	pop hl			;32c4
	inc hl			;32c5
	ld e,(hl)			;32c6
	inc hl			;32c7
	push hl			;32c8
	ld a,(score.set_current_index)		;32c9
	cp 002h		;32cc
	jp c,l32ebh		;32ce
	ld d,000h		;32d1
	ld b,001h		;32d3
	ld hl,03c26h		;32d5
	ld (score.blinking_set_vram_addr),hl		;32d8
	call sub_graphics_tile_draw_sequential_row		;32db
	pop hl			;32de
	push hl			;32df
	ld e,(hl)			;32e0
	ld d,000h		;32e1
	ld b,001h		;32e3
	ld hl,03ca6h		;32e5
	call sub_graphics_tile_draw_sequential_row		;32e8
l32ebh:
	pop hl			;32eb
	ld hl,(score.blinking_set_vram_addr)		;32ec
	ld de,(score.vram_src)		;32ef
	add hl,de			;32f3
	ld (score.blinking_set_vram_addr),hl		;32f4
	xor a			;32f7
	ld (score.blinking_set_frame_counter),a		;32f8
	ld a,002h		;32fb
	ld (score.set_update_state),a		;32fd
	jp l31c3h		;3300
l3303h:
	ld a,(score.blinking_set_frame_counter)		;3303
	and 001h		;3306
	cp 000h		;3308
	jr nz,l3311h		;330a
	ld de,1		;330c
	jr l3318h_write_vdp_word		;330f
l3311h:
	ld hl,(score.vram_dest)		;3311
	ld d,(hl)			;3314
	inc d			;3315 ; Because ASCII_ZERO & $ff == $01
	ld e,ASCII_ZERO >> 8		;3316
l3318h_write_vdp_word:
	ld hl,(score.blinking_set_vram_addr)		;3318
	ld a,l			;331b
	di			;331c
	out (O_VDP_CTRL),a		;331d
	ld a,h			;331f
	or 040h		;3320
	out (O_VDP_CTRL),a		;3322
	ld a,d			;3324
	ex (sp),hl			;3325
	ex (sp),hl			;3326
	out (IO_VDP_DATA),a		;3327
	ld a,e			;3329
	ex (sp),hl			;332a
	ex (sp),hl			;332b
	out (IO_VDP_DATA),a		;332c
	ei			;332e
	ld a,(score.blinking_set_frame_counter)		;332f
	inc a			;3332
	ld (score.blinking_set_frame_counter),a		;3333
	cp 00ah		;3336
	jr nc,l3342h		;3338
	ld a,008h		;333a
	ld (score.delay_timer),a		;333c
	jp l31c3h		;333f
l3342h:
	xor a			;3342
	ld (score.blinking_set_frame_counter),a		;3343
	ld a,003h		;3346
	ld (score.set_update_state),a		;3348
	ld a,080h		;334b
	ld (score.delay_timer),a		;334d
	jp l31c3h		;3350
l3353h:
	ld hl,03b54h		;3353
	ld (score.vram_dest),hl		;3356
	ld hl,data.umpire_settings + 154		;3359
	ld (score.vram_src),hl		;335c
	ld h,007h		;335f
	ld l,00bh		;3361
	ld (score.box_dimensions),hl		;3363
	ld a,001h		;3366
	ld (score.gui_update_flag),a		;3368
	ld hl,score.set		;336b
	xor a			;336e
	ld a,(score.set_current_index)		;336f
	rla			;3372
	ld d,000h		;3373
	ld e,a			;3375
	add hl,de			;3376
	ld a,(hl)			;3377
	cp 006h		;3378
	jr nz,l3382h		;337a
	inc hl			;337c
	ld a,(hl)			;337d
	cp 006h		;337e
	jr z,l33a4h		;3380
l3382h:
	ld a,(score.advance_set_flag)		;3382
	cp 000h		;3385
	jr z,l33b1h		;3387
	xor a			;3389
	ld (score.advance_set_flag),a		;338a
	ld hl,score.set_current_index		;338d
	inc (hl)			;3390
	ld a,(score.sets_won_top)		;3391
	cp 002h		;3394
	jp nc,l33ach		;3396
	ld a,(score.sets_won_bottom)		;3399
	cp 002h		;339c
	jp nc,l33ach		;339e
	jp l33b1h		;33a1
l33a4h:
	ld a,001h		;33a4
	ld (score.tie_break),a		;33a6
	jp l33bah		;33a9
l33ach:
	ld a,004h		;33ac
	ld (score.game_lost),a		;33ae
l33b1h:
	ld hl,score.game_lost		;33b1
	set 1,(hl)		;33b4
	xor a			;33b6
	ld (score.tie_break),a		;33b7
l33bah:
	xor a			;33ba
	ld (score.point.bottom),a		;33bb
	ld (score.point.top),a		;33be
	jp sub_update_score_points@l3037h		;33c1
