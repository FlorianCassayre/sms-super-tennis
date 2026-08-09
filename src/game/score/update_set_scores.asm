sub_update_set_scores:
	ld a,(score.delay_timer)		; 3a 9d c4 ;31b8
	cp 000h		; fe 00 ;31bb
	jr z,l31d1h		; 28 12 ;31bd
	dec a			; 3d ;31bf
	ld (score.delay_timer),a		; 32 9d c4 ;31c0
l31c3h:
	ld a,(0c089h)		; 3a 89 c0 ;31c3
	or 080h		; f6 80 ;31c6
	ld (0c089h),a		; 32 89 c0 ;31c8
	call sub_audio_event_wait		; cd 6a 03 ;31cb
	jp sub_update_set_scores		; c3 b8 31 ;31ce
l31d1h:
	ld a,(0c49eh)		; 3a 9e c4 ;31d1
	cp 001h		; fe 01 ;31d4
	jr c,l31e5h		; 38 0d ;31d6
	jp z,l3205h		; ca 05 32 ;31d8
	cp 003h		; fe 03 ;31db
	jp c,l3303h		; da 03 33 ;31dd
	jp z,l3353h		; ca 53 33 ;31e0
	jr sub_update_set_scores		; 18 d3 ;31e3
l31e5h:
	ld hl,03b54h		; 21 54 3b ;31e5
	ld (0c4a8h),hl		; 22 a8 c4 ;31e8
	ld hl,0c84ch		; 21 4c c8 ;31eb
	ld (0c4aah),hl		; 22 aa c4 ;31ee
	ld h,7		; 26 07 ;31f1
	ld l,00bh		; 2e 0b ;31f3
	ld (0c4ach),hl		; 22 ac c4 ;31f5
	ld a,001h		; 3e 01 ;31f8
	ld (0c4a7h),a		; 32 a7 c4 ;31fa
	ld a,001h		; 3e 01 ;31fd
	ld (0c49eh),a		; 32 9e c4 ;31ff
	jp l31c3h		; c3 c3 31 ;3202
l3205h:
	ld a,(score.winner_player)		; 3a 97 c4 ;3205
	ld b,a			; 47 ;3208
	xor a			; af ;3209
	ld a,(score.set_current_index)		; 3a 8a c4 ;320a
	rla			; 17 ;320d
	ld hl,score.set		; 21 82 c4 ;320e
	ld e,a			; 5f ;3211
	ld d,000h		; 16 00 ;3212
	add hl,de			; 19 ;3214
	ld a,b			; 78 ;3215
	cp 010h		; fe 10 ;3216
	jp nz,l3249h		; c2 49 32 ;3218
	inc (hl)			; 34 ;321b
	ld de,0		; 11 00 00 ;321c
	ld a,(hl)			; 7e ;321f
	cp 006h		; fe 06 ;3220
	jr c,l322fh		; 38 0b ;3222
	cp 7		; fe 07 ;3224
	jr nc,l3236h		; 30 0e ;3226
	inc hl			; 23 ;3228
	ld a,(hl)			; 7e ;3229
	dec hl			; 2b ;322a
	cp 5		; fe 05 ;322b
	jr c,l3236h		; 38 07 ;322d
l322fh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_lost		; 3e 83 ;322f
	ld (psg_engine.track_request_id),a		; 32 00 de ;3231
	jr l3276h		; 18 40 ;3234
l3236h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_lost		; 3e 85 ;3236
	ld (psg_engine.track_request_id),a		; 32 00 de ;3238
	ld a,(0c499h)		; 3a 99 c4 ;323b
	inc a			; 3c ;323e
	ld (0c499h),a		; 32 99 c4 ;323f
	ld a,001h		; 3e 01 ;3242
	ld (0c4aeh),a		; 32 ae c4 ;3244
	jr l3276h		; 18 2d ;3247
l3249h:
	inc hl			; 23 ;3249
	inc (hl)			; 34 ;324a
	ld de,0007fh+1		; 11 80 00 ;324b
	ld a,(hl)			; 7e ;324e
	cp 006h		; fe 06 ;324f
	jr c,l325eh		; 38 0b ;3251
	cp 007h		; fe 07 ;3253
	jr nc,l3265h		; 30 0e ;3255
	dec hl			; 2b ;3257
	ld a,(hl)			; 7e ;3258
	inc hl			; 23 ;3259
	cp 5		; fe 05 ;325a
	jr c,l3265h		; 38 07 ;325c
l325eh:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_game_wonn		; 3e 82 ;325e
	ld (psg_engine.track_request_id),a		; 32 00 de ;3260
	jr l3276h		; 18 11 ;3263
l3265h:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_theme_set_won		; 3e 84 ;3265
	ld (psg_engine.track_request_id),a		; 32 00 de ;3267
	ld a,(0c49ah)		; 3a 9a c4 ;326a
	inc a			; 3c ;326d
	ld (0c49ah),a		; 32 9a c4 ;326e
	ld a,001h		; 3e 01 ;3271
	ld (0c4aeh),a		; 32 ae c4 ;3273
l3276h:
	ld (0c4a8h),hl		; 22 a8 c4 ;3276
	ld (0c4aah),de		; ed 53 aa c4 ;3279
	ld hl,score.set		; 21 82 c4 ;327d
	push hl			; e5 ;3280
	ld e,(hl)			; 5e ;3281
	ld d,000h		; 16 00 ;3282
	ld b,001h		; 06 01 ;3284
	ld hl,03c1eh		; 21 1e 3c ;3286
	ld (0c4a0h),hl		; 22 a0 c4 ;3289
	call sub_3192_draw		; cd 92 31 ;328c
	pop hl			; e1 ;328f
	inc hl			; 23 ;3290
	push hl			; e5 ;3291
	ld e,(hl)			; 5e ;3292
	ld d,000h		; 16 00 ;3293
	ld b,001h		; 06 01 ;3295
	ld hl,03c9eh		; 21 9e 3c ;3297
	call sub_3192_draw		; cd 92 31 ;329a
	pop hl			; e1 ;329d
	inc hl			; 23 ;329e
	ld e,(hl)			; 5e ;329f
	inc hl			; 23 ;32a0
	push hl			; e5 ;32a1
	ld a,(score.set_current_index)		; 3a 8a c4 ;32a2
	cp 001h		; fe 01 ;32a5
	jp c,l32ebh		; da eb 32 ;32a7
	ld d,000h		; 16 00 ;32aa
	ld b,001h		; 06 01 ;32ac
	ld hl,03c22h		; 21 22 3c ;32ae
	ld (0c4a0h),hl		; 22 a0 c4 ;32b1
	call sub_3192_draw		; cd 92 31 ;32b4
	pop hl			; e1 ;32b7
	push hl			; e5 ;32b8
	ld e,(hl)			; 5e ;32b9
	ld d,000h		; 16 00 ;32ba
	ld b,001h		; 06 01 ;32bc
	ld hl,03ca1h+1		; 21 a2 3c ;32be
	call sub_3192_draw		; cd 92 31 ;32c1
	pop hl			; e1 ;32c4
	inc hl			; 23 ;32c5
	ld e,(hl)			; 5e ;32c6
	inc hl			; 23 ;32c7
	push hl			; e5 ;32c8
	ld a,(score.set_current_index)		; 3a 8a c4 ;32c9
	cp 002h		; fe 02 ;32cc
	jp c,l32ebh		; da eb 32 ;32ce
	ld d,000h		; 16 00 ;32d1
	ld b,001h		; 06 01 ;32d3
	ld hl,03c26h		; 21 26 3c ;32d5
	ld (score.blinking_set_vram_addr),hl		; 22 a0 c4 ;32d8
	call sub_3192_draw		; cd 92 31 ;32db
	pop hl			; e1 ;32de
	push hl			; e5 ;32df
	ld e,(hl)			; 5e ;32e0
	ld d,000h		; 16 00 ;32e1
	ld b,001h		; 06 01 ;32e3
	ld hl,03ca6h		; 21 a6 3c ;32e5
	call sub_3192_draw		; cd 92 31 ;32e8
l32ebh:
	pop hl			; e1 ;32eb
	ld hl,(score.blinking_set_vram_addr)		; 2a a0 c4 ;32ec
	ld de,(0c4aah)		; ed 5b aa c4 ;32ef
	add hl,de			; 19 ;32f3
	ld (score.blinking_set_vram_addr),hl		; 22 a0 c4 ;32f4
	xor a			; af ;32f7
	ld (score.blinking_set_frame_counter),a		; 32 a4 c4 ;32f8
	ld a,002h		; 3e 02 ;32fb
	ld (0c49eh),a		; 32 9e c4 ;32fd
	jp l31c3h		; c3 c3 31 ;3300
l3303h:
	ld a,(score.blinking_set_frame_counter)		; 3a a4 c4 ;3303
	and 001h		; e6 01 ;3306
	cp 000h		; fe 00 ;3308
	jr nz,l3311h		; 20 05 ;330a
	ld de,1		; 11 01 00 ;330c
	jr l3318h_write_vdp_word		; 18 07 ;330f
l3311h:
	ld hl,(0c4a8h)		; 2a a8 c4 ;3311
	ld d,(hl)			; 56 ;3314
	inc d			; 14 ;3315
	ld e,001h		; 1e 01 ;3316
l3318h_write_vdp_word:
	ld hl,(score.blinking_set_vram_addr)		; 2a a0 c4 ;3318
	ld a,l			; 7d ;331b
	di			; f3 ;331c
	out (O_VDP_CTRL),a		; d3 bf ;331d
	ld a,h			; 7c ;331f
	or 040h		; f6 40 ;3320
	out (O_VDP_CTRL),a		; d3 bf ;3322
	ld a,d			; 7a ;3324
	ex (sp),hl			; e3 ;3325
	ex (sp),hl			; e3 ;3326
	out (IO_VDP_DATA),a		; d3 be ;3327
	ld a,e			; 7b ;3329
	ex (sp),hl			; e3 ;332a
	ex (sp),hl			; e3 ;332b
	out (IO_VDP_DATA),a		; d3 be ;332c
	ei			; fb ;332e
	ld a,(score.blinking_set_frame_counter)		; 3a a4 c4 ;332f
	inc a			; 3c ;3332
	ld (score.blinking_set_frame_counter),a		; 32 a4 c4 ;3333
	cp 00ah		; fe 0a ;3336
	jr nc,l3342h		; 30 08 ;3338
	ld a,008h		; 3e 08 ;333a
	ld (score.delay_timer),a		; 32 9d c4 ;333c
	jp l31c3h		; c3 c3 31 ;333f
l3342h:
	xor a			; af ;3342
	ld (score.blinking_set_frame_counter),a		; 32 a4 c4 ;3343
	ld a,003h		; 3e 03 ;3346
	ld (0c49eh),a		; 32 9e c4 ;3348
	ld a,080h		; 3e 80 ;334b
	ld (score.delay_timer),a		; 32 9d c4 ;334d
	jp l31c3h		; c3 c3 31 ;3350
l3353h:
	ld hl,03b54h		; 21 54 3b ;3353
	ld (0c4a8h),hl		; 22 a8 c4 ;3356
	ld hl,0c8e6h		; 21 e6 c8 ;3359
	ld (0c4aah),hl		; 22 aa c4 ;335c
	ld h,007h		; 26 07 ;335f
	ld l,00bh		; 2e 0b ;3361
	ld (0c4ach),hl		; 22 ac c4 ;3363
	ld a,001h		; 3e 01 ;3366
	ld (0c4a7h),a		; 32 a7 c4 ;3368
	ld hl,score.set		; 21 82 c4 ;336b
	xor a			; af ;336e
	ld a,(score.set_current_index)		; 3a 8a c4 ;336f
	rla			; 17 ;3372
	ld d,000h		; 16 00 ;3373
	ld e,a			; 5f ;3375
	add hl,de			; 19 ;3376
	ld a,(hl)			; 7e ;3377
	cp 006h		; fe 06 ;3378
	jr nz,l3382h		; 20 06 ;337a
	inc hl			; 23 ;337c
	ld a,(hl)			; 7e ;337d
	cp 006h		; fe 06 ;337e
	jr z,l33a4h		; 28 22 ;3380
l3382h:
	ld a,(0c4aeh)		; 3a ae c4 ;3382
	cp 000h		; fe 00 ;3385
	jr z,l33b1h		; 28 28 ;3387
	xor a			; af ;3389
	ld (0c4aeh),a		; 32 ae c4 ;338a
	ld hl,score.set_current_index		; 21 8a c4 ;338d
	inc (hl)			; 34 ;3390
	ld a,(0c499h)		; 3a 99 c4 ;3391
	cp 002h		; fe 02 ;3394
	jp nc,l33ach		; d2 ac 33 ;3396
	ld a,(0c49ah)		; 3a 9a c4 ;3399
	cp 002h		; fe 02 ;339c
	jp nc,l33ach		; d2 ac 33 ;339e
	jp l33b1h		; c3 b1 33 ;33a1
l33a4h:
	ld a,001h		; 3e 01 ;33a4
	ld (score.tie_break),a		; 32 81 c4 ;33a6
	jp l33bah		; c3 ba 33 ;33a9
l33ach:
	ld a,004h		; 3e 04 ;33ac
	ld (score.game_lost),a		; 32 95 c4 ;33ae
l33b1h:
	ld hl,score.game_lost		; 21 95 c4 ;33b1
	set 1,(hl)		; cb ce ;33b4
	xor a			; af ;33b6
	ld (score.tie_break),a		; 32 81 c4 ;33b7
l33bah:
	xor a			; af ;33ba
	ld (score.point.bottom),a		; 32 88 c4 ;33bb
	ld (score.point.top),a		; 32 89 c4 ;33be
	jp sub_update_score_points@l3037h		; c3 37 30 ;33c1
